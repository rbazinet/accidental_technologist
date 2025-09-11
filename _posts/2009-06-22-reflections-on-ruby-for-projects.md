---
id: 365
title: 'Reflections on Ruby for Projects'
date: '2009-06-22T09:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=365'
permalink: /ruby/reflections-on-ruby-for-projects/
dsq_thread_id:
    - '95925276'
categories:
    - Ruby
---

[Martin Fowler recently published an article](http://rethink.unspace.ca/2009/6/12/ruby-at-thoughtworks) recently looking back at projects which ThoughtWorks chose to use Ruby as the programming language.

The article reminded me of path I have traveled, coming from a background in C/C++ but moving to using ASP.NET/C# and [Ruby on Rails](http://rubyonrails.org) for various projects. Running a small software consultancy I don’t always have the opportunity to choose the platform or language to use, the decision is often made by the technology the company has standardized on, which could be Windows or Linux.

Many of Martin’s points ring true in what I have found working on projects in Ruby versus other languages.

It’s often the case that projects we take on have very small teams, sometimes 2-3 developers, sometimes 1. When teams are small it can be hard to feel like huge leaps in progress are being made. The tools and frameworks we use at [Still River Software](http://stillriversoftware.com), often are what makes the difference.

Over the years of creating websites for clients we initially used ASP.NET and C# as our tool of choice because of its broad support and my personal experience. This has changed over the past couple years with us moving projects to Ruby on Rails. As Martin puts it:

> When people are asked about why Ruby should be used on a project, the most common answer is for increased productivity. One early indicator was an assessment of a project that suggested that Ruby would have yielded an order of magnitude improvement in productivity.
> 
> As a result it seemed obvious to survey the project technical leads and ask them about productivity - had ruby increased productivity and if so, by how much. I asked them to compare this to a mainstream (Java or .NET) project done in the most productive way they knew how.
> 
> [![rubyProductivityBar](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ReflectionsonRuby_9AEB/rubyProductivityBar_thumb.jpg "rubyProductivityBar")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ReflectionsonRuby_9AEB/rubyProductivityBar_2.jpg)
> 
> You should take these result with some salt. After all there is no way we can objectively measure software productivity. These are just the subjective, qualitative assessments from the technical lead of each project. (I didn't get a response from all projects.) However they are still suggestive that there's a real productivity boost going on.

The results, on average, were 2X improvements in productivity. As Martin points out these results are subjective and are hardly scientific evidence but the results are interesting all the same.

### Personal Results

The most interesting result to me from Martin’s summation is the productivity of the teams. We all know the arguments of Ruby’s speed and other such topics, I won’t get into those.

We do find development using Ruby and in particular, Ruby on Rails, to be more productive but I won’t try to put the gains into a number. Comparing development using Ruby on Rails vs. ASP.NET some particular aspects stand out in a big way. We can go from idea to prototype in a matter of days using Rails compared to a much longer time using ASP.NET. A complete change in direction is much easier and a lot less wasted effort.

**Decision Making** – the Ruby on Rails (RoR) framework is referred to “opinionated” and for good reason. Many of the decisions that need to be made when using ASP.NET (including ASP.NET MVC) are made for us in RoR. When a new Rails application is created there is almost nothing that has to be decided in order to start creating an application right now. Using ASP.NET, decisions are aplenty, from how the application will be architected to how the database will be accessed (i.e. ADO.NET, LINQ, NHibernate). Using Rails for the most part assumes what the architecture and data store will look like over the life of the application.

This is not a knock on ASP.NET. ASP.NET allows the developers and architects wide open flexibility as to how their applications will be structured. I have spent many meetings discussing how this new ASP.NET application will be organized and structured. Even though I have had a lot of experience in this aspect of system building, it seem the same topics are addressed with every project. These same issues are not talked about using Rails and this saves a considerable amount of time not only in planning but in implementation.

**Plugin and Gem Support** – There is a huge amount of Ruby Gems and Rails Plugins available for just about any aspect of a Rails project that we may need to build, such as authentication or integration with a credit card processing facility. All are open source and most actively developed and supported.

ASP.NET has little support for this, even though the community is growing the ability to easily grab third-party open tools is very limited.

**Deployment** – the deployment story on Rails is pretty much one-sided using [Capistrano](http://www.capify.org/). Capistrano is a great tool to allow developers to create scripts in Ruby to manage all deployment aspects with a simple command. The script takes a bit to create but a wide range of examples are easily available.

Deploying an ASP.NET application has always been painful and way too manual for my taste, maybe I am doing it wrong. If there existed a tool like Capistrano I would have used it.

### Finally

The parts of Rails which make us more productive starts from the decisions made for us to the parts available to us to build our systems. These neatly package components bundle functionality so we can simply drop in place.

This not a Ruby on Rails vs. ASP.NET argument and I don’t want to turn it into one, so please..no comments saying I am wrong and ASP.NET is the only thing that matters. We still have clients using ASP.NET and we enhance their software and support them. They will not be moving to Rails, ever. The point of the little post here was just reflecting on some of the areas we have been more productive with Ruby and why I feel this is the case. Your mileage may vary.

Martin’s article raises some very good and healthy points as it stands today. The conversation may change in 5 years, who knows, but today the story is very clear to us, using Ruby on Rails we can get results to our clients faster. Faster to convey intent, faster to iterate and faster to deploy, all for less money because we are spending less time on things that shouldn’t matter.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:1b9b3f5b-c6e2-4426-9e55-5ee1a6d3a547" style="margin: 0px; padding: 0px; display: inline; float: none;">Technorati Tags: [Ruby](http://technorati.com/tags/Ruby),[Ruby on Rails](http://technorati.com/tags/Ruby+on+Rails),[ThoughtWorks](http://technorati.com/tags/ThoughtWorks)</div>