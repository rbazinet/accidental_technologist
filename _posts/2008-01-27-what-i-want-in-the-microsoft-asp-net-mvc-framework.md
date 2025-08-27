---
id: 221
title: 'What I want in the Microsoft ASP.NET MVC Framework'
date: '2008-01-27T16:11:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=221'
permalink: /asp-net-mvc/what-i-want-in-the-microsoft-asp-net-mvc-framework/
dsq_thread_id:
    - '95924627'
categories:
    - 'ASP.NET MVC'
---

[![505585_96069773](http://rbazinet.files.wordpress.com/2008/01/505585-96069773-thumb.jpg)](http://rbazinet.files.wordpress.com/2008/01/505585-96069773.jpg)Rob Conery's recent post, [Ramble: ASP.NET MVC Is A Geek Chisel](http://blog.wekeroad.com/2008/01/25/ramble-aspnet-mvc-is-a-geek-chisel/) started me thinking again about the Microsoft ASP.NET MVC Framework. I develop software targeting the .NET framework as well as Ruby web applications using Ruby on Rails. The .NET applications I manage have clients ranging from small shops to enterprise-wide complex pieces of software. When I have a choice, I choose [Ruby on Rails](http://www.rubyonrails.org). Why? Because it is so much simpler to turn out software fast.

I have not given much thought to the MVC Framework lately after watching Scott Hanselman's screencast on its usage. No offense to Scott but the video left a really bad taste in my mouth. I saw too much of the overly cumbersome things ASP.NET developers have to go through to make things line up. Sure, you can drop a few controls on a page, hook up a database and wire-up your data bound controls, but that is not a realistic approach.

As most developers know, Microsoft has [released an early CTP](http://www.asp.net/downloads/3.5-extensions/) of the Microsoft ASP.NET MVC Framework which implements the Model-View-Controller pattern, the same pattern implemented by Ruby on Rails.

Rob's post can be summed up here:

> **Chiseling a Digital David** While I was in Redmond last week I discussed this very thing (?the story? behind MVC and why it?s appealing) close to 12 times. I kept struggling with analogies and I think I found one that works for me. It might not work for you - but I?m sincerely interested to hear what you have to say in this arena. Believe me - it?s important!
> 
> As a developer you build things- just like any contractor building a house, or artist creating a work of art. Often times artists will choose not to use tools that save them time, preferring to build something that they can (literally) work with their hands so they can ?feel the art inside the medium?.
> 
> In the same way that [Big Z showed Cody how to shape a board](http://www.imdb.com/title/tt0423294/) (?looong, easy strokes?) - many people just want the machinery to get out of their way when building a web site so they can create their HTML how THEY want to, and use JavaScript and form tags as they see fit.
> 
> Some people see this as tedious, repetitive work - others see the process as creationary and artistic. I think they?re both right and I love how ASP, now, supports both.
> 
> I was in the conversation Scott referenced in his post about implementing a Repeater in MVC:
> 
> *We need to come up with a Repeater control for folks using MVC?*

> *We have a Repeater - it?s called a For Loop*
> 
> I want to share who said that line but I?ll keep it close to my chest since it was said behind a closed door ;).

> What Do You Think?  
> Part of my gig with Microsoft is soliciting as much community feedback as I can. I tend to believe that ASP.NET MVC allows for much more ?hands-on? type of development with extreme control over your UI (HTML/JavaScript) that allows you to create some really cool work.
> 
> Do you agree with this? If not - what?s the appeal for you? Does it frustrate you to have so many choices and if so - how can we help to provide some guidance?

I would like the ASP.NET MVC Framework to provide the ease of application creation just like Ruby on Rails. I use Ruby on Rails often and the framework makes the life of the developer so much easier. The key requirements for me are:

- One of the most important aspects of Ruby on Rails to me is it's ability to create web applications fast. Prototyping is necessary to help aid clients or even other developers understand the interpretation of the business requirements. It is much better to find out up-front the ideas are wrong before spending too much time coding. Today this is difficult using ASP.NET WebForms.
- SubSonic is great tool, integrate it in the framework but make the integration and usage dead easy. Rails usage of ActiveRecord is very simple and is not something developers have to pay much attention to. Creating Migrations, running them and then having the frame "just know" about them is great.
- Let me write my migrations and configuration files in my language of choice, C#, VB.NET or whatever.
- Give developers drop-dead-simple to powerful features like Scaffolding which makes creating back-end data management applications almost instantaneous and take the pain of this necessary evil.
- Give me a default configuration so I just start pumping out new models, controllers, scaffolding or what ever I might need. Command line or a right-click in Visual Studio's Solution Explorer.
- Make all view engines first-class citizens, easy integration and usage.
- Make all back-end ORM toolkits first-class citizens; if SubSonic, NHibernate or some other ORM, make it just work with extensive configuration.

Powerful frameworks without a simple and default implementation lead to slow adoption. It has taken most developers many years of dedicated development to pick up ASP.NET Web Forms and consider themselves experts on using it. These developers won't jump ship and just start using the MVC Framework if this framework has the complexities of web forms. Ruby on Rails gives developers a default implementation, makes decisions for them so they can use the framework immediately out-of-the-box but provides great depth so it can be overridden and harness the great power of the underlying framework. The key here is the canned or out-of-the-box implementation used as a catalyst to allow developers to create prototypes very quickly.

So, if Microsoft is looking for a story for the MVC Framework, make it drop-dead easy to create web applications. Don't make me work any harder than I do to create a Ruby on Rails applications and give me all the same tools the Rails team gives its developers. I don't really think I need to be pointing this out, it should be as obvious to other developers as it is to me. I guess maybe not if you never used Rails before.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [ASP.NET](http://technorati.com/tags/ASP.NET), [MVC Framework](http://technorati.com/tags/MVC%20Framework), [Microsoft](http://technorati.com/tags/Microsoft)</div>