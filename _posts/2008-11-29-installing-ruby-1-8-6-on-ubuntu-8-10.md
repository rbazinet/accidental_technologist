---
id: 325
title: 'Installing Ruby 1.8.6 on Ubuntu 8.10'
date: '2008-11-29T00:32:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=325'
permalink: /ruby/installing-ruby-1-8-6-on-ubuntu-8-10/
dsq_thread_id:
    - '95925003'
categories:
    - Ruby
---

[![ubuntulogo](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Ruby1.8.6onUbuntu8.10_14CF6/ubuntulogo_3.png "ubuntulogo")](http://www.ubuntu.com/) I recently installed the [latest release of Ubuntu](http://www.ubuntu.com/getubuntu/download), 8.10. I wanted to [setup my Dell Mini](http://accidentaltechnologist.com/technology/installing-ubuntu-8-10-on-the-dell-mini/) to do some on-the-road Ruby development so I tried:

> <div>```
> 
> $ sudo apt-get install ruby
> ```
> 
> </div>

Only to find out the Ruby default for Ubuntu 8.10 is Ruby 1.8.7 which is known to have some compatibility problems with pre-Rails 2.2.2 and other Ruby gems and plugins. After removing Ruby 1.8.7 I set out to figure out the best way to get my old friend Ruby 1.8.6 up and running. [![ruby-logo](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/Ruby1.8.6onUbuntu8.10_14CF6/ruby-logo_3.png "ruby-logo")](http://www.ruby-lang.org/en/)

### It’s about the source

It turns out we can pretty easily set the source of where Ubuntu gets it’s updates regardless of the version. Even though I have Ubuntu 8.10 installed, I can install packages from Ubuntu 8.04.

Getting started is pretty easy. The file we need to change is the **sources.list** file located in **/etc/apt/**. After backing up the file I changed the file to access the older Hardy file repositories alongside the newer Intrepid (8.10) versions. The sources.list file now looks like this:

> ```
> <span class="rem"># deb cdrom:[Ubuntu 7.10 _Gutsy Gibbon_ - Release i386 (20071016)]/ gutsy main restricted</span>
> <span class="rem"># See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to</span>
> <span class="rem"># newer versions of the distribution.</span>
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid main restricted
> deb http://mirror.cs.umn.edu/ubuntu/ hardy main restricted
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid main restricted
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy main restricted
> <span class="rem">## Major bug fix updates produced after the final release of the</span>
> <span class="rem">## distribution.</span>
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-updates main restricted
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-updates main restricted
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-updates main restricted
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-updates main restricted
> <span class="rem">## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu</span>
> <span class="rem">## team, and may not be under a free licence. Please satisfy yourself as to</span>
> <span class="rem">## your rights to use the software. Also, please note that software in</span>
> <span class="rem">## universe WILL NOT receive any review or updates from the Ubuntu security</span>
> <span class="rem">## team.</span>
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid universe
> deb http://mirror.cs.umn.edu/ubuntu/ hardy universe
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid universe
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy universe
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-updates universe
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-updates universe
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-updates universe
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-updates universe
> <span class="rem">## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu </span>
> <span class="rem">## team, and may not be under a free licence. Please satisfy yourself as to </span>
> <span class="rem">## your rights to use the software. Also, please note that software in </span>
> <span class="rem">## multiverse WILL NOT receive any review or updates from the Ubuntu</span>
> <span class="rem">## security team.</span>
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid multiverse
> deb http://mirror.cs.umn.edu/ubuntu/ hardy multiverse
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy multiverse
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid multiverse
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-updates multiverse
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-updates multiverse
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-updates multiverse
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-updates multiverse
> <span class="rem">## Uncomment the following two lines to add software from the 'backports'</span>
> <span class="rem">## repository.</span>
> <span class="rem">## N.B. software from this repository may not have been tested as</span>
> <span class="rem">## extensively as that contained in the main release, although it includes</span>
> <span class="rem">## newer versions of some applications which may provide useful features.</span>
> <span class="rem">## Also, please note that software in backports WILL NOT receive any review</span>
> <span class="rem">## or updates from the Ubuntu security team.</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-backports main restricted universe multiverse
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-backports main restricted universe multiverse
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-backports main restricted universe multiverse
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-backports main restricted universe multiverse
> <span class="rem">## Uncomment the following two lines to add software from Canonical's</span>
> <span class="rem">## 'partner' repository. This software is not part of Ubuntu, but is</span>
> <span class="rem">## offered by Canonical and the respective vendors as a service to Ubuntu</span>
> <span class="rem">## users.</span>
> deb http://archive.canonical.com/ubuntu intrepid partner
> deb http://archive.canonical.com/ubuntu hardy partner
> deb-src http://archive.canonical.com/ubuntu intrepid partner
> deb-src http://archive.canonical.com/ubuntu hardy partner
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-security main restricted
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-security main restricted
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-security main restricted
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-security main restricted
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-security universe
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-security universe
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-security universe
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-security universe
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb http://mirror.cs.umn.edu/ubuntu/ intrepid-security multiverse
> deb http://mirror.cs.umn.edu/ubuntu/ hardy-security multiverse
> <span class="rem"># Line commented out by installer because it failed to verify:</span>
> deb-src http://mirror.cs.umn.edu/ubuntu/ intrepid-security multiverse
> deb-src http://mirror.cs.umn.edu/ubuntu/ hardy-security multiverse
> ```

Next up we need to create a file to tell the package manager our preferences for various packages that we might try to install. The file is **/etc/apt/preferences** and contain the following:

> ```
> 
> Package: ruby
> Pin: release a=hardy
> Pin-Priority: 900
> Package: ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: rdoc1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: ri1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libgtk2-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libdbd-sqlite3-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libopenssl-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libsqlite3-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: ruby1.8-dev
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libdbi-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libatk1-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libpango1-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libatk1-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libgdk-pixbuf2-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libglib2-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libcairo-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: irb1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libreadline-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> Package: rails
> Pin: release a=hardy
> Pin-Priority: 900
> Package: libncurses-ruby1.8
> Pin: release a=hardy
> Pin-Priority: 900
> ```

Once the file is in place a quick **sudo apt-get update** will make sure the repositories are up-to-date. Now our install of Ruby:

> <div class="csharpcode-wrapper">```
> 
> sudo aptitude install ruby1.8-dev ruby1.8 ri1.8 rdoc1.8 irb1.8 libreadline-ruby1.8 libruby1.8 libopenssl-ruby sqlite3 libsqlite3-ruby1.8
> ```
> 
> </div>

and it will be what we expect, 1.8.6.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:ca613cfa-8739-4bf0-bd90-18f103c50e30" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Ubuntu](http://technorati.com/tags/Ubuntu),[Ruby](http://technorati.com/tags/Ruby)</div>