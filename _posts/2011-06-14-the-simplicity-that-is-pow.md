---
id: 660
title: 'The Simplicity that is Pow'
date: '2011-06-14T09:00:09-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=660'
permalink: /ruby-on-rails/the-simplicity-that-is-pow/
s2mail:
    - 'yes'
dsq_thread_id:
    - '331840705'
categories:
    - 'Ruby on Rails'
tags:
    - pow
    - rails
---

![Logo pow](/assets/img/2011/06/logo-pow.png "logo-pow.png")

Simplicity is a beautiful thing. ?I love a simple tool which makes my life as a developer easier.

Ruby on Rails has made the life of the web developer much more pleasurable over the years but even so there are some things which could be made better. ?One such thing is running your Rails applications locally when developing. ?Every Rails developer is familiar with the `script/server` command if you are in Rails 2.3 and earlier or the `rails server` command if you are using Rails 3. ?The next step would be to fire up the browser and enter localhost:3000 into the address bar. ?Most of the time this works fine, but a bit tedious. ?The real problems appear when your application supports subdomains like myaccount.myapp.com, which has been hard to do up until this point.

### Enter Pow

[Pow](http://pow.cx/) is a Rack server developed by the folks at 37Signals to help alleviate the pain of serving local Rails applications. ?Using Pow allows the developer to go from accessing their local Rails application using localhost:3000 to something like myrailsapp.dev. ?For example, my expense tracking software, [Expens'd](http://expensd.com) uses subdomains quite a bit, so we get URLs like rbazinet.expensd.com and when using Pow I can simply use the URL rbazinet.expensd.dev. ?This is perfect and simplifies the process.

### Setting Up Pow for Serving Rails Applications

Installing Pow is pretty easy and shown on the [Pow web site](http://pow.cx/) but for those not interested in heading over there you can open up a terminal session and enter the following:

```bash
$ curl get.pow.cx | sh
```

Each application has to have a symlink defined. ?The Pow web site says to:

```bash
$ cd ~/.pow
$ ln -s /path/to/my/app
```

When I setup Expens'd to use Pow setting up the symlink this way didn't work for me. ?I had to add the application name after the path, like this:

```bash
$ ln -s ~/rails_apps/expensd expensd
```

Since Expens'd is currently a Rails 2.3 application, a config.ru file is needed and placed in the application root folder. ?The file should contain the following:

```ruby
# RAILS_ROOT/config.ru
require "config/environment"
use Rails::Rack::LogTailer
use Rails::Rack::Static
run ActionController::Dispatcher.new
```

If Expens'd was a Rails 3.x application, I would not have had to create the config.ru file.

Your mileage may vary. ?Once the symlink is done heading to the browser you can just enter the domain for the application with the .dev extension, like expensd.dev. ?This works just perfectly.

### Restarting Your Application

One of the first things I wondered about when using Pow was a need to restart the "server" when I make changes to a routes.rb file. ?It turns out we treat this the same way we restart Passenger.

```bash
$ touch tmp/restart.txt
```

### Log File Monitoring

Using Pow provides us with the typical development.log file in the \[APP\_ROOT\]/log directory. ?Keeping an eye on the log can be done from a terminal window.

```bash
$ tail -f log/development.log
```

This provides ?a nice way to see what's going on. ?There is also a raw log file produced from Pow that gives some additional details.

```bash
$ tail -f ~/Library/Logs/Pow/access.log
```

### Potential Issue

When I setup Pow on my Mac Pro it all worked perfectly from the get-go but on my MacBook Pro I ran into a problem when I tried to browse a URL served by Pow such as expensd.dev. ?DNS seemed to think I wanted to go to the Internet to find the site and I received a 404 error when I tried. ? ?The problem was known and is [outlined on Rob Conery's site](http://wekeroad.com/post/4430429941/fixing-the-dev-resolution-on-snow-leopard-for-pow). ?The first part of the solution involved running the scutil to see if .dev resolver was being used:

```bash
$ scutil --dns
```

You should see a bunch of entries and one should look something like this:

```
resolver #8
  domain : dev
  nameserver[0] : 127.0.0.1
  port    : 20560
```

I don't know if Pow uses the same port all the time, so that may change. ?The key here is the domain, indicating dev. ?If this resolver is missing the solution is pretty simple, open the file `/etc/resolver/dev` and simply save it. ?Worked like a charm for me. ?Run the scutil --dns command from above and see if the resolver is now listed.

### A Better Pow?

I think Pow is pretty awe some just as it is but it seems someone has stepped up to make it even better with a [gem named Powder](https://github.com/Rodreegez/powder). ?I haven't had the chance to play around with this tool yet but a [blog post by one of it's creators](http://logicalfriday.com/2011/05/25/powder-making-pow-even-easier/) says they wanted to make Pow "ridiculously easy". ?The commands supported help make Pow that much easier:

```bash
$ powder applog
=> tail the log of the current app

$ powder config
=> Get Pow's current configuration information

$ powder list
=> List all the current apps linked in ~/.pow
# aliased as powder -l

$ powder log
=> Tails the pow log.
# Not the application log, but the pow log, available at
# ~/Library/Logs/Pow/apps/#{app-directory}.log

$ powder open
=> Opens the pow link in a browser
# aliased as powder -o

$ powder open bacon
=> Opens http://bacon.dev in a browser
# if you have set up alternative top level domains in .powconfig,
# then the first listed domain will be opened.

$ powder restart
=> Restart the current app
# aliased as powder -r

$ powder status
=> Get Pow's current status information

$ powder version
=> Returns the current powder version
# aliased as powder -v
```

### More Than Rails Applications

Since Pow is serves up Rack apps the possibilities are pretty endless. ?I found one bit to share where someone is [using Pow to serve his PHP apps](http://stuff-things.net/2011/05/16/legacy-development-with-pow/), pretty clever. ?I would imagine this technique could be used in many applications like this.

### Finally

The only thing I can say is I love Pow. ?It has made my life so much easier. ?Thank you 37Signals.