---
id: 387
title: 'Mindscape LightSpeed an O/R Mapper Done Right'
date: '2009-11-23T09:00:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=387'
permalink: /programming/mindscape-lightspeed-an-or-mapper-done-right/
dsq_thread_id:
    - '95925458'
categories:
    - Programming
---

Anyone who reads this blog knows I work with quite a bit of different technologies, some I love and some I just tolerate. One of the technologies I love is Ruby on Rails, for many different reasons, but one huge reason is the way it allows the developer to interface with a database. When I create a Ruby on Rails application with even a single migration, I have access to my database tables as objects in my application with very little work.

Now transition to the life of a .NET developer. Someone given the task of creating a database application with the job of simply adding, updating and deleting records from a database is faced with many choices with very few offering the elegance of a tool like Ruby on Rails.

I was hired recently to create a new web application which required it to be written in ASPNET with C#. This gave me the opportunity to look at all the key aspects of the application and the first to get stuck in my mind was data access. Which tool to use on .NET?

I write both Ruby on Rails and ASP.NET applications and transitioning between the two is often difficult when faced with the plethora of ways to access data in .NET, most seem to be more complicated than necessary.

## Microsoft Data Access

Technologies created by Microsoft only seem to make it to market if they are complicated and cumbersome to use, these include:

**ADO.NET** – Using stored procedures for example.

**LINQ to SQL** – In my opinion, a real clumsy attempt to give a way to access almost anything by a query language implemented in C# or VB.NET. You can see by example that no one should have to write these things all day:

> ```
> 
> var q =
> from c in db.Customers
> where c.City == "London"
> select c;
> foreach (Customer c in q)
> Console.WriteLine(c.CompanyName);
> ```

**Entity Framework** – Oh please. I have only given this technology a cursory look and just have to shake my head in disbelief that Microsoft would create such a mess of complexity, but they do complexity best.

## Non-Microsoft Data Access

There is hope though for developers wanting something better. Technologies like [SubSonic](http://subsonicproject.com/) and [NHibernate](https://www.hibernate.org/343.html) offer very different solutions to Microsoft’s vision of how data access should be done. Both of these are open source projects and have their strengths and weaknesses, and both have their own learning curve. I have spent some time with SubSonic and it is good product with active development. I can’t say I have done very much beyond the experimentation stage with NHibernate but I know many folks who love it.

I had been a bit oblivious to work being done with data access and object relational mapping (ORM) in the .NET space. I came across one tool from [Mindscape](http://www.mindscape.co.nz/), a New Zealand based company, with an ORM tool called [LightSpeed](http://www.mindscape.co.nz/products/LightSpeed/default.aspx). I was a little reluctant because of my assumed learning curve and could not have been more wrong. This is a commercial product but Mindscape offers a free version that is full-powered but only allows for up to 8 database tables, which would be fine for smaller projects or to try it out.

After speaking with some other developers who have been using LightSpeed I decided it was the right tool for the job.

## LightSpeed in Action

The project I had in mind was indeed a new project but I inherited an existing SQL Server 2005 database full of tables. This application will consume many of the existing tables read-only but we create new tables to store our application-specific data.

This is not a tutorial on how to use LightSpeed but how I am using the tool. I am sure there are many ways to configure the tool to use the data most efficiently. I am sure the purists will complain about doing model-driven design, but I don’t care. I was looking for a tool to get up and running with the least effort, we will tweak later.

LightSpeed comes with a [really nice designer](http://www.mindscape.co.nz/products/lightspeed/features/designer.aspx) which allowed me to pick and choose various tables I wanted to use in my application. Notice how the designer picks up the existing relationships from the database:

[![LightSpeedDiagram](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingMindscapeLightSpeed_E9F3/LightSpeedDiagram_thumb.png "LightSpeedDiagram")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingMindscapeLightSpeed_E9F3/LightSpeedDiagram_2.png)

Once the designer is saved it quickly creates some very clean C# to represent the schema in code. A few entries in the web.config and everything is ready to write some code. Mindscape has a nice [Getting Started screencast](http://www.mindscape.co.nz/products/lightspeed/screencasts/gettingstarted.aspx) which shows how easy it is to go from zero to code. The screencast is just over 11 minutes long and is enough to get up and running.

### Setup Code

A bit of setup code in my application gives us access to our database and a place for our objects to interact with:

<style type="text/css">
.cf { font-family: consolas; font-size: 8pt; color: white; background: black; font-weight: bold; }
.cl { margin: 0px; }
.cb1 { color: #cc7832; }
.cb2 { color: #ffc66d; }
.cb3 { font-weight: normal; }
.cb4 { color: #a5c25c; }</style>

<div class="cf"> <span class="cb1">private</span> <span class="cb2">LightSpeedContext</span><span class="cb3">&lt;</span><span class="cb2">UnitOfWork</span><span class="cb3">&gt; \_context;</span>

 <span class="cb1">public</span> <span class="cb2">LightSpeedContext</span><span class="cb3">&lt;</span><span class="cb2">UnitOfWork</span><span class="cb3">&gt; Context</span>

 {

 <span class="cb1">get</span>

 {

 <span class="cb1">if</span> (\_context == <span class="cb1">null</span>)

 {

 \_context = <span class="cb1">new</span> <span class="cb2">LightSpeedContext</span><span class="cb3">&lt;</span><span class="cb2">UnitOfWork</span><span class="cb3">&gt;</span>

 {

 ConnectionString =

 <span class="cb4">"Data Source=.;Initial Catalog=terminal\_link;User Id=dbuser;Password=xxxx;"</span>,

 PluralizeTableNames = <span class="cb2">LightSpeedContext</span><span class="cb3">.Default.PluralizeTableNames,</span>

 IdentityMethod = <span class="cb2">LightSpeedContext</span><span class="cb3">.Default.IdentityMethod</span>

 };

 }

 <span class="cb1">return</span> \_context;

 }

 }

</div>Once we have a Context property setup this will be the basis for all database access. Notice it is created only once.

### Retrieving Entities

All the code is very simple but does a lot. We need an entity here for a certain ID and we are using the LightSpeed method of query, you could just as easily use LINQ queries. I choose to stay away from them and use the cleaner method of retrieving an entity object.

<div class="cf"> <span class="cb1">public</span> <span class="cb2">TltForeman</span> GetForemanByWorkId(<span class="cb1">string</span> workId)

 {

 <span class="cb1">using</span> (<span class="cb2">UnitOfWork</span> uow = Context.CreateUnitOfWork())

 {

 <span class="cb1">return</span> uow.FindOne&lt;<span class="cb2">TltForeman</span><span class="cb3">&gt;(</span><span class="cb2">Entity</span><span class="cb3">.Attribute(</span><span class="cb4">"ForemanId"</span>) == workId);

 }

 }

</div>### Creating Entities

Passing in an instance of our entity, adding to what is referred to as a UnitOfWork and just calling SaveChanges does the job.

<div class="cf"> <span class="cb1">public</span> <span class="cb1">void</span> AddForeman(<span class="cb2">TltForeman</span> foreman)

 {

 <span class="cb1">using</span> (<span class="cb2">UnitOfWork</span> uow = Context.CreateUnitOfWork())

 {

 uow.Add(foreman);

 uow.SaveChanges();

 }

 }

</div>### Deleting Entities

Deleting is as simple as adding, pass an instance of our entity and remove from the UnitOfWork and SaveChanges and the entity is gone.

<div class="cf"> <span class="cb1">public</span> <span class="cb1">void</span> DeleteForeman(<span class="cb2">TltForeman</span> foreman)

 {

 <span class="cb1">using</span> (<span class="cb2">UnitOfWork</span> uow = Context.CreateUnitOfWork())

 {

 uow.Remove(foreman);

 uow.SaveChanges();

 }

 }

</div>## Finally

This tool is really a pleasure to use. I don’t know if I am partial to it because of my work with Ruby on Rails or just the beautiful simplicity, but it is worth a look. Don’t get me wrong, it does not lack features but its features don’t get in your way. I can tweak all I want, something the Rails community refers to as convention over configuration.

The amount of time to go from database to working application was cut probably almost in half. No stored procedures were created in the making of this application. This fact alone should be a good enough reason to move from traditional designs to using an ORM to avoid stored procedures and save some time.

Why should managing data from an application in .NET need to be such a task, which is one we repeat over and over. Using LightSpeed has eased the pain to get an application done rapidly and is a welcomed tool to my toolbox when I need to get .NET work done.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:6d953be5-70a9-4f70-9aed-63d6b52b7d27" style="margin: 0px; padding: 0px; display: inline; float: none;">Technorati Tags: [Mindscape](http://technorati.com/tags/Mindscape),[Mindscape LightSpeed](http://technorati.com/tags/Mindscape+LightSpeed),[ORM](http://technorati.com/tags/ORM),[O/R Mapper](http://technorati.com/tags/O%2fR+Mapper)</div>