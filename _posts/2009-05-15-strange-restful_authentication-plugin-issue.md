---
id: 359
title: 'Strange Restful_Authentication Plugin Issue'
date: '2009-05-15T11:02:27-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=359'
permalink: /ruby/strange-restful_authentication-plugin-issue/
dsq_thread_id:
    - '95925261'
categories:
    - Ruby
---

I was working late last night trying to get a new user interface design implemented on one of my Ruby on Rails applications while at the same time getting an initial authentication bit done using [Rick Olson?s awesome restful\_authentication plugin](http://github.com/technoweenie/restful-authentication/tree/master).

I had some migration updates so I can the usual:

> `cap deploy:migrations`

During the stream of text output by Capistrano I received an error:

> `uninitialized constant User::Authentication`

My initial thought was that I must have missed some configuration setting on my server, but after looking around for a bit I could not find what I might have left off. The error indicated with was something to do with the restful\_authentication plugin but testing in both development and production worked fine (of course).

Some searching around the web revealed a few suggestions ranging from making sure the restful\_authentication directory contained an underscore and not a hyphen to various Rails versioning issues. This application was working just fine on Rails 2.2.2 in development so I was confident it was not the issue.

I finally came upon a [post by Brent Collier](http://acts-as-blogr.com/posts/-uninitialized-constant-userauthentication) of Intridea who had the same issue as I experienced. I had installed this plugin as I do with other plugins hosted on Github with the command `script/plugin install git://github.com/technoweenie/restful-authentication.git`. The plugin installed this way is a local git repository from the one stored on Github. Taken from Brent?s blog, the way the restful\_authentication plugin appears in the Github repository was the same as was appearing in mine:

[![github-brent](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/StrangeRestful_AuthenticationPluginIssue_8DD3/github-brent_thumb.jpg "github-brent")](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/StrangeRestful_AuthenticationPluginIssue_8DD3/github-brent_2.jpg)

The solution I needed to do was a bit different than the one described by Brent but close.

1. Started off by deleting the vendor/plugin/restful\_authentication directory manually.
2. Did a commit/push of my project to Github and verified the folder was gone in the Github repo.
3. I downloaded the tarball of the restful\_authentication plugin from Github.
4. Once extracted, I copied the folder to vendor/plugins and named the folder restful\_authentication.
5. Did a commit/push again to Github and looked at the folder in the repo to see if it looked like all the others. Indeed it did.
6. Finally, ran `cap deploy:migrations` and all was good.
 
This was a very strange exercise and I would really like to know why this happened and the proper procedure to manage plugins which are a git repo themselves. If anyone has an explanation and fix, I will update this post to reflect it.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:b48e1b4f-e053-482b-963c-4dec655ac9d7" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [restful\_authentication](http://technorati.com/tags/restful_authentication),[Rails](http://technorati.com/tags/Rails),[Plugin](http://technorati.com/tags/Plugin),[GitHub](http://technorati.com/tags/GitHub)</div>