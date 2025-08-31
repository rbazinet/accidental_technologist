---
id: 190
title: 'What's Coming in Instant Rails 2.0 and Beyond - The Road Map'
date: '2007-12-17T18:32:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=190'
permalink: /instant-rails/whats-coming-in-instant-rails-2-0-and-beyond-the-road-map/
dsq_thread_id:
    - '95924507'
categories:
    - 'Instant Rails'
---

Since I [took over](http://rbazinet.wordpress.com/2007/12/13/instant-rails-lives-on/) the [Instant Rails](http://instantrails.rubyforge.org/wiki/wiki.pl) project a short time ago I have been working on learning the structure of the project and figuring out what to put in the next release and beyond. The next release will be Instant Rails 2.0. The reason for the jump is primarily because [Ruby on Rails](http://www.rubyonrails.org) itself has jumped to be 2.0, so why not keep it parallel.

#### **Instant Rails 1.7 Components**

 The current version includes the following core components: - [\[Instant Rails Manager\]](http://rubyforge.org/scm/?group_id=904) 1.7
- [\[Ruby 1.8.6\]](http://ruby-lang.org/) (from the [\[One-Click Ruby Installer\]](http://rubyinstaller.rubyforge.org/) 1.8.6-25)
- [\[Ruby on Rails\]](http://www.rubyonrails.com/) 1.2.3
- [\[Apache\]](http://httpd.apache.org/) 1.3.33
- [\[MySQL\]](http://www.mysql.com/) 5.0.27
- [\[MySQL/Ruby\]](http://www.vandomburg.net/pages/mysql-ruby-windows) 2.7.3 (native driver)
- [\[Mongrel\]](http://mongrel.rubyforge.org/) 1.0.1
- [\[phpMyAdmin\]](http://www.phpmyadmin.net/home_page/index.php) 2.10.0.2
 
 It contains the following sample applications: - Cookbook app from [\[ONLamp.com article\]](http://www.onlamp.com/pub/a/onlamp/2005/01/20/rails.html)
- [\[Typo\]](http://typo.leetsoft.com/trac/) 2.6.0
 
 And a few ancillary applications which some of Instant Rails depends on: - [\[PHP\]](http://www.php.net/) 4.3.10
- [\[One-Click Ruby Installer\]](http://rubyinstaller.rubyforge.org/) 1.8.6-25
- [\[cmdparse\]](http://cmdparse.rubyforge.org/) 2.0.2
- [\[HighLine\]](http://highline.rubyforge.org/) 1.2.7
 
#### **Instant Rails 2.0 Components**

 The current version includes the following core components: - [\[Instant Rails Manager\]](http://rubyforge.org/scm/?group_id=904) 2.0
- [\[Ruby 1.8.6\]](http://ruby-lang.org/) (from the [\[One-Click Ruby Installer\]](http://rubyinstaller.rubyforge.org/) 1.8.6-26 Patch Level 111)
- [\[Ruby on Rails\]](http://www.rubyonrails.com/) 2.0.2
- [\[Capistrano\]](http://www.capify.org/) 2.1
- [\[Apache\]](http://httpd.apache.org/) 1.3.33
- [\[MySQL\]](http://www.mysql.com/) 5.0.27
- [\[MySQL/Ruby\]](http://www.vandomburg.net/pages/mysql-ruby-windows) 2.7.3 (native driver)
- [\[Mongrel\]](http://mongrel.rubyforge.org/) 1.1.2
- [\[phpMyAdmin\]](http://www.phpmyadmin.net/home_page/index.php) 2.10.0.2
 
 It contains the following sample applications: - Cookbook app from [\[ONLamp.com article\]](http://www.onlamp.com/pub/a/onlamp/2005/01/20/rails.html)
- [\[Typo\]](http://typo.leetsoft.com/trac/) 2.6.0
 
 And a few ancillary applications which some of Instant Rails depends on: - [\[PHP\]](http://www.php.net/) 4.3.10
- [\[One-Click Ruby Installer\]](http://rubyinstaller.rubyforge.org/) 1.8.6-26
- [\[cmdparse\]](http://cmdparse.rubyforge.org/) 2.0.2
- [\[HighLine\]](http://highline.rubyforge.org/) 1.4.0
 
#### **Instant Rails 2.0 and Beyond**

 I have chatted with several people who would like to see various features and components upgraded or added to the project. I can't see with any certainty what components might be added but I can say I will do my best to add what people want but remain keeping the project light and stable. Some of the items users wanted to see are: - PHP 5
- SQL Server Support
- IIS Support
- SubVersion
- SQLite3
 
 Developers should take a look at the [release notes for Ruby 1.8.6-26](http://rubyforge.org/frs/shownotes.php?group_id=167&release_id=17128), which includes updates which provide support for running Rails applications under IIS7. The important components are FastCGI and ruby-fcgi. It should also be noted that Rails 2.0.2 uses SQLite3 as its default database and therefore when creating Rails applications under Instant Rails, the command looks like this: > ```
> rails -d mysql myapp
> ```

 Should SQLite3 be included in the next release of Instant Rails now that SQLite3 is the default database? I tend to think this would be the right thing to do but features like phpMyAdmin become a bit irrelevant being a MySQL tool. I have found a tool called [SQLiteManager](http://sourceforge.net/projects/sqlitemanager/) which is a web-based admin tool for SQLite3 databases. Anyone familiar with it? It appears to be a bit dated. I am planning at looking to upgrade to Ruby 1.9 when available as well as at upgrading to the latest version of MySQL and Apache, but these will have to wait a bit since they work great just the way they are today. The sample Typo 2.6 installation could use an upgrade to Typo 4.x as well. I would like to continue to hear what people would like to see, please email me at \[rbazinet\] at \[gmail.com\] or reply to this post. Technorati Tags: [Instant Rails](http://technorati.com/tags/Instant%20Rails),[Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails)