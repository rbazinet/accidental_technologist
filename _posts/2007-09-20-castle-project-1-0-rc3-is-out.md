---
id: 147
title: 'Castle Project 1.0 RC3 is out'
date: '2007-09-20T22:04:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=147'
permalink: /software-architecture/castle-project-1-0-rc3-is-out/
categories:
    - 'Software Architecture'
---

[The Castle Project](http://castleproject.org/) has finally released its [version 1.0 RC3 today](http://castleproject.org/castle/download.html). It has been a long time coming but not for lack of work. I am on the development discussion list and there is a lot of activity, much work has gone into this release.

Details on the release from the blog of the Castle Project founder:

> **ActiveRecord**
> 
> - Multiple db support without the need to extend ARBase
> - Refactored validation support to use the new Castle Validation
> - InPlaceConfigurationSource.Build() which is handy!
> - Added HqlNamedQuery
> - Lots of bug fixes
> 
> **DynamicProxy**
> 
> The RC3 is the first to include DynamicProxy 2 which has support for generics and is much much faster than version 1
> 
> **MicroKernel/Windsor**
> 
> - Support for generic collections
> - Changed to use DynamicProxy 2
> - Added some sugar to IKernel and IWindsorContainer add/resolve methods
> - Child container support was improved, but still need some review - you?ve been warned
> - Added a simplistic eval support, you can do &lt;?eval $BaseDirectory ?&gt; on your config
> - Both DefaultKernel and WindsorContainer now implement IServiceProvider
> 
> **MonoRail**
> 
> - Added Cache support (see the new Cache attribute)
> - Added IsPost/IsGet/IsPut/IsHead to Controller
> - Added Auto Form Validation
> - FormHelper is nearly perfection, still missing support for selects with multiple enabled
> - Support to register several view engines at once (bye composite view engine) - this is not as good as I?d like it to be. There?s no co-op among them..
> - Added handful of view components
> - Added support to test controllers, viewcomponents, wizard steps without the need to bring the ASP.Net to the table
> - Added JS generation support, and UpdatePage/UpdatePageTag view components
> - Format support on set operations, for example $Form.Select(?price?, \[1..100\], ?%{textformat=?C'}?) is going to render the select elements with currency format
> - Added PaginationHelper.CreateCustomPage which is the most optimized way to deal with pagination
> - Added DiggStylePagination ViewComponent, based on Alex Henderson work
> - Added the following members to SmartDispatcherController (validation related) ValidationSummaryPerInstance : IDictionary, GetErrorSummary(object instance) : ErrorSummary, HasValidationError(object instance) : bool
> - Added ViewComponentDetails attribute (just like ControllerDetails)
> - Added ViewComponentParam attribute which tells MonoRail to bind the arguments as properties on your view component - reducing repetitive code rules
> - Added UrlHelper/UrlBuilder concept
> 
> **Aspect#**
> 
> Is out?
> 
> **Components**
> 
> - Added Castle.Validator
> - Added Castle.DictionaryAdapter - still puzzled by this one
> - Improved Binder (another re-write of its implementation)
> 
> **Other**
> 
> - Created the using.castleproject.org
> - Created the api.castleproject.org
> - Initial integration between the Castle.Services.Transaction with MS? System.Transactions
> - Created Castle.Core
> 
> Well, basically that was it. We?ve been busy.

For those who don't know what the Castle Project is, it is a set of libraries for implementing a [Model-View-Controller](http://en.wikipedia.org/wiki/Model-view-controller) (MVC) framework in .NET. The key piece for this is [MonoRail](http://castleproject.org/monorail/index.html) with [ActiveRecord](http://castleproject.org/activerecord/index.html) handling the models. Most of the time we hear about Ruby on Rails and its MVC implementation but Castle does this on .NET.

[I did an interview](http://www.infoq.com/news/2007/09/castleproject) with [Hamilton Verissimo](http://hammett.castleproject.org/), founder of the Castle Project, for [InfoQ](http://www.infoq.com) last week. Hamilton is a sharp guy and has lead the core team to produce a great open-source project. I am working on a project using MonoRail and it is very nice to produce a web application this way.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Castle Project](http://technorati.com/tags/Castle%20Project), [.NET](http://technorati.com/tags/.NET), [MVC](http://technorati.com/tags/MVC)</div>