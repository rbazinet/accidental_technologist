---
id: 196
title: 'Building Ruby 1.9.0 on an Apple Mac'
date: '2007-12-31T13:14:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=196'
permalink: /ruby/building-ruby-1-9-0-on-an-apple-mac/
dsq_thread_id:
    - '95924553'
categories:
    - Ruby
---

I decided to start playing around with the latest Ruby, 1.9.0, which was [released on Christmas Day](http://www.ruby-lang.org/en/news/2007/12/25/ruby-1-9-0-released/). I am on a MacBook Pro running OSX Tiger 10.4.11.

I [previously blogged about what to do with Ruby 1.9](http://rbazinet.wordpress.com/2007/12/30/ruby-19-released-should-you-use-it-today/) to get up-to-speed. Anyone using Ruby today probably shouldn't be considering overwriting their Ruby 1.8.6 installation if they do any real coding or have an existing code base. Many of the gems and libraries you use may not work with 1.9, Rails 2.0.2 for one does not.

#### **Getting Started**

The first thing I did was download the Ruby 1.9 source from Ruby-Lang, [ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.0-0.tar.gz](ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.0-0.tar.gz). I copied the contents of this archive to a folder in my home directory called Source (/Users/rbazinet/Source). This way I keep all of my downloaded source organized and easy to manage.

Opening up a Terminal window and changing to that directory will get things started. Now to setup the build to not overwrite my installed version 1.8.6 of Ruby, I created a directory called ruby19 in my home directory.

> ```
> $ autoconf $ ./configure --prefix=/Users/rbazinet/ruby19 $ make
> ```

Of course nothing always works as planned. During the build I received the following error:

> ```
> compiling readlinegcc -I. -I../../.ext/include/i686-darwin8.11.1 -I../.././include -I../.././ext/readline -DRUBY_EXTCONF_H=\"extconf.h\" -fno-common -g -O2 -pipe -fno-common -o readline.o -c readline.c readline.c: In function 'filename_completion_proc_call': readline.c:659: error: 'filename_completion_function' undeclared (first use in this function) readline.c:659: error: (Each undeclared identifier is reported only once readline.c:659: error: for each function it appears in.) readline.c:659: warning: assignment makes pointer from integer without a cast readline.c: In function 'username_completion_proc_call': readline.c:684: error: 'username_completion_function' undeclared (first use in this function) readline.c:684: warning: assignment makes pointer from integer without a cast make[1]: *** [readline.o] Error 1 make: *** [all] Error 1
> ```

It appears readline is the problem here and needs to be updated. After a bit of searching around the net I can across some information about this and determine readline needs to be updated to readline 5.2.

Readline can be [downloaded from Gnu.org](http://ftp.gnu.org/gnu/readline/). I created a directory in my standard Source folder called readline-5.2 and then performed a build:

> ```
> $ cd /User/rbazinet/Source/readline-5.2 $ ./configure --prefix=/usr/local $ make $ sudo make install
> ```

Now with Readline 5.2 installed I tried the Ruby 1.9 build again, this time indicating the location of my new Readline installation:

> ```
> $ autoconf $ ./configure --prefix=/Users/rbazinet/ruby19 --with-readline-dir=/usr/local $ make $ make install
> ```

Changing to our new Ruby 1.9 installation directory:

> ```
> $ cd /Users/rbazinet/ruby19/bin $ ./ruby -v ruby 1.9.0 (2007-12-25 revision 14709) [i686-darwin8.11.1] $ 
> ```

Success!

We could add our new ruby/bin to path if we wanted, to make it a big easier to test, but for now this works. I am running Tiger so I don't know if this same procedure works on Leopard. If someone can confirm if this works or can comment on how to build Ruby 1.9 on Leopard, I will update this post to reflect what is needed to be done.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Ruby](http://technorati.com/tags/Ruby),[Apple Mac](http://technorati.com/tags/Apple%20Mac),[OSX](http://technorati.com/tags/OSX)</div>