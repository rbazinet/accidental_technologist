---
id: 381
title: 'The Crazy 80040154 COM Class Factory Error'
date: '2009-11-02T12:00:33-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=381'
permalink: /microsoft/the-crazy-80040154-com-class-factory-error/
dsq_thread_id:
    - '95925388'
categories:
    - Microsoft
---

[![GoingCrazy](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/TheCrazy80040154COMClassFactoryError_A082/GoingCrazy_thumb.jpg "GoingCrazy")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/TheCrazy80040154COMClassFactoryError_A082/GoingCrazy_2.jpg) I have been working on a project recently which requires me to integrate with QuickBooks Online, in this case from a web application. I have had the pleasure (strong word) working with integrating with QuickBooks in various capacities in the past and although it is not trivial, it does work. I ran into an interesting problem recently with an error that baffled me.

While attempting to connect to QuickBooks online from my ASP.NET C# application, I received the following COM Exception:

> Retrieving the COM class factory for component with CLSID {3C801F08-CDC5-4129-AAE8-CCC4F116B5BE} failed due to the following error: 80040154.

Searching the various Intuit Developer Forums led me nowhere. I was thinking it may be the fact I am funning on Windows 7 and figured it might be an incompatibility with Windows 7 and the COM components from Intuit in their [QuickBooks SDK](http://developer.intuit.com/). After various Google searches I picked up a few clues to the source of the problem, which in hindsight should have been a bit more obvious to me.

### 64-Bit Friend and Foe

The root of the problem was not really Windows 7 but the fact I am running 64-bit and Visual Studio 2008 defaults the Platform Target to ?Any CPU? when building a project. So selecting Project-&gt; {project name} Properties show the following dialog with Any CPU selected:

[![ProjectBuildProperties](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/TheCrazy80040154COMClassFactoryError_A082/ProjectBuildProperties_thumb.png "ProjectBuildProperties")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/TheCrazy80040154COMClassFactoryError_A082/ProjectBuildProperties_2.png)

By changing the choice of the Platform Target to x86 and rerunning my application, the creation of the session to QuickBooks Online works fine. The idea should have probably been more obvious to me, knowing the DLL?s from Intuit are 32-bit COM-based and the interop to my 64-bit operating system could cause some problems.

If anyone wants to add the technical details as to why this behaves as it does, I will update this post with those technical details. I hope this helps someone else with the same problem so they won?t waste the time that I did.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:0c2c6987-6d68-499b-ab4b-284ce04e7c9f" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Intuit](http://technorati.com/tags/Intuit),[QuickBooks Online](http://technorati.com/tags/QuickBooks+Online),[COM Interop](http://technorati.com/tags/COM+Interop),[64-Bit](http://technorati.com/tags/64-Bit)</div>