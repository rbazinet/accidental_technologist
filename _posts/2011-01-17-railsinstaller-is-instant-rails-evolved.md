---
id: 601
title: 'RailsInstaller is Instant Rails Evolved'
date: '2011-01-17T21:43:12-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=601'
permalink: /ruby-on-rails/railsinstaller-is-instant-rails-evolved/
dsq_thread_id:
    - '211499840'
categories:
    - 'Ruby on Rails'
tags:
    - InstantRails
    - RailsInstaller
    - Ruby
    - 'Ruby on Rails'
---

Today the great team led by Wayne Sequin ([rvm fame](http://rvm.beginrescueend.com/)) and [Luis Lavena](http://blog.mmediasys.com/) (RubyInstaller fame) and initiated by Dr. Nic Williams of [Engine Yard](http://www.engineyard.com/) released [RailsInstaller](http://railsinstaller.org/).

### In the Box

RailsInstaller is really what [Instant Rails](http://rubyforge.org/projects/instantrails/) brought to Windows developers wanting to write Ruby and Ruby on Rails code, but now evolved. RailsInstaller takes Ruby and Rails to their current versions and add some other niceties to give the Windows developer the ability to create real Rails applications today. Included is:

- Ruby 1.8.7-p330
- Rails 3.0.3
- Git 1.7.3.1
- Sqlite 3.7.3
- DevKit
 
I would expect that we would see a Ruby 1.9.2 at some point but imagine there must be some technical hurdles to get beyond before it makes sense to release.

### Installation

Installation is a breeze by just following the simple installation wizard all Windows users know all about. A nice video has been created to show how to install and get started:

<iframe frameborder="0" height="338" src="http://player.vimeo.com/video/18787139?title=0&byline=0&portrait=0&color=ffffff" width="600"></iframe>

The video is very clear and the installation wizard really simple, just follow the directions and keep the defaults for the best experience.

[![RailsInstaller1](/assets/img/2011/01/RailsInstaller1_thumb.png "RailsInstaller1")](/assets/img/2011/01/RailsInstaller1.png)

The installer explains clearly what is being installed in this particular version.

[![RailsInstaller2](/assets/img/2011/01/RailsInstaller2_thumb.png "RailsInstaller2")](/assets/img/2011/01/RailsInstaller2.png)

The default is to add to the PATH statement. I would recommend keeping this so your system knows where to find all the needed executables.

[![RailsInstallerMenu](/assets/img/2011/01/RailsInstallerMenu_thumb.png "RailsInstallerMenu")](/assets/img/2011/01/RailsInstallerMenu.png)

You should notice a nice shortcut to a Ruby and Rails prompt all setup to use.

[![RailsInstallerPrompt](/assets/img/2011/01/RailsInstallerPrompt_thumb.png "RailsInstallerPrompt")](/assets/img/2011/01/RailsInstallerPrompt.png)

The Ruby version as well as the Git version are cleanly shown. You are good to go.

I was lucky enough to have a prerelease build of the tool and even in a prerelease state, they guys did a great job. It was easy to create Rails apps and have them running in no time. Keep in mind that not all Ruby gems will yet be compatible with Windows. If you encounter issues you are best advised to contact the person in charge of the gem project you are trying to install.

I encourage everyone to who is interested in Rails on Windows in a clean package to [download the installer now](http://rubyforge.org/frs/download.php/73968/railsinstaller-1.0.0.exe) and give it a go.