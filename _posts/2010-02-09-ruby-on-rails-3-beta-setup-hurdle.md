---
id: 394
title: 'Ruby on Rails 3 Beta Setup Hurdle'
date: '2010-02-09T14:44:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=394'
permalink: /ruby/ruby-on-rails-3-beta-setup-hurdle/
dsq_thread_id:
    - '95926470'
categories:
    - Ruby
---

The [Ruby on Rails 3 beta was released recentl](http://weblog.rubyonrails.org/2010/2/5/rails-3-0-beta-release)y and has been in development for the past year, longer if you take into account Merb.

I decided I wanted to start playing around with the release for a few reasons:

- In order to see what issues developers may face moving to Rails 3 with existing applications.
- I wanted to see the new architecture changes from Rails 2.x
- I also wanted to see first-hand creating a simple application and all that is involved.

There are plenty of tutorials about how to setup Rails 3 and I won't go into details here but wanted to share the method I used and one particular error I received and how I resolved it. [Jeremy McAnally](http://omgbloglol.com/) has some great coverage of using Rails 3, both [new projects](http://omgbloglol.com/post/371893012/the-path-to-rails-3-greenfielding-new-apps-with-the) and [upgrades](http://omgbloglol.com/post/353978923/the-path-to-rails-3-approaching-the-upgrade). His [rails\_upgrade gem](http://github.com/rails/rails_upgrade) is a great place to start when beginning to look at moving an existing Rails project to Rails 3.

### Setup

I decided to use the awesome [Ruby Version Manager (RVM)](http://rvm.beginrescueend.com/) to manage testing Rails 3 on different flavors of Ruby. The first thing to know is Rails 3 requires Ruby 1.8.7 and above, so no 1.8.6.

Ryan Bates has a great intro to setting up Rails 3 with RVM in his latest Railscast titled [Rails 3 Beta and RVM](http://railscasts.com/episodes/200-rails-3-beta-and-rvm).

I decided to use Ruby 1.8.7 for initial testing. There are a bunch of gem dependencies when working with Rails 3, as you might expect. There is a gem called rails3b which installs the necessary dependencies in one swoop. These two command should do the trick:

```bash
gem install rails3b
gem install arel --pre
```

After these commands finished and I closed and reopened my terminal prompt, a quick rails command gave me the following error:

```
/usr/local/lib/ruby/site_ruby/1.8/rubygems.rb:827:in `report_activate_error': Could not find RubyGem rails (>= 0) (Gem::LoadError)
from /usr/local/lib/ruby/site_ruby/1.8/rubygems.rb:261:in `activate'
from /usr/local/lib/ruby/site_ruby/1.8/rubygems.rb:68:in `gem'
from /usr/local/bin/rails:18
```

Some Googling did not return any usable results from anyone with this error. I really didn't expect anything, things are just too new. Thinking back to another way to install Rails 3, I decided to try this instead:

```bash
gem install tzinfo builder memcache-client rack rack-test rack-mount erubis mail text-format thor bundler i18n
gem install rails --pre
```

After running these two gem commands the new rails command works as expected. I'm not really clear what the difference was which fixed the rails command, but I don't know if I need to.

Do keep in mind the default database provider is Sqlite3 so you need to install that gem (sqlite3-ruby). Probably one of the biggest tips is to make sure you don't use sudo when installing gems under RVM managed Ruby installation, just use gem install &lt;gem name&gt;.

**UPDATE**: Jeremy McAnally points out the rails3b gem installs the dependencies for the Rails 3 beta, not Rails itself. This would certainly explain why my initial attempt failed and only worked after INSTALLING RAILS.

<meta charset="utf-8"></meta>

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:24c06005-f898-4a32-813c-4d04095a0a77" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Rails 3](http://technorati.com/tags/Rails3),[Ruby](http://technorati.com/tags/Ruby)</div>