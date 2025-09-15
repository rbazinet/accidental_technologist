---
id: 319
title: 'Getting jQuery Intellisense Functioning in Visual Studio 2008'
date: '2008-10-28T18:39:06-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=319'
permalink: /visual-studio/getting-jquery-intellisense-functioning-in-visual-studio-2008/
dsq_thread_id:
    - '95926188'
categories:
    - 'Visual Studio'
---

It was announced today at the Microsoft Professional Developers Conference that Visual Studio 2008 supports Intellisense for jQuery with an additional file available from jQuery. The file is [available from Google Code](https://code.google.com/p/jqueryjs/downloads/detail?name=jquery-1.2.6-vsdoc.js&can=2&q=).

There are no instructions included with the download but I took the time to get jQuery Intellisense to work in one of my ASP.NET MVC projects. In order to get this to work I did the following:

1\. Downloaded the jquery-1.2.6-vsdoc.js to the *Scripts* folder of my project along side my jquery-1.2.6.js file.

2\. In my project I referenced the jquery-1.2.6-vsdoc.js file in my Master Page so I could reference it anywhere, like so:

[![jQueryUse](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/GettingjQueryIntellisenseFunctioninginVi_101DB/jQueryUse_thumb.jpg "jQueryUse")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/GettingjQueryIntellisenseFunctioninginVi_101DB/jQueryUse_2.jpg)

3\. Once this is in place a simple test of function was created and Intellisense was tested:

[![jQueryIntellisense1](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/GettingjQueryIntellisenseFunctioninginVi_101DB/jQueryIntellisense1_thumb.jpg "jQueryIntellisense1")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/GettingjQueryIntellisenseFunctioninginVi_101DB/jQueryIntellisense1_2.jpg)

The reference to jQuery can be clearly seen here.

[![jQueryIntellisense2](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/GettingjQueryIntellisenseFunctioninginVi_101DB/jQueryIntellisense2_thumb.jpg "jQueryIntellisense2")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/GettingjQueryIntellisenseFunctioninginVi_101DB/jQueryIntellisense2_2.jpg)

The list of methods available as part of the jQuery library can also be seen.

This was pretty easy, the key part is making sure you have the proper path set for Visual Studio to find the jQuery JavaScript files. I used the path as ?~/script/jquery-1.2.6-vsdoc.js? and placed it after the reference to the main jQuery JavaScript file, referenced the same way.

I hope this helps someone else trying to get this going.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:6433b519-222e-4217-b8cc-06f213f0ade3" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [jQuery](https://technorati.com/tags/jQuery),[ASP.NET](https://technorati.com/tags/ASP.NET),[Visual Studio 2008](https://technorati.com/tags/Visual+Studio+2008),[Microsoft](https://technorati.com/tags/Microsoft)</div>