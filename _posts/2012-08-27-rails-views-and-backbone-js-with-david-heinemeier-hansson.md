---
id: 789
title: 'Rails Views and Backbone.js with David Heinemeier Hansson'
date: '2012-08-27T09:00:07-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=789'
permalink: /ruby-on-rails/rails-views-and-backbone-js-with-david-heinemeier-hansson/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '820315310'
categories:
    - 'Ruby on Rails'
tags:
    - backbone.js
    - pjax
    - rails
---

This is a great discussion with DHH about the [Basecamp](http://basecamp.com/) rewrite, not going crazy using [Backbone.js](http://backbonejs.org/), like so many developers are doing these days, for everything. ?One technology used is [PJAX](https://github.com/defunkt/jquery-pjax), for updating small bits of a view to give small, fast updates. ?PJAX combines HTML5 pushState and AJAX to make the fast magic happen.

PJAX is a great example how to use the views we know and the fast updates we need instead of completely changing the way Rails developers approach views using tools like Backbone.js, Knockout and others.

<center><iframe frameborder="0" height="315" src="http://www.youtube.com/embed/FkLVl3gpJP4" width="560"></iframe>

</center>The discussion is about 1 hr 40 min long but well worth it. ?You get some good views of new Basecamp Rails code and the usual colorful dialog. ?

David had a great post on the 37Signals blog that serves as some background to the above talk titled?[How Basecamp Next got to be so damn fast without using much client-side UI](http://37signals.com/svn/posts/3112-how-basecamp-next-got-to-be-so-damn-fast-without-using-much-client-side-ui).