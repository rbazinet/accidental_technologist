---
id: 396
title: 'Running Rails 2.3.x on IronRuby'
date: '2010-02-19T08:01:22-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=396'
permalink: /ruby/running-rails-2-3-x-on-ironruby/
dsq_thread_id:
    - '95925537'
categories:
    - Ruby
---

There have been some interesting discussions recently on Twitter about IronRuby and Rails. The IronRuby team has been plodding along and with [IronRuby 1.0 RC2](http://ironruby.net/) out I wanted to see if it could truly run a Rails application.

In case anyone does not know what IronRuby is, it is a project from [Microsoft to bring Ruby into the .NET platform](http://ironruby.net/).

### Installing IronRuby

Installation of IronRuby is pretty straightforward using the [MSI installer from Microsoft available on Codeplex](http://ironruby.codeplex.com/releases/view/36931#DownloadId=105584). The installation is just like any Windows installer, follow the prompts and when complete IronRuby binaries should be in your path, something like C:\\Program Files\\IronRuby 0.9.4.0\\bin. Notice the version, 0.9.4, odd for a 1.0 RC2. The installation says the same:

[![IronRubyRC2Install](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SettingUpIronRubytoRunRails2.3.x_E27C/IronRubyRC2Install_thumb.png "IronRubyRC2Install")](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SettingUpIronRubytoRunRails2.3.x_E27C/IronRubyRC2Install_2.png)

I installed IronRuby and looking at the directory of the IronRuby binaries, I see all commands are preceded by an ?i?. So for those familiar with Ruby-related commands we get igem, irake, iirb and etc, not a big deal but something that needs to be remembered. There is not a Ruby.exe either, but rather an ir.exe which we use to execute commands. Also note that RubyGems comes bundled with IronRuby, no need to install this ourselves, which is nice.

### Installing Rails

Installing Rails is not hard but make sure IronRuby is in your path and install with the following command:

> igem install rails

This installs all dependencies and documentation. It is interesting to note that we aren?t left with the normal (if you are familiar with Rails on OS X or Linux) rails command but rather irails. In order to find the installed Rails version we type:

> irails ?v

We should see Rails 2.3.5 as a result. I find it interesting Microsoft trying to create a Ruby which developers want to use, yet deviate the way command are run. Maybe it will change in the official release.

### Creating a Rails Application

Creating a Rails application under IronRuby is pretty much the same as on any platform with the exception of the ?i? in front of the command. I decided to just create a throwaway application called ?testapp?, just to prove Rails worked. The command:

> irails testapp

Runs and throws up a bunch of files created. No magic here, but found some interesting things when trying to run the application.

### Running the Rails Application

The default database these days used by Rails 2.3.x is SQLite3 and use this most of the time when building applications since it just works and I don?t need to deal with MySQL or PostgreSQL.

I grabbed the latest sqlite3 binary and DLL?s from the SQLite web site where you can [download precompiled binaries for Windows](http://www.sqlite.org/download.html). I put the contents of the two zip files in the IronRuby bin directory. Any location in your path should work.

Normally we need to install a gem named ?sqlite3-ruby? which is our Ruby driver for the sqlite3 database. Doing so under IronRuby results in a fine installation but a failure when accessing our development.sqlite3 database, creating in particular. Running the command to create our development database:

> irake db:create

Provides a nice error ?no driver for sqlite3 found?. Well, this is an interesting problem I was happy to not have to search very long to resolve. It seems some has [forked the original sqlite3-ruby project on GitHub and created sqlite3-ironruby](http://github.com/plainprogrammer/sqlite3-ironruby). A quick:

> igem install sqlite3-ironruby

Does the trick by retrying the irake db:create command and we are in business. Our last step to prove Rails works with IronRuby is running our WEBrick server from within our ?testapp? directory:

> ir script/server

The server starts and loads up our little test application. Those of use used to running Ruby on most platforms are used to just using script/server without the ?ir? in front of it or maybe using the ?ruby? command with it, ?ir? is your ?ruby? and you need to precede your commands with it to ensure you have the the right Ruby binary.

If all things go well, popping open a browser and putting <http://localhost:3000> in your address bar should give you a running Rails application:

[![IronRubyApp](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SettingUpIronRubytoRunRails2.3.x_E27C/IronRubyApp_thumb.png "IronRubyApp")](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/SettingUpIronRubytoRunRails2.3.x_E27C/IronRubyApp_2.png)

Granted, it doesn?t do anything but it is a start and proves it loads. I created some models and controllers and the *ir script/generate* commands worked like a charm. All commands seemed to run as fast as, if not faster, than those in MRI 1.8.6.

IronRuby has come a long way and we may see some production Rails applications running in IIS7 before too long.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:8564cd3b-64e9-4094-b8ec-290b0c364f19" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [IronRuby](http://technorati.com/tags/IronRuby),[Ruby](http://technorati.com/tags/Ruby),[Ruby on Rails](http://technorati.com/tags/Ruby+on+Rails),[Microsoft](http://technorati.com/tags/Microsoft)</div>