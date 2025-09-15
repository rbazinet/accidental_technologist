---
id: 181
title: 'Microsoft Entity Framework Beta 3 and Entity Framework Tools CTP2 Released'
date: '2007-12-06T13:50:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=181'
permalink: /net/microsoft-entity-framework-beta-3-and-entity-framework-tools-ctp2-released/
categories:
    - .NET
---

The latest versions of the [Entity Framework Beta](https://blogs.msdn.com/adonet/archive/2007/12/05/ado-net-entity-framework-beta-3-rleased.aspx) and [Entity Framework Tools CTP](https://blogs.msdn.com/adonet/archive/2007/12/05/entity-framework-beta-3-breaking-changes.aspx) are available according to the ADO.NET Team Blog.

[Entity Framework Beta 3 includes](https://blogs.msdn.com/adonet/archive/2007/12/05/ado-net-entity-framework-beta-3-rleased.aspx):

> **Performance improvements**
> 
> - Much quicker object query execution
> - Simpler generated SQL
> - Faster view generation
> 
> **Easier disconnected operation**
> 
> - Public, serializable EntityKey property on EntityReference
> - ApplyPropertyChanges
> - Attach on EntityReference
> - Improvements to EntityKey serialization
> 
> **Extensibility and business logic enhancements**
> 
> - Partial methods in code generation for property changing and property changed events
> - Load with MergeOption
> 
> **Query improvements**
> 
> - Additional canonical functions for LINQ to Entities
> - Apply operator elimination (makes more operations work in SQL Server 2000 and other databases)
> - Compiled LINQ query
> - ToTraceString() method on ObjectQuery&lt;T&gt; and EntityCommand to facilitate debugging
> 
> **Other**
> 
> - Connection management refinements
> - Provider interface allows better reasoning about primitive types

[Entity Framework Tools CTP2 includes](https://blogs.msdn.com/adonet/archive/2007/12/06/entity-designer-ctp2.aspx):

> ? **Map using stored procedures:** you can now map entities to insert/update/delete stored procedures in the mapping details window in the designer
> 
> ? **FunctionImports:** Create, update and delete FunctionImports in your model
> 
> ? **?Update Model From Database??:** update model and mappings if tables or columns in the database change. Very useful during iterative development when the database changes after you initially generate the model &amp; mappings
> 
> ? **Embed artifacts in output assembly:** package CSDL/MSL/SSDL files as resources in the output assembly. This makes it easy to deploy projects with Entity Data Models
> 
> ? **Easier to find and fix errors:** Double-click a validation error selects the offending entity, property or association to make it easy to fix errors
> 
> ? **Cut/copy/paste:** Cut/copy/paste entities and properties
> 
> ? **Abstract entity types:** Create and map abstract entity types in your model
> 
> ? **Support for more properties:** Concurrency control for properties and documentation nodes for entities, properties, etc
> 
> ? **MSBUILD integration:** new EntityDeploy MSBUILD task that replaces the erstwhile EdmxDeploy.exe command line tool
> 
> ? **Connection Management:** Automatic Entity Connection string management in App/Web.config when .edmx file is moved/renamed in Solution Explorer
> 
> ? **Easier Navigation:** Navigate to nodes in the model browser from entities and properties on the designer surface
> 
> ? **Enable MARS by default:** Wizard sets MultipleActiveResultSets to "true" in Entity Connection string when connecting to SQL 2005
> 
> ? **Usability:** Numerous changes based on UI/usability feedback
> 
> ? **Supported editions of Visual Studio 2008 RTM:** Standard, Professional, Team Edition, and Express editions (C#, VB and Visual Web Developer)

This version has support for Visual Studio 2008 RTM, which the last releases did not.

I plan on installing on two of my development systems and will report any problems later.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Entity Framework](https://technorati.com/tags/Entity%20Framework), [Entity Framework Tools](https://technorati.com/tags/Entity%20Framework%20Tools), [Visual Studio 2008](https://technorati.com/tags/Visual%20Studio%202008)</div>