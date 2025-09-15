---
id: 64
title: 'AJAX Resources'
date: '2006-03-10T09:42:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=64'
permalink: /ajax/ajax-resources/
categories:
    - AJAX
---

I have been doing a lot of research with regards to AJAX technologies lately. I figured I would share some of the more useful ones I have found:

- [Wilco Bauwer’s Atlas Site](https://www.wilcob.com/Wilco/Atlas.aspx)
- [Rick Strahl’s Weblog](https://west-wind.com/weblog/) – browse through the posts and look at the AJAX ones, very insightful
- [West Wind Hover Panel Control](https://www.west-wind.com/tools/wwHoverPanel/) – a nice control by Rick Strahl
- [Telerik RadCallBack Control](https://www.telerik.com/Default.aspx?PageId=2527)

A very nice and thorough [comparison of AJAX frameworks](https://www.daniel-zeiss.de/AJAXComparison/Results.htm) was done by Daniel Zeiss. It gives some nice details as far as browser support, developer support and page rendering size too. It’s well worth the read if you considering implementing AJAX in your applications.

Another nice piece from the [Code Project](https://www.codeproject.com/useritems/AnthemNET.asp) covering the use of the open source AJAX project called [Anthem.Net](https://sourceforge.net/projects/anthem-dot-net) is worth a read.

One note or word of caution regarding some of these AJAX controls is these controls break down into two categories; the first group being those controls that require you to create your own JavaScript to handle the callbacks and the second set of controls are encapsulated and shelter you from the JavaScript. The first group of controls include those from Michael Schwarz known as [Ajax.NET Professional](https://ajaxpro.schwarz-interactive.de/). The second group of controls include those from [Telerik with their RadCallback Control](https://www.telerik.com/Default.aspx?PageId=2527) suite as well as the set of controls from [Anthem.Net](https://sourceforge.net/projects/anthem-dot-net). The problems I have been facing with using the Telerik controls relates to the fact that I don’t write the JavaScript myself so I rely on the Telerik controls working with the other intrinsic controls I am using. On problem in particular that has come up is using Telerik callback controls with .NET 2.0 validation controls. The controls get along fine until the callback occurs and the validation controls are reloaded, this causes some strange JavaScript problems and future events such as a button push no longer work. Since I have no control over the JavaScript I have no way to fix this.

When looking at using AJAX technology I think it’s key to understand the different offerings of controls and the pluses and minuses of each type. The average user with very basic needs probably doesn’t need or want to write JavaScript but to be most effective you will probably need to. It will be interesting to see how the Microsoft Atlas project fairs in relation to this. Atlas is being touted as not having to write JavaScript and hopefully will be able to get along with it’s own non-AJAX validation controls. We will see.

Technorati Tags : [AJAX](https://technorati.com/tag/AJAX), [Atlas](https://technorati.com/tag/Atlas)