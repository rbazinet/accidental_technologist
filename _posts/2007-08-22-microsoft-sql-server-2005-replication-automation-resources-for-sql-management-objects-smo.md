---
id: 133
title: 'Microsoft SQL Server 2005 Replication Automation Resources for SQL Management Objects (SMO)'
date: '2007-08-22T23:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=133'
permalink: /sql-server/microsoft-sql-server-2005-replication-automation-resources-for-sql-management-objects-smo/
categories:
    - 'SQL Server'
---

##### Background

I have recently been involved in a project which makes heavy use of Microsoft SQL Server 2005. We have many database servers all over the company including several clusters with locations all over the world.

My role on the project is to be able to synchronize all of the databases across the company so each database has the same information in it as close to real-time as we can. I decided to use SQL Replication Services in a transactional push configuration. I used this method in a test environment and found the performance to be very good and the results very reliable.

Setting up SQL Server Replication is pretty straight forward using SQL Management Studio as the wizards guide you through the entire configuration. I had about 100 tables that needed to be replicated out of about 250 tables, selecting them was where it became a bit time consuming but setup was still easy.

##### The Challenge

The replication solution was to run in a development environment during the later parts of system development so we could see the behavior of replication from both a performance and latency standpoint. The results were extremely fast even across the Atlantic Ocean, we are talking milliseconds here for changes to data.

The challenge we faced came about when we needed to make schema changes on the server who was the replication source (publisher). The process we use is to compare the old schema to our new schema and generate a SQL script to execute on the replication source database. Prior to using replication we had no trouble performing this task but with replication running there is a problem when changing an existing column in a table, SQL Server will NOT allow it. The issue stems from the fact that SQL Server drops the column and re-creates the column with the changes, which cannot happen to replicated tables.

##### The Solution

So, the way I approached this problem was to be able to easily remove replicated tables from a publisher, make schema changes and re-create the replication. This is a straight-forward but tedious task using SQL Management Studio but is error-prone and tedious.

I started looking at using SQL Management Objects (SMO), which I had used on another project for automating other SQL tasks. I discovered SMO has a subset of classes call Replication Management Objects (RMO) that are designed just for this task. The only problem I faced was learning how to use them in a timely manner and be able to write the code to do all that was needed.

The key part to learning to use RMO is to learn how SQL Server Replication is designed and [how it works](https://msdn2.microsoft.com/en-us/library/ms151847.aspx). Once this is understood, it is pretty easy to see how RMO maps to how SQL implements replication.

It took a bit of effort to find the right resources on the web to learn how RMO works and locate the resources to turn to if I had a question. The main point of this post is not what I did but more of the resources I used to build my solution.

##### The Resources

Most of the information I found and used was directly from Microsoft's MSDN web site but provided here to help group them together.

[Transactional Replication Overview](https://msdn2.microsoft.com/en-us/library/ms151176.aspx) - learn what it is all about.

[Configuring Replication (RMO Programming)](https://msdn2.microsoft.com/en-us/library/ms146930.aspx) - probably the best resource for writing an RMO application based on C# or VB.NET.

[Microsoft SQL Server Replication Forums](https://forums.microsoft.com/MSDN/ShowForum.aspx?ForumID=90&SiteID=1) - good to read about those who have done it and get answers relatively fast.

[MSDN Magazine Article](https://msdn.microsoft.com/msdnmag/issues/07/06/DataPoints/) - great way to get started.

[Making Schema Changes on Publication Databases](https://technet.microsoft.com/en-us/library/ms151870.aspx) - what you need to understand.

The tool I use for comparing databases is [SQL Compare](https://www.red-gate.com/products/SQL_Compare/index.htm) from Red Gate Software. This tool is great, easy to use and allows the user to save it's results in a SQL script. Red Gate has released [SQL Toolkit](https://www.red-gate.com/products/SQL_Toolkit/index.htm) which allows for managing replication and some other things. I have not looked extensively at this product but it may wrap RMO and make it a bit easier to automate your RMO tasks.

All in all RMO is a great way to programmatically manage replication in your application. It does have a bit of a learning curve, as does any new technology, but once over the curve it works really well.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Microsoft](https://technorati.com/tags/Microsoft), [SQL Server 2005](https://technorati.com/tags/SQL%20Server%202005), [.NET](https://technorati.com/tags/.NET)</div>