---
id: 325
title: 'Installing Ruby 1.8.6 on Ubuntu 8.10'
date: '2008-11-29T00:32:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=325'
permalink: /ruby/installing-ruby-1-8-6-on-ubuntu-8-10/
dsq_thread_id:
    - '95925003'
categories:
    - Ruby
---

I recently installed the [latest release of Ubuntu](https://www.ubuntu.com/getubuntu/download), 8.10. I wanted to setup my Dell Mini to do some on-the-road Ruby development so I tried:

```bash
$ sudo apt-get install ruby
```

Only to find out the Ruby default for Ubuntu 8.10 is Ruby 1.8.7 which is known to have some compatibility problems with pre-Rails 2.2.2 and other Ruby gems and plugins. After removing Ruby 1.8.7 I set out to figure out the best way to get my old friend Ruby 1.8.6 up and running.

### It's about the source

It turns out we can pretty easily set the source of where Ubuntu gets it's updates regardless of the version. Even though I have Ubuntu 8.10 installed, I can install packages from Ubuntu 8.04.

Getting started is pretty easy. The file we need to change is the **sources.list** file located in **/etc/apt/**. After backing up the file I changed the file to access the older Hardy file repositories alongside the newer Intrepid (8.10) versions. The sources.list file now looks like this:

```bash
# deb cdrom:[Ubuntu 7.10 _Gutsy Gibbon_ - Release i386 (20071016)]/ gutsy main restricted
# See https://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid main restricted
deb https://mirror.cs.umn.edu/ubuntu/ hardy main restricted
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid main restricted
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy main restricted
## Major bug fix updates produced after the final release of the
## distribution.
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-updates main restricted
deb https://mirror.cs.umn.edu/ubuntu/ hardy-updates main restricted
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-updates main restricted
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-updates main restricted
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team, and may not be under a free licence. Please satisfy yourself as to
## your rights to use the software. Also, please note that software in
## universe WILL NOT receive any review or updates from the Ubuntu security
## team.
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid universe
deb https://mirror.cs.umn.edu/ubuntu/ hardy universe
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid universe
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy universe
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-updates universe
deb https://mirror.cs.umn.edu/ubuntu/ hardy-updates universe
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-updates universe
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-updates universe
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
## team, and may not be under a free licence. Please satisfy yourself as to 
## your rights to use the software. Also, please note that software in 
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid multiverse
deb https://mirror.cs.umn.edu/ubuntu/ hardy multiverse
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy multiverse
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid multiverse
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-updates multiverse
deb https://mirror.cs.umn.edu/ubuntu/ hardy-updates multiverse
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-updates multiverse
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-updates multiverse
## Uncomment the following two lines to add software from the 'backports'
## repository.
## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-backports main restricted universe multiverse
deb https://mirror.cs.umn.edu/ubuntu/ hardy-backports main restricted universe multiverse
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-backports main restricted universe multiverse
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-backports main restricted universe multiverse
## Uncomment the following two lines to add software from Canonical's
## 'partner' repository. This software is not part of Ubuntu, but is
## offered by Canonical and the respective vendors as a service to Ubuntu
## users.
deb https://archive.canonical.com/ubuntu intrepid partner
deb https://archive.canonical.com/ubuntu hardy partner
deb-src https://archive.canonical.com/ubuntu intrepid partner
deb-src https://archive.canonical.com/ubuntu hardy partner
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-security main restricted
deb https://mirror.cs.umn.edu/ubuntu/ hardy-security main restricted
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-security main restricted
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-security main restricted
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-security universe
deb https://mirror.cs.umn.edu/ubuntu/ hardy-security universe
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-security universe
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-security universe
# Line commented out by installer because it failed to verify:
deb https://mirror.cs.umn.edu/ubuntu/ intrepid-security multiverse
deb https://mirror.cs.umn.edu/ubuntu/ hardy-security multiverse
# Line commented out by installer because it failed to verify:
deb-src https://mirror.cs.umn.edu/ubuntu/ intrepid-security multiverse
deb-src https://mirror.cs.umn.edu/ubuntu/ hardy-security multiverse
```

Next up we need to create a file to tell the package manager our preferences for various packages that we might try to install. The file is **/etc/apt/preferences** and contain the following:

```
Package: ruby
Pin: release a=hardy
Pin-Priority: 900
Package: ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: rdoc1.8
Pin: release a=hardy
Pin-Priority: 900
Package: ri1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libgtk2-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libdbd-sqlite3-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libopenssl-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libsqlite3-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: ruby1.8-dev
Pin: release a=hardy
Pin-Priority: 900
Package: libdbi-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libatk1-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libpango1-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libatk1-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libgdk-pixbuf2-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libglib2-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libcairo-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: irb1.8
Pin: release a=hardy
Pin-Priority: 900
Package: libreadline-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
Package: rails
Pin: release a=hardy
Pin-Priority: 900
Package: libncurses-ruby1.8
Pin: release a=hardy
Pin-Priority: 900
```

Once the file is in place a quick `sudo apt-get update` will make sure the repositories are up-to-date. Now our install of Ruby:

```bash
sudo aptitude install ruby1.8-dev ruby1.8 ri1.8 rdoc1.8 irb1.8 libreadline-ruby1.8 libruby1.8 libopenssl-ruby sqlite3 libsqlite3-ruby1.8
```

and it will be what we expect, 1.8.6.