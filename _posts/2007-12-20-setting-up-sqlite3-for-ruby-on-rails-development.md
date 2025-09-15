---
id: 193
title: 'Setting up SQLite3 for Ruby on Rails Development'
date: '2007-12-20T16:41:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=193'
permalink: /ruby-on-rails/setting-up-sqlite3-for-ruby-on-rails-development/
dsq_thread_id:
    - '95925697'
categories:
    - 'Ruby on Rails'
---

**UPDATE:** Thanks to an astute reader, it seems to have full SQLite3 support on Windows you need to add the SQLite3.dll and the SQLite3.def files also in your path. I put these in my ruby/bin folder, which is where they will be in the Instant Rails release coming up.

The release of Ruby on Rails 2.0.2 made some [fairly significant changes](https://weblog.rubyonrails.org/2007/12/17/rails-2-0-2-some-new-defaults-and-a-few-fixes) in the default database for Rails applications. The default, and standard, database has always been MySql but the Rails team felt it easier for development to use SQLite3 and make it the new default.

Setting up SQLite3 is pretty straight forward both on Windows and the Mac OSX, both Tiger and Leopard come with SQLite3 already installed so that makes the Mac one up on Windows. My Tiger installation had SQLite3 v3.13 installed on it so I wanted to make sure I had the latest at the time of this writing and put 3.5.4 on it.

#### **Installing on Windows**

The installation on Windows was really straight forward. The main thing is to download the pre-compiled version of SQLite3 3.5.4 from the [SQLite web site](https://www.sqlite.org/download.html), unzip it and copy the single sqlite3.exe to my ruby/bin directory.

Now that SQLite3 is installed, just install the gem:

> ```bash
> gem install sqlite3-ruby
> ```

And that's it.

#### **Installing/Updating on the Apple Mac OSX**

Upgrading my Rails installation was a breeze on my MacBook Pro, after upgrading to RubyGems 1.0 the Rails 2.0.2 install went through without a hitch. The only real concern I had about upgrading to Rails 2.0.2 on the Mac was the fact the default database for 2.0.2 is SQLite3 and I had an old version. I feel a bit indifferent about installing over versions of software installed by Apple in the event it is used by something and I break it. I am pretty new to the Mac and fixing an issue like this can sometimes be intimidating.

I found an older version of SQLite3, here:

> ```bash
> /usr/local/bin/sqlite3
> ```

There are several ways to update software like this on the Mac and using [MacPorts](https://www.macports.org/) seems to be a popular way to do it, but I chose to install from source. I have a Source directory in my home folder on my Mac and I simply start everything from there. So, to install I did the following:

> ```bash
> $ curl -O https://www.sqlite.org/sqlite-3.5.4.tar.gz
> $ tar xzf sqlite-3.5.4.tar.gz
> $ cd sqlite-3.5.4
> $ ./configure --prefix=/usr/local
> $ make
> $ sudo make install
> ```

After working with Windows systems for most of my professional career I chuckle at how cryptic the commands are in Unix-like environments. Maybe this is to keep the barrier to entry high.

Using the "which sqlite3" command should reveal the same location as the original SQLite3 installation. If you actually type in "sqlite3" you enter the command mode of SQLite3 and should see the new 3.5.4 version.

The last step to is to install the Ruby driver for SQLite3, accomplished with:

> ```bash
> $ sudo gem install sqlite3-ruby
> ```

This installed without any problems and was good to go with using SQLite3 on my Mac Rails 2.0.2 installation. It's funny though, the Windows installation was very easy and the Mac install took a bit of work that was not particularly obvious. I thought the Mac was supposed to be so much easier than the PC? Isn't this what the Apple ads try to get us to believe? I guess Apple just has better marketing.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Ruby on Rails](https://technorati.com/tags/Ruby%20on%20Rails),[SQLite3](https://technorati.com/tags/SQLite3),[Windows](https://technorati.com/tags/Windows),[Mac](https://technorati.com/tags/Mac)</div>