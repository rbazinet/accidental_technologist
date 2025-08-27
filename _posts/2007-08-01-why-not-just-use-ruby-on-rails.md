---
id: 127
title: 'Why not just use Ruby on Rails?'
date: '2007-08-01T22:53:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=127'
permalink: /ruby-on-rails/why-not-just-use-ruby-on-rails/
dsq_thread_id:
    - '95924317'
categories:
    - 'Ruby on Rails'
---

I have been following a couple projects lately who attempt to make .NET look and act more like Ruby on Rails. The first one is the [Castle Project](http://www.castleproject.org) who have their implementation of [ActiveRecord](http://www.castleproject.org/activerecord/index.html) and a Rails-like MVC (model view controller) web framework [MonoRail](http://www.castleproject.org/monorail/index.html).

Another project is [SubSonic](http://subsonicproject.com/) which is basically a utility that generates a Data Access Layer for your project and turns your database tables into entities in code. SubSonic was inspired by Ruby on Rails and the creator is trying to apply some MVC principles to it.

There is an ongoing debate between both of these camps as to why MonoRail is the purest ASP.NET MVC framework and why the SubSonic implmentation is not, Ayende makes some great points [here](http://ayende.com/Blog/archive/2007/08/01/SonicCast-3--It-is-not-MVC.aspx). Make sure to read the comments as Rob Conery, the SubSonic creator has good follow-up.

I created a test web application using MonoRail and this implementation is as close to Rails in .NET that I have seen. It takes advantage of handlers and makes the controller be the central point of control in a .NET web application unlike ASP.NET WebForms, where the view is the obvious controller.

SubSonic does a good job but I don't think it's fair to say they are even close to implementing an MVC pattern, data broker yes but not MVC. This is OK, nothing wrong with the implementation. I have done a couple small projects with SubSonic and it works very well.

[Jeffrey Palermo talks about Microsoft creating an MVC framework for ASP.NET](http://codebetter.com/blogs/jeffrey.palermo/archive/2007/03/16/Big-News-_2D00_-MVC-framework-for-ASP.NET-in-the-works-_2D00_-level-300.aspx). I was surprised to see this but I guess Microsoft wants in on the Rails goodness too.

So with all of these people trying to "cash-in" on Rails and all that is good, why not just use Rails? Why try to take an architecture, ASP.NET WebForms, and make it something it is not? The square peg in the round hole idea comes to mind. Using a tool that is right for the job makes the most sense. Sure, MonoRail comes close but it is not Rails, it is not as clean an MVC implementation as Rails from a developer stand point. Why not use Rails when it's the right tool?

##### What about IronRuby?

Since hearing about Microsoft's [IronRuby](http://www.iunknown.com/2007/07/a-first-look-at.html) project and bringing a supported implementation of Ruby on the CLR I can only imagine the possibilities. Once the implementation is Ruby 1.8.x feature-complete it will only be a matter of time when Rails is running on IronRuby, this will be a good day for the MVC fans indeed. This will be the day it all comes together for Ruby and C# or whatever your favorite CLR language is, to be writing code it it will all just play nicely together. I think the most important aspect to Microsoft's success with Ruby will be keeping pure and focusing on the core Ruby path and not adding the Microsoft-esque features probably desirable by the internal language group. While [Jon Lam](http://www.iunknown.com/) is driving the product I think they will be good.

Martin Fowler has an interesting post about [Ruby Microsoft](http://martinfowler.com/bliki/RubyMicrosoft.html) as does [Ola Bini](http://ola-bini.blogspot.com/2007/06/there-can-be-only-one-tale-about-ruby.html) and [Charles Nutter](http://headius.blogspot.com/2007/06/response-to-olas-ironruby-post.html) (Mr. JRuby).

I don't talk about [JRuby](http://jruby.codehaus.org/) as I am not a Java guy and don't spend any time writing Java code. My feeling is that JRuby was really validated once Rails ran on it. Since Rails is the Ruby "killer app", it stands to reason that once you can run Rails you have arrived. This will be the arriving point for IronRuby, running Rails.

I don't know if we will ever see a truly embraced MVC implementation on the CLR if it is not Rails or some future Rails-derived-cousin. Some people think Microsoft won't let Rails be successful on the CLR, which is pure garbage. When all is said and done, Microsoft wants to sell server licenses and if they do it because of ASP.NET WebForms or Rails on the CLR, it doesn't matter to them and frankly, shouldn't matter to the developer. Again, pick the right tool for the job on a platform you can support.

Rails will run on the CLR one way or another, either from Microsoft or another open source project. It is just a matter of time.

<div class="wlWriterSmartContent" style="display:inline;float:none;margin:0;padding:0;">Technorati Tags: [Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails), [.NET](http://technorati.com/tags/.NET), [Castle Project](http://technorati.com/tags/Castle%20Project), [IronRuby](http://technorati.com/tags/IronRuby), [JRuby](http://technorati.com/tags/JRuby)</div>