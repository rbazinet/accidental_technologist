---
id: 110
title: 'Object Relational Mapping (O/RM) is Manageable'
date: '2007-06-04T13:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=110'
permalink: /software-architecture/object-relational-mapping-orm-is-manageable/
dsq_thread_id:
    - '95924267'
categories:
    - 'Software Architecture'
---

The topic of Object Relational Mapping or [O/RM](https://en.wikipedia.org/wiki/Object-relational_mapping) can be found all over the web in various weblogs and forums debating whether O/R-M was a useable technology or not and the pros and cons to using it.

[Ted Neward](https://blogs.tedneward.com/) always has great posts on technology from both the .NET and Java perspective. Ted knows both sides very well and it is refreshing to see someone is not an anti-Microsoft person arguing against a non-Java person, which gets very old.

O/RM holds the promise of encapsulating our entire database schema into objects, which is much easier to understand from an object hierarchy perspective.

Ted has had some interesting posts on O/RM in the past, one in particular relating O/RM as the [Vietnam of Computer Science](https://blogs.tedneward.com/2006/06/26/The+Vietnam+Of+Computer+Science.aspx). [.NET Rocks](https://www.dotnetrocks.com/) recently had a show dedicated to O/RM call the "ORM Smackdown" where Ted Neward and [Oren Eini](https://www.ayende.com/Blog/) had a debate about O/RM. It was a good show and Ted had a [follow-up post](https://blogs.tedneward.com/2007/05/28/The+ORM+Smackdown.aspx) to the show, which is worth a read.

**Successful O/RM Project**

The point of this post is not to debate whether O/RM is good or bad but to show any technology can be successful if done correctly. There are many ways to do something correctly, this just happens to be an overview how we did it.

I am a consultant and one of my current projects is for a major pharmaceutical company. The project is meant to revolutionalize the way drugs are manufactured. O/RM is a technology we use to assist developers with focusing on our entities (business objects) and how they interact with each other instead of how to use ADO.NET to interact with Microsoft SQL Server 2005. The software is written in C# and developers realize the benefits of what O/RM can do for them by making our entities native C# classes.

We built a custom application to generate stored procedures, entity classes and a data access layer. At the heart of the application is an XML document that defines how the entities are related, this document removes the flat nature of the SQL schema we use. For example, we may have an entity called Customer which has an address, order history and contact information. Each of these parts of the entire Customer may live in it's own table but from the object perspective each may be a property or collection, part of the complete Customer.

Our tool allows the user to connect to a database which in turn reads the table schema, views, indexes, stored procedures and functions from the the database and loads everything into memory. The XML document is read in and is validated against the database for schema changes and automatically updates itself.

The combination of this document and the in-memory database information allows the user to generate a complete data access layer and entity classes for the developer to use.

**Manageability**

My description is very vague the result is real. A complete and clear set of classes representing an entity hierarchy which allows the developer to use domain specific objects and not be concerned with SQL in the least. The data access classes are proven, the entities are complete. Schema changes and stored procedures are integrated into the nightly build process. We have the best of both worlds with having a complete object hierarchy representing our domain and use of stored procedures to get away from the dynamic SQL issues.

Granted, this is not a solution for all situations but it does work in ours and it could work in many others. The code generator we used was written from scratch but if we had to do it again we would probably use CodeSmith and create a family of templates. The technology used to generate code is really irrelevant, but the techniques are solid and have worked for a few years now.

**Conclusion**

Overall our implementation is very clean and works very well. I know we would change some of the implementation but the overall design would pretty much be the same. I welcome questions about our implementation or suggestions how you had a successful O/RM deployment and successfully maintain that deployment.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [.NET](https://technorati.com/tags/.NET), [ORM](https://technorati.com/tags/ORM)</div>