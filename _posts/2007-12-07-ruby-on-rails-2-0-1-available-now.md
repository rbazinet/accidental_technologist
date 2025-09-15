---
id: 183
title: 'Ruby on Rails 2.0.1 Available now'
date: '2007-12-07T16:17:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=183'
permalink: /ruby-on-rails/ruby-on-rails-2-0-1-available-now/
categories:
    - 'Ruby on Rails'
---

According to a post today on the Ruby on Rails blog, [Ruby on Rails 2.0 has been released](https://weblog.rubyonrails.org/2007/12/7/rails-2-0-it-s-done) after almost a year in the making.

This release is full of new features, lots of fixes and a large amount of polish. David (DHH) said about the release:

> What a milestone for Ruby on Rails as well. I?ve personally been working on this framework for about four and a half years and we have contributors who?ve been around for almost as long as well. It?s really satisfying to see how far we?ve come in that period of time. That we?ve proven the initial hype worthy, that we?ve been able to stick with it and continue to push the envelope.

The list of What's New with this release is long. The major ones which will interest Rails developers most include:

- **Action Pack: Resources**

> This is where the bulk of the action for 2.0 has gone. We?ve got a slew of improvements to the RESTful lifestyle. First, we?ve dropped the semicolon for custom methods instead of the regular slash. So `/people/1;edit` is now `/people/1/edit`. We?ve also added the namespace feature to routing resources that makes it really easy to confine things like admin interfaces:
> 
> ```ruby
> map.namespace(:admin) do |admin|
>   admin.resources :products,
>     :collection => { :inventory => :get },
>     :member => { :duplicate => :post },
>     :has_many => [ :tags, :images, :variants ]
> end
> ```
> 
> Which will give you named routes like inventory\_admin\_products\_url and admin\_product\_tags\_url. To keep track of this named routes proliferation, we?ve added the ?rake routes? task, which will list all the named routes created by routes.rb.
> 
> We?ve also instigated a new convention that all resource-based controllers will be plural by default. This allows a single resource to be mapped in multiple contexts and still refer to the same controller. Example:
> 
> ```ruby
> # /avatars/45 => AvatarsController#show
> map.resources :avatars
> # /people/5/avatar => AvatarsController#show
> map.resources :people, :has_one => :avatar
> ```

- **Action Pack: Multiview**

> Alongside the improvements for resources come improvements for multiview. We already have #respond\_to, but we?ve taken it a step further and made it dig into the templates. We?ve separated the format of the template from its rendering engine. So show.rhtml now becomes show.html.erb, which is the template that?ll be rendered by default for a show action that has declared format.html in its respond\_to. And you can now have something like show.csv.erb, which targets text/csv, but also uses the default ERB renderer.
> 
> So the new format for templates is action.format.renderer. A few examples:
> 
> - show.erb: same show template for all formats
> - index.atom.builder: uses the Builder format, previously known as rxml, to render an index action for the application/atom+xml mime type
> - edit.iphone.haml: uses the custom HAML template engine (not included by default) to render an edit action for the custom Mime::IPHONE format
> 
> Speaking of the iPhone, we?ve made it easier to declare ?fake? types that are only used for internal routing. Like when you want a special HTML interface just for an iPhone.

- **Action Pack: Record identification**

> Piggy-backing off the new drive for resources are a number of simplifications for controller and view methods that deal with URLs. We?ve added a number of conventions for turning model classes into resource routes on the fly. Examples:
> 
> ```ruby
> # person is a Person object, which by convention will
> # be mapped to person_url for lookup
> redirect_to(person)
> link_to(person.name, person)
> form_for(person)
> ```

- **Action Pack: HTTP Loving**

> As you might have gathered, Action Pack in Rails 2.0 is all about getting closer with HTTP and all its glory. Resources, multiple representations, but there?s more. We?ve added a new module to work with HTTP Basic Authentication, which turns out to be a great way to do API authentication over SSL. It?s terribly simple to use. Here?s an example (there are more in ActionController::HttpAuthentication):
> 
> ```ruby
> class PostsController < ApplicationController
>   USER_NAME, PASSWORD = "dhh", "secret"
> 
>   before_filter :authenticate, :except => [ :index ]
> 
>   def index
>     render :text => "Everyone can see me!"
>   end
> 
>   def edit
>     render :text => "I'm only accessible if you know the password"
>   end
> 
> private
>   def authenticate
>     authenticate_or_request_with_http_basic do |user_name, password|
>       user_name == USER_NAME && password == PASSWORD
>     end
>   end
> end
> ```
> 
> We?ve also made it much easier to structure your JavaScript and stylesheet files in logical units without getting clobbered by the HTTP overhead of requesting a bazillion files. Using javascript\_include\_tag(:all, :cache =&gt; true) will turn public/javascripts/.js into a single public/javascripts/all.js file in production, while still keeping the files separate in development, so you can work iteratively without clearing the cache.
> 
> Along the same lines, we?ve added the option to cheat browsers who don?t feel like pipelining requests on their own. If you set ActionController::Base.asset\_host = ?assets%d.example.com?, we?ll automatically distribute your asset calls (like image\_tag) to asset1 through asset4. That allows the browser to open many more connections at a time and increases the perceived speed of your application.

- **Action Pack: Security**

> Making it even easier to create secure applications out of the box is always a pleasure and with Rails 2.0 we?re doing it from a number of fronts. Most importantly, we now ship we a built-in mechanism for dealing with CRSF attacks. By including a special token in all forms and Ajax requests, you can guard from having requests made from outside of your application. All this is turned on by default in new Rails 2.0 applications and you can very easily turn it on in your existing applications using ActionController::Base.protect\_from\_forgery (see ActionController::RequestForgeryProtection for more).
> 
> We?ve also made it easier to deal with XSS attacks while still allowing users to embed HTML in your pages. The old TextHelper#sanitize method has gone from a black list (very hard to keep secure) approach to a white list approach. If you?re already using sanitize, you?ll automatically be granted better protection. You can tweak the tags that are allowed by default with sanitize as well. See TextHelper#sanitize for details.
> 
> Finally, we?ve added support for [HTTP only cookies](https://msdn2.microsoft.com/en-us/library/ms533046.aspx). They are not yet supported by all browsers, but you can use them where they are.

- **Action Pack: Exception handling**

> Lots of common exceptions would do better to be rescued at a shared level rather than per action. This has always been possible by overwriting rescue\_action\_in\_public, but then you had to roll out your own case statement and call super. Bah. So now we have a class level macro called rescue\_from, which you can use to declaratively point certain exceptions to a given action. Example:
> 
> ```ruby
> class PostsController < ApplicationController
>   rescue_from User::NotAuthorized, :with => :deny_access
> 
> protected
>   def deny_access
>     ...
>   end
> end
> ```

- **Action Pack: Cookie store sessions**

> The default session store in Rails 2.0 is now a cookie-based one. That means sessions are no longer stored on the file system or in the database, but kept by the client in a hashed form that can?t be forged. This makes it not only a lot faster than traditional session stores, but also makes it zero maintenance. There?s no cron job needed to clear out the sessions and your server won?t crash because you forgot and suddenly had 500K files in tmp/session.

- **Action Pack: New request profiler**

> Figuring out where your bottlenecks are with real usage can be tough, but we just made it a whole lot easier with the new request profiler that can follow an entire usage script and report on the aggregate findings. You use it like this:
> 
> ```
>  $ cat login_session.rb get_with_redirect '/' say "GET / => #{path}" post_with_redirect '/sessions', :username => 'john', :password => 'doe' say "POST /sessions => #{path}" $ ./script/performance/request -n 10 login_session.rb 
> ```
> 
> And you get a thorough breakdown in HTML and text on where time was spent and you?ll have a good idea on where to look for speeding up the application.

- **Action Pack: Miscellaneous**

> Also of note is AtomFeedHelper, which makes it even simpler to create Atom feeds using an enhanced Builder syntax

- **Active Record: Performance**

> Active Record has seen a gazillion fixes and small tweaks, but it?s somewhat light on big new features. Something new that we have added, though, is a very simple Query Cache, which will recognize similar SQL calls from within the same request and return the cached result. This is especially nice for N+1 situations that might be hard to handle with :include or other mechanisms. We?ve also drastically improved the performance of fixtures, which makes most test suites based on normal fixture use be 50-100% faster.

- **Active Record: Sexy migrations**

> There?s a new alternative format for declaring migrations in a slightly more efficient format. Before you?d write:
> 
> ```ruby
> create_table :people do |t|
>   t.column "account_id", :integer
>   t.column "first_name", :string, :null => false
>   t.column "last_name", :string, :null => false
>   t.column "description", :text
>   t.column "created_at", :datetime
>   t.column "updated_at", :datetime
> end
> ```
> 
> Now you can write:
> 
> ```ruby
> create_table :people do |t|
>   t.integer :account_id
>   t.string :first_name, :last_name, :null => false
>   t.text :description
>   t.timestamps
> end
> ```

- **Active Record: Foxy fixtures**

> Having to relate fixtures through the ids of their primary keys is no fun. That?s been addressed now and you can write fixtures like this:
> 
> ```yaml
> # sellers.yml
> shopify:
>   name: Shopify
> 
> # products.yml
> pimp_cup:
>   seller: shopify
>   name: Pimp cup
> ```
> 
> As you can see, it?s no longer necessary to declare the ids of the fixtures and instead of using seller\_id to refer to the relationship, you just use seller and the name of the fixture.

- **Active Record: XML in, JSON out**

> Active Record has supported serialization to XML for a while. In 2.0 we?ve added deserialization too, so you can say Person.new.from\_xml(?David?) and get what you?d expect. We?ve also added serialization to JSON, which supports the same syntax as XML serialization (including nested associations). Just do person.to\_json and you?re ready to roll.

- **Active Record: Shedding some weight**

> To make Active Record a little leaner and meaner, we?ve removed the acts\_as\_XYZ features and put them into individual plugins on the Rails SVN repository. So say you?re using acts\_as\_list, you just need to do ./script/plugin install acts\_as\_list and everything will move along like nothing ever happened.
> 
> A little more drastic, we?ve also pushed all the commercial database adapters into their own gems. So Rails now only ships with adapters for MySQL, SQLite, and PostgreSQL. These are the databases that we have easy and willing access to test on. But that doesn?t mean the commercial databases are left out in the cold. Rather, they?ve now been set free to have an independent release schedule from the main Rails distribution. And that?s probably a good thing as the commercial databases tend to require a lot more exceptions and hoop jumping on a regular basis to work well.
> 
> The commercial database adapters now live in gems that all follow the same naming convention: activerecord-XYZ-adapter. So if you gem install activerecord-oracle-adapter, you?ll instantly have Oracle available as an adapter choice in all the Rails applications on that machine. You won?t have to change a single line in your applications to take use of it.
> 
> That also means it?ll be easier for new database adapters to gain traction in the Rails world. As long as you package your adapter according to the published conventions, users just have to install the gem and they?re ready to roll.

- **Active Record: with\_scope with a dash of syntactic vinegar**

> ActiveRecord::Base.with\_scope has gone protected to discourage people from misusing it in controllers (especially in filters). Instead, it?s now encouraged that you only use it within the model itself. That?s what it was designed for and where it logically remains a good fit. But of course, this is all about encouraging and discouraging. If you?ve weighed the pros and the cons and still want to use with\_scope outside of the model, you can always call it through .send(:with\_scope).

- **ActionWebService out, ActiveResource in**

> It?ll probably come as no surprise that Rails has picked a side in the SOAP vs REST debate. Unless you absolutely have to use SOAP for integration purposes, we strongly discourage you from doing so. As a naturally extension of that, we?ve pulled ActionWebService from the default bundle. It?s only a gem install actionwebservice away, but it sends an important message none the less.
> 
> At the same time, we?ve pulled the new ActiveResource framework out of beta and into the default bundle. ActiveResource is like ActiveRecord, but for resources. It follows a similar API and is configured to Just Work with Rails applications using the resource-driven approach. For example, a vanilla scaffold will be accessible by ActiveResource.

- **Rails: The debugger is back**

> To tie it all together, we have a stream of improvements for Rails in general. My favorite amongst these is the return of the breakpoint in form of the debugger. It?s a real debugger too, not just an IRB dump. You can step back and forth, list your current position, and much more. It?s all coming from the gracious note of the ruby-debug gem. So you?ll have to install that for the new debugger to work.
> 
> To use the debugger, you just install the gem, put ?debugger? somewhere in your application, and then start the server with?debugger or -u. When the code executes the debugger command, you?ll have it available straight in the terminal running the server. No need for script/breakpointer or anything else. You can use the debugger in your tests too.

- **Rails: Clean up your environment**

> Before Rails 2.0, config/environment.rb files every where would be clogged with all sorts of one-off configuration details. Now you can gather those elements in self-contained files and put them under config/initializers and they?ll automatically be loaded. New Rails 2.0 applications ship with two examples in form of inflections.rb (for your own pluralization rules) and mime\_types.rb (for your own mime types). This should ensure that you need to keep nothing but the default in config/environment.rb.

- **Rails: Easier plugin order**

 <blockquot e="">Now that we?ve yanked out a fair amount of stuff from Rails and into plugins, you might well have other plugins that depend on this functionality. This can require that you load, say, acts\_as\_list before your own acts\_as\_extra\_cool\_list plugin in order for the latter to extend the former.

Before, this required that you named *all* your plugins in config.plugins. Major hassle when all you wanted to say was ?I only care about acts\_as\_list being loaded before everything else?. Now you can do exactly that with config.plugins = \[ :acts\_as\_list, :all \].

**Upgrading**

If you have existing Rails applications and want to upgrade to Rails 2.0, moving first to Rails 1.2.6 is the recommended path. The reason for this is because 1.2.6 includes deprecation warnings and if you application runs on 1.2.6 with no warning, then it should work fine in Rails 2.0.

I was able to upgrade my primary development system with the simple command:

> ```bash
> gem install rails --include-dependencies
> ```

and had a Rails 2.0.1 up and running. I tried later to upgrade a couple other development system but faced a couple errors which I attribute to everyone in the world trying to upgrade at the same time.

**Resources**

Ryan Daigle has a [very good post on his blog Ryan's Scraps](https://ryandaigle.com/articles/2007/12/7/rails-2-0-final-released-summary-of-features) where he has been documenting the changes coming in Rails over the last few months. Ryan also has a nice [PDF you can pick up from Peepcode for only $9](https://peepcode.com/products/rails2-pdf), well worth the 146 or so pages.

Two other resources to get you going on Rails 2.0 is a book from long-time Rails guy Obie Fernandez, his book is [The Rails Way](https://www.amazon.com/Rails-Way-Addison-Wesley-Professional-Ruby/dp/0321445619) and the other is [Advanced Rails Recipes : 72 New Ways to Build Stunning Rails Apps](https://www.pragprog.com/titles/fr_arr) published by the Pragmatic Programmers and written by Mike Clark.

I am looking forward to getting up-to-speed on the latest Rails features. I have a few applications I plan to start upgrading and one I will be starting clean with Rails 2.0.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Ruby on Rails](https://technorati.com/tags/Ruby%20on%20Rails)</div></blockquot>