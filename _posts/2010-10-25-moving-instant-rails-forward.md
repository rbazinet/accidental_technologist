---
id: 551
title: 'Moving Instant Rails Forward'
date: '2010-10-25T08:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=551'
permalink: /instant-rails/moving-instant-rails-forward/
dsq_thread_id:
    - '161614780'
categories:
    - 'Instant Rails'
tags:
    - InstantRails
    - Ruby
    - 'Ruby on Rails'
    - Windows
---

It has been a long time since [InstantRails](http://rubyforge.org/projects/instantrails/) has been brought up-to-date and I had been wondering if the community had any continued interest in the project.

Well, recently I had been contacted about the project and moving it forward and bring it to Rails 3 and Ruby 1.9.2.

### Instant Rails 2.0

Today Instant Rails 2.0 consists of fairly old Ruby on Rails components:

- Ruby version 1.8.6 Patch Level 111
- Rails to 2.0.2
- Mongrel to 1.1.2
- RubyGems to 1.0.1
- Rake to 0.8.1
- SQLite3
- Apache
- MySQL
- phpMyAdmin

### Instant Rails vNext

The goal of the next version of Instant Rails would be something really easy to install and use. ?One of the great features of Instant Rails today is the ability to extract the Instant Rails zip file to any directory you choose and have the ability to delete it later without the fancy uninstall ceremony we usually see in Windows.

I wrote [here in the past about setting up to run Ruby on Rails 3 on Windows](/ruby-on-rails/running-rails-3-on-windows/). ?The steps are not complicated but may be more than new developers are able to follow.

My initial thoughts of components to be included:

- Ruby 1.9.2
- Rails 3.0.1
- RubyGems and Rake latest
- SQLite3
- No Apache or Mongrel, just WebBrick
- Git Support

In the spirit of keeping these simple; what am I missing? ?What components are missing?

Let's not talk features just yet but major components only. ?I am leaving out Apache and MySQL as I don't think they're needed. ?WebBrick and SQLite3 work just fine for development purposes.

Please provide your thoughts in the comments as to the interest in a new version of Instant Rails and also what components are needed.

Thank you.