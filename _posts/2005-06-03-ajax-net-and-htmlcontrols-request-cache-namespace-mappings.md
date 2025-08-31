---
id: 7
title: 'Ajax.NET and HtmlControls, Request Cache, Namespace Mappings,...'
date: '2005-06-03T06:07:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=7'
permalink: /ajax/ajax-net-and-htmlcontrols-request-cache-namespace-mappings/
categories:
    - AJAX
---

In case you are not aware of what Asynchronous JavaScript is and how it can be used you should check out the AJAX.NET library. This technology is what Google uses for Google Maps and GMail, among others.

This technology has been around for a long time but only until recently has become a hot topic. You can read about Asynchronous JavaScript from [Adaptive Path](http://www.adaptivepath.com/publications/essays/archives/000385.php).

You can thank [Michael Schwarz](http://weblogs.asp.net/mschwarz/) for making the .NET developer's life so much easier with his AJAX library. From the AJAX.NET blog:

> <div>I have released the next version of the free [**Ajax.NET Library**](http://ajax.schwarz-interactive.de/ "http://ajax.schwarz-interactive.de"). You can download the latest version 5.6.2.1 at [http://ajax.schwarz-interactive.de/](http://ajax.schwarz-interactive.de/ "http://ajax.schwarz-interactive.de/").
> 
> The new features are:
> 
> - System.Web.UI.HtmlControls support as arguments and return value to support client control updates without postbacks
> - System.Guid converter
> - Cache Ajax.NET request and response using \[Ajax.AjaxMethod(seconds)\]
> - Configure the virtual filename for the Ajax.NET JavaScript files. In old version you could see the Namespace, Classname and Assemblyname.
> 
> The StackOverflowException I got from several developers was the missing support of System.Guid. This should now work, sorry!
> 
> There are new examples available at [http://ajax.schwarz-interactive.de/](http://ajax.schwarz-interactive.de/ "http://ajax.schwarz-interactive.de/") for HtmlControls, Caching and the Namespace Mapping. You have to scroll to the bottom of the page! **Updated:**  
> some other small bugfixes for a new version number: version 5.6.2.2  
> \- fixed this.url in class.ashx if server is in root folder  
> \- fixed byte\[\], StackOverflowException  
> \- changed interface IAjaxObjectConverter, added property ClientScriptIdentifier to remove multiple client scripts
> 
> </div>\[[Ajax.NET Blog](http://weblogs.asp.net/mschwarz/archive/2005/06/02/410108.aspx)\]