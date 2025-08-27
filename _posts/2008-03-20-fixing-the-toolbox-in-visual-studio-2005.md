---
id: 251
title: 'Fixing the Toolbox in Visual Studio 2005'
date: '2008-03-20T09:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=251'
permalink: /visual-studio/fixing-the-toolbox-in-visual-studio-2005/
categories:
    - 'Visual Studio'
---

I have had the extreme pleasure of working with Microsoft SQL Server 2005 Reporting Services lately (notice the extreme sarcasm in my tone). I am working on a project for a large client and one part of the project requires I enhance a report to support multiple languages. This post is not about localization but a rather strange issue I faced today.

I opened up my project in Visual Studio and proceed to open the report I needed to analyze for changes and decided to look at the controls at my disposal to help enhance the report and was greeted by this set of controls:

[![ReportingServicesToolBoxBefore](http://rbazinet.files.wordpress.com/2008/03/reportingservicestoolboxbefore-thumb.jpg)](http://rbazinet.files.wordpress.com/2008/03/reportingservicestoolboxbefore.jpg)

Interesting, all the controls are just *Textbox.* Obviously this isn't right and I had to do a bit of searching around the net for a few things to try. The first suggestion I found was to right click the Toolbox and select Reset ToolBox....this had no effect. Several suggestions didn't seem right but I finally tried one which worked. It involved a few steps:

1. Shutdown Visual Studio
2. Locate the directory - C:\\Documents and Settings\\&lt;user name&gt;\\Local Settings\\Application Data\\Microsoft\\VisualStudio\\8.0
3. Delete all files named Toolbox.\* (there were 4 of them)
4. Restart Visual Studio

The directory listing where the Toolbox files live looked like this:

[![VisualStudioToolBox](http://rbazinet.files.wordpress.com/2008/03/visualstudiotoolbox-thumb.jpg)](http://rbazinet.files.wordpress.com/2008/03/visualstudiotoolbox.jpg)

When Visual Studio restarts it will recreate the Toolbox files based on what is installed on the system. After restarting Visual Studio my Toolbox looked like this when editing a report:

[![ReportingServicesToolBoxAfter](http://rbazinet.files.wordpress.com/2008/03/reportingservicestoolboxafter-thumb.jpg)](http://rbazinet.files.wordpress.com/2008/03/reportingservicestoolboxafter.jpg)

The steps are pretty trivial when you know what they are but finding the solution took a bit of spelunking but it worked like a charm. I don't know what actually caused this to happen but I don't have the time to find out why. If someone has the reason I would love to know why.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Microsoft](http://technorati.com/tags/Microsoft), [SQl Server 2005](http://technorati.com/tags/SQl%20Server%202005), [Reporting Services](http://technorati.com/tags/Reporting%20Services), [Visual Studio 2005](http://technorati.com/tags/Visual%20Studio%202005)</div>