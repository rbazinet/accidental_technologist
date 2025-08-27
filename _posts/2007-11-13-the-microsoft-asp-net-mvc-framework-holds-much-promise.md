---
id: 166
title: 'The Microsoft ASP.NET MVC Framework Holds Much Promise'
date: '2007-11-13T17:31:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=166'
permalink: /asp-net-mvc/the-microsoft-asp-net-mvc-framework-holds-much-promise/
dsq_thread_id:
    - '95925621'
categories:
    - 'ASP.NET MVC'
---

I have been an ASP.NET developer for a few years now and have used it successfully on many projects. I never really liked Webforms from the perspective of good architecture with separation of concerns but it has been the generally accepted way to develop web application with ASP.NET. Yes, I know about [MonoRail](http://www.castleproject.org/monorail/index.html) now but it wasn't a technology I was aware of back in the ASP.NET 1.0 days.

Much of my work on projects these days is from an architecture and technical lead role so I get to work with new technologies to see how they may best-fit into an application or environment. I discovered [Ruby on Rails](http://www.rubyonrails.org) about a year and half ago and was really awed by [MVC pattern](http://en.wikipedia.org/wiki/Model-view-controller) usage in the framework. The MVC framework was not developed by [37Signals](http://www.37signals.com) but they surely made it popular in today's web development arena.

[![ModelViewControllerDiagram](http://rbazinet.files.wordpress.com/2007/11/modelviewcontrollerdiagram-thumb.png)](http://rbazinet.files.wordpress.com/2007/11/modelviewcontrollerdiagram.png)

Today I write applications both in Ruby on Rails and ASP.NET C#, both have their strengths and weaknesses. The single greatest feature from an architecture perspective, in my opinion, is the implementation of the MVC. The greatest news I have heard coming from Redmond was the addition of an ASP.NET framework for MVC coming after Visual Studio 2008 is released.

##### First Look

The first opportunity I had to see the new ASP.NET MVC Framework was the presentation at [ALT.NET by Scott Guthrie](http://www.hanselman.com/blog/ScottGuMVCPresentationAndScottHaScreencastFromALTNETConference.aspx). It seemed like Scott and his team had done their homework and produced something we could work with.

Scott Guthrie gives a [very nice write-up](http://weblogs.asp.net/scottgu/archive/2007/10/14/asp-net-mvc-framework.aspx) on his blog on what we can expect in this new framework. He says all the right things here:

- Separation of concerns
- [Test-Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (TDD)
- Highly Extensible and Pluggable
- URL Mapping to SEO and REST-friendly naming

These are things that make Rails very powerful and some of the things I really love about Rails.

It makes one wonder what we might be giving up, the ASP.NET MVC Framework is going to allow ASP.NET to keep the things that make using the rich framework pleasant. The ASP.NET MVC Framework supports:

- ASP.NET .ASPX and .ASCX and .Master as "View" templates.
- Forms/windows authentication, URL authorization, membership/roles, output and data caching, session/profile state management, health monitoring, configuration system and the provider architecture.
- We lose the post-back model (yah), actions are routed to a controller instead.

##### Best of Both Worlds

The ASP.NET MVC Framework is still some time off but the information released so far should make it easier for developers such as myself who write Rails applications but also write ASP.NET applications. As an architect I can use my favorite web design pattern and use it on two platforms, giving me choice.

It will be easier becoming an expert on a pattern such as MVC and apply it to both Rails and now...ASP.NET. This will be very good.

Mads Kristensen had an interesting post about the [Dangers of the ASP.NET MVC Framework](http://blog.madskristensen.dk/post/Dangers-of-the-new-ASPNET-MVC-framework.aspx). Mads states the introduction of the MVC Framework could divide the development community in a negative way. I agree the community may split a bit but I don't think it will be a bad thing as those entrenched in ASP.NET Webforms will continue to use them. I will continue to use them for existing applications already running on a code base committed to Webforms. There will be people who move to MVC either because they have used Rails or MonoRail and want to give it a try or are curious about the whole hoopla about MVC. Webforms has a solid base and will be improved and supported, Microsoft just sees an opportunity here and is taking advantage of it for the better of ASP.NET.

##### The Result

So who knows where this journey will take us but I know Microsoft is not stupid and they follow what is popular and working well. I think Rails and Monorail had great influence in creating this framework.

The framework is getting closer to being released as a CTP, as evidenced by [Scott Guthrie's great example on creating a website using the framework](http://weblogs.asp.net/scottgu/archive/2007/11/13/asp-net-mvc-framework-part-1.aspx), part 1 of many. I don't know how he finds time to produce such great content but he does.

My hope is being able to have one architecture (MVC) but have two frameworks, Rails and ASP.NET MVC to chose from to solve my client problems. I think Microsoft has taken the right approach and my hopes will be realized.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Microsoft](http://technorati.com/tags/Microsoft), [MVC](http://technorati.com/tags/MVC), [ASP.NET](http://technorati.com/tags/ASP.NET)</div>