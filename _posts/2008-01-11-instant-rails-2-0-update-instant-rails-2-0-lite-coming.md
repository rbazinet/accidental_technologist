---
id: 208
title: 'Instant Rails 2.0 Update, Instant Rails 2.0 Lite Coming...'
date: '2008-01-11T17:57:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=208'
permalink: /instant-rails/instant-rails-2-0-update-instant-rails-2-0-lite-coming/
dsq_thread_id:
    - '95924593'
categories:
    - 'Instant Rails'
---

Since taking over the [Instant Rails project](http://rubyforge.org/projects/instantrails/) from Curt Hibbs, I have been able to get Instant Rails 2.0 out the door before the end of 2007, not by much but it did happen. Thank you to everyone who gave me support and to readers for the comments. So, I wanted to take a moment to let everyone know what is coming with Instant Rails in the near term.

I have gotten over the learning curve of the whole build and update process on [RubyForge](http://rubyforge.org), it was pretty painless. Those guys over there do a great job! I have received a fair amount of feedback on the current release and I have stepped back and thought about them and how to proceed.

I am planning a introduce a second version of Instant Rails 2.0, to be called Instant Rails 2.0 Lite. This version will similar to the standard version but will have the following removed:

- Apache
- MySQL
- phpMyAdmin
- PHP

This will:

- Bring the size of the download way down
- Bring the size on disk way down
- Allow users who already have MySQL and/or Apache to run Instant Rails 2.0 Lite without conflicts.

Access to the command-line will be improved to make it easier so users can go from running Instant Rails to running a Ruby application very quickly.

Instant Rails 2.0 Lite will include the following:

- Ruby 1.8.6-26
- Rails 2.0.2
- Mongrel
- SQLite3
- RubyGems
- Rake
- Capistrano
- CookBook Sample Application with Rails 2.0.2 & SQLite3 support.

I hope this makes some users happy. The standard version of Instant Rails 2.0 will remain the same, supported and updated. I think two versions will cover more users and the new version will have a smaller, lighter footprint. When will this happen? Well, not sure yet but I would like to get the leg work done of the next couple weeks and posted in early February. I am being conservative, if I can make it happen sooner, I will.

Please let me know what you think.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Instant Rails](http://technorati.com/tags/Instant%20Rails),[Ruby](http://technorati.com/tags/Ruby),[Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails)</div>