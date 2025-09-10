---
id: 1652
title: 'Hotwire Fix for CORS Error when using Omniauth'
date: '2021-05-13T09:11:32-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1652'
permalink: /ruby-on-rails/hotwire-fix-for-cors-error-when-using-omniauth/
categories:
    - Hotwire
    - 'Ruby on Rails'
tags:
    - CORS
    - Hotwire
    - Omniauth
---

I've been working on a small side project lately and having some fun trying some new [Ruby on Rails](https://rubyonrails.org/) features. The application allows a user to authenticate using their Twitter account. I'm using the [omniauth-twitter gem](https://github.com/arunagw/omniauth-twitter) to implement the Twitter strategy with OmniAuth. It works great; the user is redirected to Twitter to enter their Twitter username and password then sent back to the site with a token for the user's account.

## The Problem

Everything was working great until I implement some of the HTML over the wire goodness of [Hotwire](https://hotwire.dev/). I have a couple of areas on the site that rely on a [Sidekiq](https://sidekiq.org/) and update a page when the job is complete. A perfect use case for Hotwire. The job processed, changes broadcast, and pages updated when the model changed. It worked as planned! 

I deployed the update using Hotwire, tested and everything was working as I wanted. Deciding to authenticate a different Twitter account, no longer was I sent to the Twitter page to enter my credentials. No error on the page; it just did no redirect. I looked for any errors in the Rails log. I could see the request initiated but it seemed to drop out of sight with nothing additional logged and no errors. 

Maybe it's a browser-specific issue. I usually use Firefox so I tried Chrome and Safari with the same results. Digging a bit deeper I decided to look at the Network tab in the browser to see if the request was giving an error and I found nothing. The request wasn't going out to Twitter. 

Inspecting the console in Firefox revealed this ugly message:

```
Access to fetch at 'https://api.twitter.com/oauth/authenticate?oauth_token=<my secret token>' (redirected from 'http://127.0.0.1:3000/auth/twitter') from origin 'http://127.0.0.1:3000' has been blocked by CORS policy: Response to preflight request doesn't pass access control check: No 'Access-Control-Allow-Origin' header is present on the requested resource. If an opaque response serves your needs, set the request's mode to 'no-cors' to fetch the resource with CORS disabled.
```

I started to search around for the error, and many solutions had me trying the [rack-cors gem](https://github.com/cyu/rack-cors) and other methods to satisfy what needed to be done. Nothing worked. I spent a couple of hours going down this path to no avail. The error is deceiving and not indicative of the real problem.

## Debugging

I had done many updates since the last time I knew this worked, including gem and NPM package updates. After removing and testing each update, the message still appeared. I determined which code was updated since the feature recently worked. I evaluated and ranked each change by how much I thought it could cause the problem. The only change that was a bit of a black box to me was the addition of Hotwire to the mix. 

I removed the [Hotwire-rails gem](https://github.com/hotwired/hotwire-rails) and removed all the code related to Hotwire and, moved back to Turbolinks. Magically it all worked again. Adding Hotwire caused this problem.

## A Solution

Being new to Hotwire I wasn't sure where to start. I started with what any good developer does…a Google search. I came across some posts on the [Hotwire forums](https://discuss.hotwire.dev/) and on the [Devise Github issues list](https://github.com/hotwired/turbo/issues) that provided a solution that worked. 

One, in particular, gave this solution:

> It seems like adding:
> 
> ```erb
> :data => {turbo: "false"}
> ```
> 
> and making my link a button seems to make it work as per: [Devise github login not working after Turbo enabled. · Issue #45 · hotwired/turbo · GitHub](https://github.com/hotwired/turbo/issues/45#issuecomment-753444256). I now have a different error, but that it something different. So I suppose this is solved for now.

The original button I used to connect with Twitter, looked like this:

```erb
button_to "Connect a Twitter account", "/auth/twitter", method: :post, class: "btn btn-primary"
```

After the suggestion above, it now looks like this:

```erb
button_to "Connect a Twitter account", "/auth/twitter", method: :post, data: {turbo: "false"}, class: "btn btn-primary"
```

After adding the code to the button, it works as it did before. Simply don't use Turbo for this type of request. The [Turbo docs do discuss disabling Turbo on specific links](https://turbo.hotwire.dev/handbook/drive#disabling-turbo-drive-on-specific-links-or-forms). The error I received did not do a good job of pointing me in the right direction and I spent some time going down the wrong path. I hope someone else can save some time if they have a similar problem.

## Conclusion

Solving this problem was time-consuming, but I learned a bunch. Hotwire is in beta at this time. I'm sure things will improve, and maybe we don't have to solve problems in this way in the future. A lesson I learned is the need for some better end-to-end tests for this project. I thought since it was going to Twitter and back, it wasn't necessary. I was wrong.