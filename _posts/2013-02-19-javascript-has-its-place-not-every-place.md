---
id: 898
title: 'JavaScript Has Its Place, But Not Every Place'
date: '2013-02-19T09:30:37-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=898'
permalink: /javascript/javascript-has-its-place-not-every-place/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '1091741047'
categories:
    - JavaScript
tags:
    - JavaScript
    - MVC
---

![No javascript](/assets/img/2013/02/no-javascript.jpg "no-javascript.jpg")

JavaScript is everywhere these days; more-so because legions of developers play follow technology leaders like the [Pied Piper](http://en.wikipedia.org/wiki/Pied_Piper_of_Hamelin) playing his flute.?

I've worked on many Rails projects over the years and the inevitable pain points usually turn out to be JavaScript. Whether it be mounds of jQuery selects, poor attempts at AJAX everywhere or lately, Backbone.js and some other MVC frameworks which virtually mirror much of the backend in the UI. Unless these technologies are implemented to perfection, it leaves evidence of attempts at "playing" with a new framework with artifacts left behind that last a lifetime.

Some issues I have with using large amounts JavaScript in your Rails (or any web framework for that matter):

- Leads to lots of code in the browser - with tons of JavaScript, applications start to get slower. There's only so much client-side code a brewer can expect to handle.
- Leads to lots of code inherited that is hard to debug, hard to support and the client ultimately pays - this is probably my biggest pet peeve. It seems like every Rails project, there's a different JavaScript framework used and it's the first time the developer is using it.?
- The examples of bad code are numerous and hard to fix. It is really hard to understand the intent and really hard to both support and enhance. In the end, the client pays the price from both a monetary perspective and a maintenance one.
- Developers like to "play" with the new hotness leaving breadcrumbs of learning something new of a framework that gets dropped or at least minimally maintained.

I came across a [great article published recently from the developers of Charm](http://unicornfree.com/2013/why-we-shut-down-charm-on-the-eve-of-public-launch-at-48kyear-and-growing). One of the developers, Thomas Fuchs, who is previous Rails core member and a well-known member of the JavaScript community [gives his thoughts on the heavy use of JavaScript in a web project](http://unicornfree.com/2013/why-we-shut-down-charm-on-the-eve-of-public-launch-at-48kyear-and-growing#comment-1248).

> Hi Sasmito, as for technical issues, we where plagued by various problems that are not related.
> 
> The app as it is, is using Backbone.js, Underscore.js and Zepto on the front-end, and Rails 2.3, Postgres, memcached, redis, resque, and for websockets Sinatra, and a few other things. The front-end is communicating with the back-end via a JSON API.
> 
> I?ve come to the realization that this much client-side processing and decoupling is detrimental to both the speed of development, and application performance (a ton of JavaScript has to be loaded and evaluated each time you fire up the app). It?s better to let the server handle HTML rendering and minimize the use of JavaScript on the client. You can still have fast and highly interactive applications, as the new Basecamp shows?letting the server handle most stuff doesn?t mean that you have to cut back on cool front-end features and user friendliness.
> 
> I?d argue that all these newfangled libraries are actually detrimental to the user experience in some ways, as they lock you into certain patterns (it?s hard do to things the authors didn?t anticipate) and if you use something like Ember (which we didn?t), it?s even worse as all applications using it practically look the same.
> 
> We?ve spend a lot of time getting Backbone to work properly, as the easy-of-use quickly deteriorates when your models get more complex. It?s a great choice for simple stuff, but email is far from simple. We also had to add yet an other extra layer of processing to generate ?ViewModels? on the server because the normal Rails serialization of objects wouldn?t cut it.
> 
> What you end up with is building a layer cake that doesn?t add any value and slows down development. Especially when you?re starting out and need to stay flexible you don?t want to have too much code around?and Rails is great for that. But? adding a JSON API layer and basically a second application that runs on the client is annihilating this advantage for you.
> 
> All in all, my current recommendation for SaaS-type web apps is: Rails 2.3 (or Rails 3.2 if you prefer), a Postgres database, as much HTML generation on the server as possible and augment that with RJS (Rails? mechanism to push JavaScript snippets to the client that get eval?d). This allows for direct re-use of server-side templates, and it?s simple, and works well. As an added bonus, keeping things on the server allow for much better error and performance monitoring and thus quicker turnaround for fixes. There?s also a lot of great stuff in this direction coming up in Rails 4 (like Turbolinks).
> 
> Alas, keep it simple and don?t repeat yourself.

This is some of the most common sense advice I have read in a very long time. ?Please read the comment and consider the advice before harsh comments here. ?I know there are a lot of JavaScript developers out there but I ask those to use it with care.

A wise man once said, "Just because you can, doesn't mean you should". ?No idea who said it but words to live by. ?This applies to so many things, especially JavaScript.

There are so many new frameworks popping up each day. We don't need more frameworks, we need better ways to use them; such as standard and proven usage patterns, well-known interfaces and published best-practices. ?It's like the wild-west out there in JavaScript land and things are not better because of it. ?

You are not doing anyone any favors using all of this JavaScript. ?Use it sparingly, use it right and remember that JavaScript is not a silver bullet.