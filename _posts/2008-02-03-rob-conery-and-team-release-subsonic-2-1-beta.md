---
id: 224
title: 'Rob Conery and team release SubSonic 2.1 Beta'
date: '2008-02-03T23:54:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=224'
permalink: /net/rob-conery-and-team-release-subsonic-2-1-beta/
dsq_thread_id:
    - '95925930'
categories:
    - .NET
---

![subsonicsmall.png](https://rbazinet.files.wordpress.com/2008/02/subsonicsmall.png)

[Ron Conery](https://blog.wekeroad.com/), who recently joined Microsoft has somehow found time to release a new [version of SubSonic](https://blog.wekeroad.com/2008/02/01/subsonic-21-beta-is-up/), 2.1 in beta.

I have been using SubSonic since the 2.0 release and find it is a really nice OR/M tool for .NET applications. It offers some of the things I find particularly attractive in Ruby on Rails, things like Migrations.

The SubSonic 2.1 beta 1 offers so much more:

### A New Query Tool

> We have a new Query tool that lives happily alongside our existing one. Our goal with it was to make it as ?Fluent? and ?SQL-y? as possible. I wrote a post on how it works here, and updated that post here. Please refer to that until can crack out the docs which, yes now that this is my job, I will be spending a good amount of time on.
> 
> Northwind.CustomerCollection customersByCategory = new Select()  
> .From()  
> .InnerJoin()  
> .InnerJoin(Northwind.OrderDetail.OrderIDColumn, Northwind.Order.OrderIDColumn)  
> .InnerJoin(Northwind.Product.ProductIDColumn, Northwind.OrderDetail.ProductIDColumn)  
> .Where(?CategoryID?).IsEqualTo(5)  
> .ExecuteAsCollection();

### SubStage

> Eric and his secret little project are ready to see the light of day. I?m not sure how to categorize this thing, other than to say it?s a SubSonic Geek?s Best Friend. It?s part IDE, part Help Resource, Part Config tool, part Validator. Eric?s working up a screencast on it now (link to follow) and here are the highlights:
> 
> \* Load your Web(or App).config and it will load your Database up, with settings  
> \* Work with a GUI when setting your provider bits. Not sure what to use with that naming problem? SubStage will help.  
> \* Validate your DB according our conventions, and see when you have problems right up front. Eric?s built in a complete validation system so if you don?t have a Primary Key on a table, you know it up front.  
> \* View your object?s by Table or Class view. All of your naming and provider settings will be viewable when using our Class View - this way you?ll know your API before it?s generated.  
> \* Generate your DAL using SubStage. Once you have everything set just so, generate the files then drag them from the SubStage Explorer window right into your project  
> \* Work with your data. Eric build a frickin web server into SubStage, and wraps an AutoScaffold around your database so you can, literally, work with your data using our scaffold right there.  
> \* Help? lots of Help. Access our API reference and Forums online, right through SubStage - we?re trying to make this easy for you? can you tell?

These features are great additions to what is already a great set of tools. I plan to post about a project I am working on using the ASP.NET MVC Framework with SubSonic handling my models. This project should be a great jump-off point for readers wanting to get into the Microsoft ASP.NET MVC Framework and not sure what to do about the back end.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [SubSonic](https://technorati.com/tags/SubSonic)</div>