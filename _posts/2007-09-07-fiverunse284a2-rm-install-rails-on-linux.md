---
id: 142
title: 'FiveRuns? + RM-Install = Rails on Linux'
date: '2007-09-07T09:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=142'
permalink: /ruby-on-rails/fiveruns%e2%84%a2-rm-install-rails-on-linux/
dsq_thread_id:
    - '95924364'
categories:
    - 'Ruby on Rails'
---

One of the reasons I went with VMWare Workstation 6.0 was their support of Linux distributions. I am a Windows XP user and developer and spend my day using it. I used Microsoft Virtual PC for working with other operating systems other than Windows XP, but VPC never has done a great job hosting Linux.

My goal is to become proficient with Linux (Ubuntu) and Ruby on Rails development on that platform. VMWare Workstation does such an outstanding job of running Linux.

I don't want to go off on a VMWare tangent, I want to talk about a company named [Fiveruns](http://www.fiveruns.com/). Fiveruns is a company who has dedicated themselves to enterprise management for Rails. This is all they do and they seem to be very good at it.

One of their products is called [RM-Install](http://www.fiveruns.com/products/rm/install). RM-Install is a free download that will allow a less than savvy Linux user (me) to get a full Rails stack up and running in no time. RM-Install actually will install the stack on Linux as well as Mac OSX and a Windows version is coming.

You have to register for a download and you get a single file which is executed and installs and configures the following:

- Ruby 1.8.6
- Rails 1.2.3
- MySQL 5.0
- SQLite 3.3
- Subversion 1.4
- Apache HTTP Server 2.2 (Production mode)
- OpenSSL
- ImageMagick 6.3
- Mongrel/Mongrel Cluster
- Capistrano
- Gruff
- Rake
- RMagick

It takes only a few minutes to install and when done you are ready to go, no more to do but open a terminal window and create your Rails application. The installation has a couple options, one for a development platform (no Apache) and a production mode (with Apache).

After I finished the install I created a Rails app, started Mongrel and browsed to <http://localhost:3000> and I got the default Rails application page. No, not magic but it demonstrates how easy it is use RM-Install to get up and running FAST.

The Fiveruns web site is done very well (using Rails) and has some good information about RM-Install and their other products.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails), [FiveRuns](http://technorati.com/tags/FiveRuns)</div>