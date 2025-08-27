---
id: 137
title: 'ADO.NET Team Releases Entity Framework Beta 2 &#038; the 1st Entity Framework Tools CTP'
date: '2007-08-27T22:14:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=137'
permalink: /net/ado-net-team-releases-entity-framework-beta-2-the-1st-entity-framework-tools-ctp/
categories:
    - .NET
---

Microsoft has released the [Entity Framework beta 2 and the 1st beta of the Entity Framework Tools CTP](http://blogs.msdn.com/adonet/archive/2007/08/27/entity-framework-beta-2-the-1st-entity-framework-tools-ctp-released.aspx) today.

This is great news for those developers using Visual Studio 2008 Beta 2 and want to get serious with the Entity Framework and more importantly the Framework Tools.

From the ADO.NET team blog, the Beta 2 includes new features of the June CTP:

> **[Beta 2 of the Entity Framework](http://www.microsoft.com/downloads/details.aspx?FamilyId=F1ADC5D1-A42E-40A6-A68C-A42EE11186F7&displaylang=en)** includes many great improvements and added features since the last release of the June CTP, including:
> 
> - Events to customize code generation
> - Abstract types in EDM models
> - Complex types
> - &lt;Using&gt; support in metadata files
> - Entity key serialization
> - Increased persistence ignorance in entity data classes
> - Improved connection management in ObjectContext
> - Improved DataBinding usability
> - Metadata annotations
> - Better support for span over LINQ to Entities queries
> - Improvements to LINQ queries: additional canonical functions and automatic mapping from CLR functions to server functions
> - A new event for extensibility of SaveChanges
> - Usability and consistency improvements
> - Polymorphic results from stored procedures

My personal excitement is with the tools being released from the team. From the ADO.NET blog, the tools include:

> **Entity Designer**
> 
> - Generate a model from a database (via wizard) and display it on the designer surface
> - Edit conceptual model properties (namespace, alias, etc.)
> - Control visual aspects of the design surface (layout) and persist changes
> - Add, Delete, and Edit Entities; Scalar properties; Associations; and Inheritance
> - Automatic set management
> - Automatic Navigation property management
> - Error reporting
> - Validate model and mappings using Entity Framework Runtime
> 
> **Entity Mapping**
> 
> - View the mapping for a C-Side Entity or Association
> - Rename or delete C-Side objects without worrying about mapping
> - Map an EntityType to multiple tables
> - Apply multiple conditions to a table mapping
> - Map associations
> - Automatic generation of conditions and referential constraints on associations
> - TPH: Map an Entity hierarchy to a single table
> - TPT: Map an Entity hierarchy to multiple tables
> 
> **Entity Model Browser**
> 
> - Understand and visualize the model in a tree hierarchy
> - Visually relate shapes on the designer surface with hierarchy in model
> 
> **Visual Studio Integration**
> 
> - Support for C# and VB in multiple project types: ASP.NET Web site, ASP.NET Web Application Project, Console, WinForms, and Library
> - Project system integration: item template for .edmx file, model generation wizard, EdmxDeploy.exe, and Entity Framework validation on build
> - Support for multiple Visual Studio editions: Express, Standard, Pro, and VSTS.

The team also announced a set of [samples](http://go.microsoft.com/fwlink/?LinkID=98678) which should help out quite a bit as well. I am looking forward to see how the tools stack up against some of my OR/M favorites.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [.NET](http://technorati.com/tags/.NET), [Entity Framwork](http://technorati.com/tags/Entity%20Framwork), [Visual Studio 2008](http://technorati.com/tags/Visual%20Studio%202008)</div>