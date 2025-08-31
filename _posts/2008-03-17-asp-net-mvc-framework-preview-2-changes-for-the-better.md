---
id: 250
title: 'ASP.NET MVC Framework Preview 2 - Changes for the Better'
date: '2008-03-17T14:50:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=250'
permalink: /asp-net-mvc/asp-net-mvc-framework-preview-2-changes-for-the-better/
categories:
    - 'ASP.NET MVC'
---

The team providing us with the [ASP.NET MVC Framework made available the 2nd preview release](http://www.microsoft.com/downloads/details.aspx?FamilyId=38CC4CF1-773A-47E1-8125-BA3369BF54A3&displaylang=en) during the [MIX08 Conference March 5-7, 2008](http://visitmix.com/2008/default.aspx) in Las Vegas, NV. This release has many great changes as they team works toward an RTM maybe later in the year, but no promises were made.

I just wanted to point out some of the bigger changes in the Preview 2 release.

### The ASP.NET MVC Framework can be deployed in the \\bin directory of an app and work in partial trust

One of the pain-points in the current CTP of the ASP.NET MVC Framework is the framework is installed with a setup program to register it in the Global Assembly Cache (GAC), this is fine for local installations on development machines but not good when need to deploy to other systems. Microsoft is fixing this:

> Starting with this upcoming preview release we will enable applications to instead directly reference the System.Web.Mvc.dll assembly from the application's \\bin directory. This means that no setup programs need to be run on a sever to use the ASP.NET MVC Framework - you can instead just copy your application onto a remote ASP.NET server and have it run (no registration or extra configuration steps required).

Requiring System.Web.Mvc.dll to be in the GAC also made it unlikely to be able to use the MVC framework with shared hosting providers, the new CTP will also fix this potential problem as well:

> We are also doing work to enable the ASP.NET MVC framework to run in "partial/medium trust" hosting scenarios. This will enable you to use it with low-cost shared hosting accounts - without requiring the hosting provider to-do anything to enable it (just FTP your application up and and it will be good to run - they don't need to install anything).

It's unlikely anyone would have faced these issues yet, since the MVC is so new, but good to know it was thought out in advance.

### Significantly enhanced routing features and infrastructure

URL routing is one of the most powerful features of the MVC framework, letting developers have infinite control over the structure of the URL's in their applications.

> This upcoming ASP.NET MVC preview release contains even more URL routing features and enhancements. You can now use named routes (enabling explicit referencing of route rules), use flexible routing wildcard rules (enabling custom CMS based urls), and derive and declare custom route rules (enabling scenarios like REST resources mappings, etc).
> 
> We have also factored out the URL routing infrastructure from the rest of the MVC framework with this preview, which enables us to use it for other non-MVC features in ASP.NET (including ASP.NET Dynamic Data and ASP.NET Web Forms).

### Improved VS 2008 Tool Support

The initial release of the MVC framework shipped with some useful but simple templates for web projects but improvements are coming:

> This upcoming ASP.NET MVC preview release will ship with improved VS 2008 integration. This includes better project item templates, automatic project default settings, etc. We are also adding a built-in "Test Framework" wizard that will automatically run when you create a new ASP.NET MVC Project via the File-&gt;New Project dialog. This will enable you to easily name and wire-up a unit test project for your ASP.NET MVC application.

The Test Framework wizard will allow the developer to choose from a list of available unit testing frameworks but is pluggable to allow for additional testing frameworks to be added.

### \[ControllerAction\] Attribute No Longer Required on Controller Action Methods

The first MVC framework required developers to use the \[ControllerAction\] attribute to distinguish action methods on a controller in order for it to be callable from an application. Due to developer feedback the new release will do away with this requirement and make all public methods defined on a controller to be action methods and therefore callable.

There will be attributes available to use to make a public method a non-action method.

### New Filter Attribute Support for Controllers and Action Methods

A new feature being added to the release are Filter Attributes. Basically, these attributes are actions a developer may want to execute either before or after a controller or its action executes.

> These enable you to inject code interceptors into the request of a MVC controller that can execute before and after a Controller or its Action methods execute. This capability enables some nice encapsulation scenarios where you can package-up and re-use functionality in a clean declarative way.

### HTML Helpers Built-in

Helper methods were limited in the first release of the framework, where a separate download was made available which included a bunch of HTML helper methods. The new release will have all of the optional helper methods built-in. Future framework updates will include ASP.NET AJAX support:

> Next month we are also going to start to talk about some of the new enhancements to the client-side ASP.NET AJAX libraries we are making, as well as some of the AJAX helper methods we will build to enable it to easily integrate with ASP.NET MVC.

These were the HTML helper methods developed by [Rob Conery](http://blog.wekeroad.com/2007/12/05/aspnet-mvc-preview-using-the-mvc-ui-helpers/).

### Lots of Refactoring and Design Improvements

As with any public CTP of a product, the idea is to iterate and evolve the product into something people will use. The team is making design improvements to the existing code base to allow for better extensibility.

> In general the team has followed a philosophy where for all features you have three options:
> 
> 1. Use the built-in features/implementations "as-is" out of the box
> 2. Slightly customize the built-in features/implementations without having to write much code
> 3. Completely swap out the built-in features/implementations for custom ones
> 
> For example: you can now override the ViewEngine locator logic without having to override the ViewEngine execution logic (and vice-versa) - or alternatively swap out ViewEngines entirely. The Controller Factory support has been extended to make it even easier to integrated with dependency injection frameworks. Route rules are now fully extensible. Controllers are more easily testable, etc.

This type of flexibility gives developers choices, not forcing them into doing things a certain way which can help improve the ability for developers to more quickly adopt the framework.

### Downloadable ASP.NET MVC Framework Source that can be Built and Patched

Following the lead of downloadable .NET Framework source code, the team will be making the source code for the MVC framework available with the same methods.

> Starting with this next preview, we are also going to make the ASP.NET MVC Framework source code downloadable as a buildable VS project solution. This will enable you to easily view and debug the ASP.NET MVC Framework source code. We are also going to include a license that permits you to optionally make patches to the ASP.NET MVC Framework source code in the event that you run into a bug in an application you are developing with it.
> 
> The license won't enable you to redistribute your patched version of ASP.NET MVC (we want to avoid having multiple incompatible ASP.NET MVC versions floating around and colliding with each other). But it will enable developers who want to get started building ASP.NET MVC applications immediately to make progress - and not have to w orry about getting blocked by an interim bug that they can't work around.

### Screencasts Showing-off Features

[Scott Hanselman](http://www.computerzen.com/) has put out some great screencasts to show off how the ASP.NET MVC works in its current iteration. At the time I write this there are 4 screencasts available showing increased complexity while working on the same sample code base.

- **[Part 1 - Displaying Data](http://asp.net/learn/3.5-extensions-videos/video-269.aspx)**
- **[Part 2 - Editing Data and Making Forms](http://asp.net/learn/3.5-extensions-videos/video-268.aspx)**
- **[Part 3 - Advanced Techniques](http://asp.net/learn/3.5-extensions-videos/video-270.aspx)**
- **[Part 4 - Testing](http://asp.net/learn/3.5-extensions-videos/video-271.aspx)**

Also available is Scott's session at MIX08

[Developing ASP.NET Applications Using the Model View Controller Pattern](http://visitmix.com/blogs/2008Sessions/T22/)

I have taken the time to work with this Preview 2 of the ASP.NET MVC Framework and developed some simple applications, which worked wonderful. My experience with Ruby on Rails really helps in understanding this framework. Comparing the first CTP to this one is really a night and day difference, in my opinion. I am looking forward to future releases and building real applications this way on .NET.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Microsoft](http://technorati.com/tags/Microsoft),[ASP.NET MVC Framework](http://technorati.com/tags/ASP.NET%20MVC%20Framework)</div>