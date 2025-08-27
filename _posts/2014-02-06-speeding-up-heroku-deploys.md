---
id: 953
title: 'Speeding up Heroku Deploys'
date: '2014-02-06T11:06:40-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=953'
permalink: /ruby-on-rails/speeding-up-heroku-deploys/
dsq_thread_id:
    - '2229865477'
categories:
    - 'Ruby on Rails'
tags:
    - deployment
    - heroku
    - 'Ruby on Rails'
---

Anyone who deploys their Rails 3.x or 4.x utilizing the asset pipeline and doesn?t precompile those assets yet deploys to Heroku, knows it can take a really long time for your deployment.

I searched around a bit and found a great article on how to shave some time off my Heroku deployments. ?[Alex MacCaw has a nice write up about the process](http://blog.alexmaccaw.com/faster-deploys):

> If you?re using Heroku, the first step is enabling a Memcache addon. I?ve gone with the?`<span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">memcachier</span>`?service, as they?ve got a generous free plan (which is all we need at this stage).
> 
>  ```
> <span class="pln" style="padding-left: 0px; padding-right: 0px;">heroku addons</span><span class="pun" style="color: #666600;">:</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">add memcachier</span><span class="pun" style="color: #666600;">:</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">dev</span>
> ```
> 
> Then we need to make sure the environmental variables are available to your app during the pre-compilation stage. Usually this isn?t the case on Heroku, but they?ve got a new labs feature called?`<span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">user</span><span class="pun" style="color: #666600;">-</span><span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">env</span><span class="pun" style="color: #666600;">-</span><span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">compile</span>`?which will do the trick.
> 
>  ```
> <span class="pln" style="padding-left: 0px; padding-right: 0px;">heroku labs</span><span class="pun" style="color: #666600;">:</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">enable user</span><span class="pun" style="color: #666600;">-</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">env</span><span class="pun" style="color: #666600;">-</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">compile</span>
> ```
> 
> Next you?ll need to add the?`<span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">dalli</span>`?and?`<span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">memcachier</span>`?gems to your Gemfile. Finally, the last step is to configure Sprockets.

Since I am using Rails:

> ## With Rails
> 
> With Rails, just configure the assets cache store in`<span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">config</span><span class="pun" style="color: #666600;">/</span><span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">environments</span><span class="pun" style="color: #666600;">/</span><span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">production</span><span class="pun" style="color: #666600;">.</span><span class="pln" style="color: #000000; padding-left: 0px; padding-right: 0px;">rb</span>`.
> 
>  ```
> <span class="pln" style="padding-left: 0px; padding-right: 0px;">config</span><span class="pun" style="color: #666600;">.</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">assets</span><span class="pun" style="color: #666600;">.</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">cache_store </span><span class="pun" style="color: #666600;">=</span><span class="pun" style="color: #666600;">:</span><span class="pln" style="padding-left: 0px; padding-right: 0px;">dalli_store</span>
> ```
> 
> <div><span class="pln" style="padding-left: 0px; padding-right: 0px;">  
> </span></div>

### And the time savings would be?.

?An example of time saving with a relatively small project:

Not using the speed-up method, deploy time:?**2 minutes 40 seconds**

Using the above method:?**47 seconds**

It is definitely worth the little effort.