---
id: 425
title: 'To Rails 3 or Not to Rails 3, That Is The Question'
date: '2010-05-20T11:04:22-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/ruby-on-rails/to-rails-3-or-not-to-rails-3-that-is-the-question/'
permalink: /ruby-on-rails/to-rails-3-or-not-to-rails-3-that-is-the-question/
wp_jd_clig:
    - 'https://cli.gs/eXmhZ'
wp_jd_target:
    - 'https://cli.gs/eXmhZ'
jd_tweet_this:
    - 'yes'
dsq_thread_id:
    - '97516066'
categories:
    - 'Ruby on Rails'
tags:
    - 'ASP.NET MVC'
    - django
    - Ruby
    - 'Ruby on Rails'
    - sinatra
---

The release of the web framework, [Ruby on Rails 3](https://weblog.rubyonrails.org/2010/4/13/rails-3-0-third-beta-release), may lead to some pretty interesting decisions for current Rails developers. The description of Rails 3 from the [Agile Web Development with Rails 4th Edition](https://pragprog.com/titles/rails4/agile-web-development-with-rails-4th-edition) (beta) book from the Pragmatic Programmers web site sums it up pretty well:

> **Rails 3 is a major release**?the changes aren?t just incremental, but structural. So we decided to follow suit. This book isn?t just a mild reworking of the previous edition to make it run with the new Rails. Instead, **it?s a complete refactoring.**

 [Rails 3 introduces many new things](https://guides.rails.info/3_0_release_notes.html), many new conventions.? Version 3 looks more like a new framework, rather than just a version upgrade.? Previously, the amount of effort to move from one Rails version to another was pretty small and unit tests helped reveal problems.? We still rely on our unit tests for this purpose but the effort is not as small. Rails 3 does offer many fantastic new features and the new architecture attempts to fix problems and areas where the current Rails framework falls short, but at what cost??? I have heard people say over and over, moving to Rails 3 is difficult.? Will this prevent migrating projects to Rails 3? [Jeremy McAnally](https://omgbloglol.com/) has written a great ebook titled [Rails 3 Upgrade Handbook](https://railsupgradehandbook.com/) where he outlines the tasks developers will face when moving existing Rails applications from version 3.?? To quote Jeremy from the book about moving applications to Rails 3: > The new features, performance improvements, and API changes aren?t incredibly drastic, but they do present great opportunities (and challenges) to those looking to upgrade existing code to the newest version.

 Jeremy also has a [plugin that became an official Rails plugin](https://omgbloglol.com/post/364624593/rails-upgrade-is-now-an-official-plugin) that helps guide the developer through the upgrade process. I know with certainty there are Rails developers concerned up moving existing code to a new Rails, new conventions.? One of Rails strengths are the convention it employs and as developers we learn the intricacies of our framework the hard way.? Rails 3 will require an education to learn the new conventions. Could this be a point in time where faithful Rails developers move on to a different framework? I doubt devotees won?t, but maybe some. ### Active Server Pages

 Case in point, Microsoft Active Server Pages. I have witnessed and been involved with this before when Microsoft created a web framework named Active Server Pages, referred to ASP.? After a much successful growth of ASP developers, Microsoft decided to create ASP.NET which is their current web framework based on webforms. The problem was that even though the product names were very similar, the truth was they were drastically different.? Developers were faced with: - **No upgrade path** ? code written with what we refer to today as ?Classic ASP? could not moved to ASP.NET.? It required a complete rewrite since the programming model was different than ASP.
- **Big learning curve** ? Classic ASP uses a scripting language where there was a single page with logic in the page, ASP.NET moved to a page with a code-behind page in either C# or VB.NET.? The two are very different and someone versed in Classic ASP had to learn everything from the ground up
 
 Developers were faced with making the jump to ASP.NET or deciding to move on to something else, leaving behind the gripes of Microsoft.? Some moved to PHP, as it resembled ASP more than ASP.NET.? Some moved to legacy ASP project to Rails, the views looked more like ASP than ASP.NET ### Rails

 Up until this point, Rails has been a pretty smooth transition from version to version, even when applications were running older versions of Rails such as 1.2.x and moving to 2.x was pretty straightforward.? I moved many Rails 1.2.6 applications to 2.x and faced little major issues, certainly not a rewrite. This is not the case when moving to Rails 3, there is no smooth upgrade path and users will be forced to rewrite significant parts of their applications. The architecture of Rails has changed in a big way, mostly by [Yehuda Katz](https://yehudakatz.com/) of [Merb](https://www.merbivore.com/) fame.? Rails 3 takes the good from Merb in many ways, as I would expect.? The view from 50,000?, Rails 3 does not closely resemble Rails 2.x as we know it today. ### A Fork in the Road?

 As was the case with Classic ASP, I think developers either bit the bullet and rewrote their applications with pain and learning, stayed put and are still there today or moved to a different web framework, maybe Rails, maybe PHP. I think we are at this point with Ruby on Rails.? Developers are faced with the task of moving to Rails 3 and making that technical leap, not to a new programming language as with ASP.NET, but a new framework.?? Rails 3 is different enough from any previous version that moving existing application will not be a rewrite but a change enough to be a considerable effort.? Rails developers are well versed in how the framework functions, Rails 3 is very different. ### An Opportunity?

 This may be an opportunity for other frameworks to gain some traction.? New developers considering Ruby on Rails 3 have a bigger challenge with the framework, it is not exactly the framework DHH developed only a few years ago. Other frameworks worth considering: - [ASP.NET MVC](https://www.asp.net/mvc/) ? from Microsoft, allows developers to use C# and VB.NET to create scalable web applications pretty easily.? It also has good community support.
- [Django](https://www.djangoproject.com/) ? a Python-based web framework which has many great features and productivity points.? Django has been around for a few years now and gaining a good amount of traction.
- [Sinatra](https://www.sinatrarb.com/) ? a Ruby-based framework with a simple, yet powerful implementation.
 
 I could be wrong here but I think the advantage Rails had with an easy-to-learn framework, great productivity and easy upgrades will be a bit strained in Rails 3. This will surely be a great opportunity for developers well-versed in Rails 3 to start or expand consulting career helping companies with existing Rails code bases upgrading to Rails 3.? I think these folks will be in high demand. ### Conclusion

 So what will happen?? I don?t know. Rails is a great framework but converting a large code base is going to be a challenge and Rails 3 is the future, not the 2.3.x code base. I know I have asked more questions than I have answered.? I hope the powers that be in the Rails leadership understand the concern. **UPDATE:** As comments have pointed out, if this sounds Rails-negative, it is not meant to be.? I see this a call for people with knowledge of Rails 3, bits of experience with upgrading projects of any size to share the knowledge.? Blog about what you did, even the most mundane details and share what you know so jump ship DOES NOT happen.