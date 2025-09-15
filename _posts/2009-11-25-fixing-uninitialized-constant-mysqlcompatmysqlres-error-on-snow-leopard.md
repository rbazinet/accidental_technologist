---
id: 388
title: 'Fixing Uninitialized Constant MysqlCompat::MysqlRes Error on Snow Leopard'
date: '2009-11-25T17:01:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=388'
permalink: /apple/fixing-uninitialized-constant-mysqlcompatmysqlres-error-on-snow-leopard/
dsq_thread_id:
    - '95925491'
categories:
    - Apple
---

Recently I ran into a problem on my MacBook Pro running Snow Leopard when trying to connect to a MySQL database. The current version of the gem (2.8.1) installed fine but when trying to use it, I received the following error:

<span class="Apple-style-span" style="font-family: 'Lucida Grande', verdana, arial, helvetica, sans-serif"></span>

```
uninitialized constant MysqlCompat::MysqlRes
```

When trying to spin up a Rails application on my Mac. I am running Snow Leopard and already had the MySQL gem installed. A bit of searching around the web led to some information that this is an issue to do with the MySQL driver, in particular mysql-2.8.1. The explanation came from a [thread on StackOverflow.com](https://stackoverflow.com/questions/1332207/uninitialized-constant-mysqlcompatmysqlres-using-mms2r-gem):

> As it turns out, that class should not exist; the error message is caused by a problem with the latest Mysql driver. mysql-2.8.1 looked for my libraries in a directory named with an extra level of 'mysql' at the end. For instance, my libraries (under MacOS X 10.5.8), are in /usr/local/mysql/lib, but the mysql.bundle library looks for the MySQL libraries at /usr/local/mysql/lib/mysql ... which is wrong.

I tried some of the suggestions in the thread which suggested a straight install of the MySQL 2.7 gem but the result was the same. It seems things are treated a bit differently on OS X 10.5.x and 10.6.x because of the 64-bit goodness we now have, but I was able to resolve the issue. The first step was to uninstall my current MySQL gem:

```bash
sudo gem uninstall mysql
```

The command is a bit long but we basically want to install the version 2.7 of the MySQL gem and tell it where the MySQL main directory is located as well as where the configuration is located. This command should be entered in a single line from a Terminal prompt (broken up here for display purposes):

```bash
export ARCHFLAGS="-arch i386 -arch x86_64"
sudo gem install --no-rdoc --no-ri -v=2.7 mysql -- \
  --with-mysql-dir=/usr/local/mysql \
  --with-mysql-config=/usr/local/mysql/bin/mysql_config
```

<div>Firing up the Rails application worked like a champ after the gem installed. I would imagine there will be a fix for the MySQL gem 2.8.1 or maybe there is already a workaround I did not come across in my search. MySQL is working Snow Leopard for my Rails applications, so I am happy.</div><div> </div><div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:24c06005-f898-4a32-813c-4d04095a0a77" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [MySQL](https://technorati.com/tags/MySQL),[MySQL Gem](https://technorati.com/tags/MySQL+Gem),[Ruby on Rails](https://technorati.com/tags/Ruby+on+Rails)</div>