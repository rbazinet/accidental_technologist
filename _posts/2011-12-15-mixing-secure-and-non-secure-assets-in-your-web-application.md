---
id: 680
title: 'Mixing Secure and Non-Secure Assets in Your Web Application'
date: '2011-12-15T09:00:14-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=680'
permalink: /ruby-on-rails/mixing-secure-and-non-secure-assets-in-your-web-application/
dsq_thread_id:
    - '505375474'
s2mail:
    - 'yes'
categories:
    - 'Ruby on Rails'
tags:
    - rails
    - ssl
---

The life of the web developer never seems to be easy, always a new problem cropping up.

### The Problem

One such issue surfaced when a client wanted to begin accepting credit cards. ?As most Internet users assume, they land on a web page asking for credit card information and it's secure, I wouldn't enter my credit card information without seeing the friendly little lock. ?Another telltale sign is seeing the https: in the browser address bar.

Many sites today make use of outside CSS and JavaScript files host on a content delivery network (CDN) somewhere on the interwebs. ?This has tremendous benefit for web developers and users alike, giving applications better performance. ?The problem arises when we have a secure page (https) which pulls in assets from non-secure CDNs, where requesting assets securely will fail to return successfully and ruins the user's experience.

This application happens to be a Ruby on Rails application but that fact is irrelevant. ?The scenario is likely common today; we have a secure checkout page but our site contains menus and links to pages which are not sure but just plain http. ?When the users visit the site with their browser of choice they are presented with various messages or maybe none.

1. Firefox 6/7, no message..just no indication the page is using SSL.
2. Chrome, no message but a red line through the "https:" in the browser address bar. ?This does not give confidence to the user, I would not put my credit card information in this page.
3. Safari, no messages and everything looks good with the exception of the missing tiny lock icon indicating a secure page.
4. Internet Explorer, well this is the least friendly of the browsers telling the user there is mixed content and prompted with how to proceed.
 
The problem was mainly centered-around the Yahoo YUI JavaScript and CSS assets and how they were included. ?This application uses the Yahoo content delivery network (CDN) to serve the assets, which is a great way to serve the assets.

### The Solution

I decided to do what every self-respected web developer does when facing a problem, Google for someone else who had the same problem and successfully solved it. ?I ran into one very [insightful post from Dan over at CollectiveIdea](http://collectiveidea.com/blog/archives/2010/11/29/ssl-with-rails/#fn2). ?The post lays out a very similar problem with some good ideas for the solution.

Dan points out a URL like this:

```html
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" type="text/javascript"></script>
```

Will cause Mixed Content warnings when included from a secure page. ?Some of the suggested solutions include downloading all of the assets locally and the problem goes away. ?Although this is true, we lose the [benefits of using a CDN](http://www.jquerycdn.net/cdn-hosted-jquery/).

What works is both elegant and simple; two qualities that make my day. ?Referencing your CDN-based assets this way is only a slight change:

```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" type="text/javascript"></script>
```

Notice how we are referencing the GoogleAPI URL, we leave off the http: and the https:. ?By using two forward slashes only the request will resolve itself and work brilliantly.

Maybe I am the last web developer to find out this tidbit of information but I wanted to document it so the next one faced with this could find the answer here.