---
id: 350
title: 'My Improved Rails Development Environment on the Mac'
date: '2009-04-07T09:09:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=350'
permalink: /ruby/my-improved-rails-development-environment-on-the-mac/
dsq_thread_id:
    - '95925177'
categories:
    - Ruby
---

I use Apache and [Phusion Passenger](http://www.modrails.com/) for my production [Ruby on Rails](http://rubyonrails.org) applications, it has worked well and the deployment story couldn’t be any easier.

Most Ruby on Rails developers probably are familiar with running either WebBrick or Mongrel on their development system with the usual `script/server` command in a terminal session and access their application in the browser with `<a href="http://localhost:3000">http://localhost:3000</a>.`

This works fine in most circumstances but it does really mimic how I setup a web server in a production environment. One application I have been working on recently makes pretty heavy use of subdomains, such as customer1.myapp.com, customer2.myapp.com, etc. and implementing this on my Mac, where I do development, is not as trivial as I had hoped. It seems creating wildcard domains on the Mac is not possible and something strange has been going on relating to sessions and ports other than 80.

Since Apache2 is already running on my Mac I decided to investigate running Passenger Phusion alongside Apache as I do in production.

### Passenger Setup

Setting up Passenger is pretty straightforward, just need to install the gem and create a configuration file. Installing the gem:

> `sudo gem install passenger`

Once the gem is finished install then I installed the required Apache module:

> `sudo passenger-install-apache2-module`

Passenger uses configuration files much like those used by Apache2. I needed to create a configuration file for Apache to use to load up mod\_passenger when it started along with my virtual host information. My file is called passenger.conf and is kept in `/etc/apache2/other` directory. The main apache2 configuration file (`/etc/apache2/httpd.conf`) has a command to load all files ending in .conf from the other directory to be processed. My setup looks like this:

> ```
> 
> #/etc/apache2/other/passenger.conf
> LoadModule passenger_module /usr/local/lib/ruby/gems/1.8/gems/passenger-2.1.3/ext/apache2/mod_passenger.so
> PassengerRoot /usr/local/lib/ruby/gems/1.8/gems/passenger-2.1.3
> PassengerRuby /usr/local/bin/ruby
> # Set the default environment to development
> RailsEnv development
> # Which directory do you want Apache to be able to look into for projects?
> <span class="kwrd"><</span><span class="html">Directory</span> <span class="kwrd">"/Users/rbazinet/rails_apps"</span><span class="kwrd">></span>
> Order allow,deny
> Allow from all
> <span class="kwrd"></</span><span class="html">Directory</span><span class="kwrd">></span>
> NameVirtualHost *:80
> <span class="kwrd"><</span><span class="html">VirtualHost</span> *<span class="attr">:80</span><span class="kwrd">></span>
> DocumentRoot "/Users/rbazinet/rails_apps/myrailsapp/public"
> ServerName myrailsapp.dev
> ServerAlias myrailsapp.dev *.myrailsapp.dev
> <span class="kwrd"></</span><span class="html">VirtualHost</span><span class="kwrd">></span>
> ```

I decided to put the virtual host info in here instead of using something like [Passenger Preference Pane](http://www.fngtps.com/passenger-preference-pane). This option would be cleaner and easier to manage but it didn’t work for me, seemed to just hang and then lose all of my virtual host setup. After several attempts it hardly seemed worth the pain, maybe your mileage will vary.

After the configuration file is in place, a restart of Apache will load up the configuration file:

> `sudo apachectl restart`

### Name Resolution

One issue that needs to be addressed is how our local, customer domain will be resolved. One approach is adding entries to the /etc/hosts file to represent domains and subdomains I have, something like this:

> ```
> 
> ##
> # Host Database
> #
> # localhost is used to configure the loopback interface
> # when the system is booting.  Do not change this entry.
> ##
> 127.0.0.1    localhost mywebapp.dev company1.mywebapp.dev
> 255.255.255.255    broadcasthost
> ::1             localhost
> fe80::1%lo0    localhost
> ```

This seems to work just fine but thanks to [gem named Ghost](http://github.com/bjeanes/ghost/tree/master):

> This gem is designed primarily for web developers who need to add and modify hostnames to their system for virtual hosts on their local/remote web server. However, it could be of use to other people who would otherwise modify their `/etc/hosts` file manually and flush the cache.

Ghost is a nice little gem used from the command line that lets me add host names, list them, delete etc. without modifying the hosts file. A simple command such as:

> `ghost add customer1.mywebapp.dev`

Is all that is needed to be able to browse to customer1.mywebapp.dev, without any resolution issues. It’s easy to added and delete right from the command-line with Ghost. The projects GitHub page says this works with Linux too.

### Conclusion

This setup has solved my problems as far as getting these domains to resolve on my development system. There are probably many ways to solve this problem but the overall solution worked and now has me using Passenger, which is on my production systems. I have always believe developers should be writing software on the software they use for production and Apache with Passenger has me a whole lot closer.

I have not addressed debugging Rails apps in this configuration yet but I did find a plug-in called [socket-debugger on GitHub](http://github.com/ddollar/socket-debugger/tree/master). It appears to allow debugging in the style we are used to with WebBrick or Mongrel. I would love to hear with others are using to debug Rails apps on the Mac using Passenger.

There are also a couple other good resources for running Passenger in this configuration. The first is from Railscasts called [Passenger in Development](http://railscasts.com/episodes/122-passenger-in-development), which I found after I setup my environment. The other is a [screen cast from Peepcode](http://peepcode.com/products/phusion-passenger).

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:fc2e4977-8110-4bf7-a9a7-d53c0183247d" style="margin: 0px; padding: 0px; display: inline; float: none;">Technorati Tags: [Ruby](http://technorati.com/tags/Ruby),[Ruby on Rails](http://technorati.com/tags/Ruby+on+Rails),[Passenger Phusion](http://technorati.com/tags/Passenger+Phusion),[Apache](http://technorati.com/tags/Apache)</div>