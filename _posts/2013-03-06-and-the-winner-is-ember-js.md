---
id: 901
title: 'And the Winner is...Ember.js'
date: '2013-03-06T09:00:41-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=901'
permalink: /javascript/and-the-winner-is-ember-js/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '1121183541'
categories:
    - JavaScript
tags:
    - backbone.js
    - discourse
    - Ember.js
    - JavaScript
---

![Logo](/assets/img/2013/03/logo1.png "logo.png")

It seems the ability to escape the use of rich client-side JavaScript is virtually impossible because users expect desktop-like application experiences. ?JavaScript began as a much different language with much different uses as it is today.

I have been spending a lot of time investigating various JavaScript frameworks over the past few weeks in the hopes to choose one for client work and for a couple company projects. ?There are quite a few really good choices.

The frameworks differ in various ways, some are opinionated while others give a few key parts that you have to spend more time architecting and piecing together. ?

It came to my attention that [Jeff Atwood](https://www.codinghorror.com/blog/) recently announced the project he's been working on over the past few months after leaving [StackOverflow](https://stackoverflow.com); [Discourse](https://www.discourse.org), which is a new approach to forum software.

It turns out Discourse is based on a Ruby on Rails backend (API) and an [Ember.js](https://emberjs.com) front end. ?Ember.js happens to be one of the client frameworks on my radar for our company products. ?One of the Discourse co-founders, [Robin Ward](https://eviltrout.com), [recently wrote about why Ember.js was chosen over other JavaScript MVC frameworks](https://eviltrout.com/2013/02/10/why-discourse-uses-emberjs.html). ?

I love to see articles released like this from Robin where the aspects of the decision are compared and contrasted with other frameworks. ? One aspect of using a MVC framework in particular which was eye-opening is comparing a task in jQuery with the Ember.js way of doing things:

> For example, on the bottom of every discourse post there is a button a user can click to like a post. When clicked, it vanishes and adds a footer below the post saying you liked it.
> 
> If you implementing this in jQuery, you might add a data-post-id to the post. Then you?d bind a click event on your button element to a function that would make the AJAX call to the server. However, the click function passes a reference to the button, not the post. So you then have to traverse the DOM upwards to find the post the button belongs to and grab the id from there. Once you have it, you can make your XHR request. If the XHR succeeds, you then have to traverse the DOM downward from the post to the footer, and add in the text.
> 
> At this point it works, but you?ve tied your implementation of the button click to a particular DOM structure. If you ever want to change your HTML around, you might have to adjust all the jQuery methods that accessed it.
> 
> If this example seems simple - consider that in the footer we offer you a link to undo your like. When clicked, the footer text vanishes and the button appears again. Now you?re implementing the opposite operation against the DOM, only in reverse of what you did before.
> 
> Discourse even takes it a step further - we know that 99% of the time when you click the like button the request is going to work, so we hide the button and show the footer text right away, even before waiting for the server to reply. In the infrequent event that request fails, we?ll show an error message and pop the UI back to the state it was in before. If we were doing that in jQuery, we?d have to have a callback on our AJAX request that knew how to put the UI back into the state it was in before.
> 
> A prudent programmer might say, okay, well I?ll have a render function that can rebuild the DOM to the current UI state of whether the post is liked or not. Then both ?undo? and ?like? can call it. If ?like? fails it can call it again. Oh, and we have to store the current state of whether the post is liked somewhere. So maybe we add another data-liked="true" attribute. ACK! Just typing this all out is giving me a headache!.
> 
> Congratulations, your code is now spaghetti, your data is strewn out in the DOM and your logic is tied to a particular layout of HTML elements.

One of advantage of a rich client interface like this is the API you create is a separate entity from your user interface and well-tested, as pointed out in the article: ?

> One amazing side effect of a rich client side app is you end up with a battle tested API. Our app has consumed our own API since day one, so we know it works.
> 
> Note: We haven?t documented it yet because we plan on major changes over the next few months, but after things stabilize we certainly will provide a more rigid interface.
> 
> If we want to create a native client for Android or iOS, it would be a lot easier because we already speak JSON fluently. If people want to build services that use Discourse, they won?t have to result to screen scraping. It?s a huge win for us and the developers that use our platform.

?I cannot agree more.

The article goes on and talks about why Ember.js was chosen over other MVC frameworks. ?I won't bother to explain those here but feel free to give the article a read and see for yourself. ?Some very good reasoning.

Sometimes making choices like this are the result of subtle differences in frameworks that favor the taste of the developer. ?Ember.js is definitely a framework of opinions, not surprising since one of its creators is [Yehuda Katz](https://yehudakatz.com/). ?Yehuda was the lead architect on the Rails 3 rewrite and Rails is a very opinionated framework.

This is definitely worth a read if you are considering Ember.js. ?Also, there are some gems in the comments worth taking a look.