---
id: 482
title: 'Running Rails 3 on Windows'
date: '2010-09-01T08:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/ruby-on-rails/running-rails-3-on-windows/'
permalink: /ruby-on-rails/running-rails-3-on-windows/
dsq_thread_id:
    - '136175907'
s2mail:
    - 'yes'
categories:
    - 'Ruby on Rails'
tags:
    - Rails3
    - Ruby
    - 'Ruby on Rails'
    - Windows
---

Well, the [long-awaited release of Ruby on Rails 3 is now out](http://weblog.rubyonrails.org/2010/8/29/rails-3-0-it-s-done) and all of the Mac and Linux junkies are busy gem-installing the latest version of the framework.? What about all the lonely Windows developers out there looking through their windows (pun intended) and wondering what it?s like on the other side of the fence? Good news!? It is actually pretty easy to setup and run Rails 3 on your Windows system.? I mainly run on Macs these days but have a couple Windows systems still kicking around and thought I would give a go.? It is actually pretty straight-forward now and works really well.? Follow the steps:

### Install Ruby

 Rails 3 requires at least Ruby 1.8.7 and is happy using Ruby 1.9.2, I opted for the latest and greatest. 1. Head over to RubyForge for the [Ruby Installer by Luis Lavena](http://rubyinstaller.org/).? [Download 1.9.2-p0 for the latest](http://rubyforge.org/frs/download.php/72170/rubyinstaller-1.9.2-p0.exe).?? A nice feature of this Ruby installer is the latest gem executable is built in, which is version 1.3.7 at the time of this writing and you won?t have to install it yourself.
2. I installed in C:\\Ruby192, which is the default, and added C:\\Ruby192\\bin to my path so Windows can find the Ruby executables.
 
 Running the Ruby version command from a new command prompt: > `ruby -v`

 [![ruby-version](/assets/img/2010/08/rubyversion_thumb.png "ruby-version")](/assets/img/2010/08/rubyversion.png) If you get a file-not-found or some other undesirable result then the path setting isn?t likely correct or you may want to try closing the command prompt and opening a new one. ### Install Ruby on Rails

 This is a tough one: > `gem install rails`

 **UPDATE**: A reader points out of issues with installing Rails as [pointed out by a post on the Ruby Forum](http://www.ruby-forum.com/topic/211336). The issue was solved by simply adding a --pre to the gem command to install Rails. > `gem install rails --pre`

 Everything you need to run Rails 3 gets installed with the exception of the SQLite3 Ruby gem which Rails uses as the default database provider: [![Rails3gems](/assets/img/2010/08/Rails3gems_thumb.png "Rails3gems")](/assets/img/2010/08/Rails3gems.png)> `gem install sqlite3-ruby`

 You should see a message similar to this: [![sqlite3-ruby-gem](/assets/img/2010/08/sqlite3rubygem_thumb.png "sqlite3-ruby-gem")](/assets/img/2010/08/sqlite3rubygem.png) I use SQLite3 for most of my local development unless I need a database like MySQL or PostgreSQL.? Installing is trivial. ### Installing SQLite3

 If you look at the above message when installing the sqlite3-ruby you should notice the gem relies on the sqlite3.dll and it is recommended to use version 3.6.23.1, which you can [download form here](http://www.sqlite.org/sqlitedll-3_6_23_1.zip).? I grabbed 3.7.2 and it seems to work fine, your mileage may vary.? If you?re interested, get the latest from the [SQLite3 downloads page](http://www.sqlite.org/download.html). Now with the sqlite3.dll in hand (unzipped from the download), copy to the *bin* directory of the above Ruby installation.? In my case that?s *C:\\Ruby192\\bin*, and that?s it. ### Creating a Test Application

 Now it?s time to test the new Ruby and Rails installation.? Pick a location to create the new application and run the new Rails command from a command prompt: > `rails new testapp`

 This command creates a new directory called testapp and spits out a bunch of text along the way, looking something like this: [![railsapp](/assets/img/2010/08/railsapp_thumb.png "railsapp")](/assets/img/2010/08/railsapp.png) Once done, change directory into the new testapp directory and run: > `rake db:migrate`

 This will test your SQLite3 installation and create a new development database in the testapp\\db directory called development.sqlite3.? If you get any errors it is likely the sqlite3.dll is not in your Ruby bin directory, check and come back. Now from the testapp directory, fire up the Rails development server from a command prompt: > `rails server`

 WebBrick fires up and looks like this: [![rails_server](/assets/img/2010/08/rails_server_thumb.png "rails_server")](/assets/img/2010/08/rails_server.png) If there are errors reported than something has gone wrong.? If you see this screen, fire up your browser and browser to the address <http://localhost:3000>.? If all goes well, you will see this screen: [![testapp_home](/assets/img/2010/08/testapp_home_thumb.png "testapp_home")](/assets/img/2010/08/testapp_home.png) Click on the link below the title that reads ?About your application?s environment?.? This gives a lot of detail about your Rails application configuration. [![testapp_config](/assets/img/2010/08/testapp_config_thumb.png "testapp_config")](/assets/img/2010/08/testapp_config.png) Congratulations!? You have the latest and greatest Ruby and Ruby on Rails running on the Windows platform. Now go out and read [Mike Hartl?s Ruby on Rails Tutorial](http://railstutorial.org/chapters/beginning) for Rail 3 and create some applications.