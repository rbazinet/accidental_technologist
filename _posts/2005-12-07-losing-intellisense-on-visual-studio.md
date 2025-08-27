---
id: 36
title: 'Losing Intellisense on Visual Studio'
date: '2005-12-07T04:25:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=36'
permalink: /visual-studio/losing-intellisense-on-visual-studio/
dsq_thread_id:
    - '95923727'
categories:
    - 'Visual Studio'
---

An interesting problem one of my fellow developers faced recently was losing Intellisense in Visual Studio 2003. The interesting problem was Intellisense only was lost on web forms and in user controls and only for form objects like buttons and labels.

Since Intellisense knew nothing about our controls such as buttons, it would stand to reason that Visual Studio knew nothing about them at all. This proved true when our events assigned in the OnInit() method kept disappearing. When a button, for example, is added to a web form and the OnClick() event is implemented but later removed also removes the events subscription in OnInit(). We were losing our events so this told us Visual Studio knew nothing of our controls.

The problems didn't happen all at once and where not very consistent either and got progressively worse. We started by looking at the forms on the problem system and looking at the very same form on two different systems without any Intellisense problems, the form controls came up in Intellisense just fine. This tells us it's the system and not a code-related problem.

I have had minor issues with Intellisense losing reference to various objects in the past, but a simple closing the solution and reloading normally fixed the issues. In extreme cases, closing Visual Studio was required but nothing more. This approach did not fix our problems.

Our next step was to delete all of the files in the ASP.NET Cache located in C:\\WINDOWS\\Microsoft.NET\\Framework\\v1.1.4322\\Temporary ASP.NET Files. This is the location temporary files such as assemblies are copied. After deleting these files we performed an IISReset to make sure IIS had a fresh start. Trying Intellisense again in our project resulted in the same problems.

We also use various add-ins and third-party components. Deciding to remove all of these, trying Intellisense again, reinstalling and other such things did not work.

We decided to give Microsoft a call and use one of our MSDN Universal incidents. The call turned out to be worth the effort to learn this occurs in Visual Studio 2003 more often than I would expect. In order to fix the problem we had to perform the following steps:

1. Delete all files in the applications \\bin directory (we had already done this)
2. Delete all files and directories in the C:\\WINDOWS\\Microsoft.NET\\Framework\\v1.1.4322\\Temporary ASP.NET Files directory (we had already done this)
3. Delete all files in the **VSWebCache.** (we hadn't tried this). This directory is normally located in your documents and settings such as this - C:\\Documents and Settings\\rbazinet\\VSWebCache.
4. Perform an IISReset

I was not even aware Visual Studio cached anything under my profile. Well, after the IISReset and restarting Visual Studio and reloading the project, Intellisense had returned to it's normal self.

Wow, what a way to fix a problem that should not be a problem in the first place. I would expect this to be a bug fixed in Visual Studio but there doesn't seem to be a hotfix available. Let's hope this is not an issue in Visual Studio 2005.

Technorati Tags : [ASP.NET](http://technorati.com/tag/ASP.NET), [Visual Studio 2005](http://technorati.com/tag/Visual%20Studio%202005), [Microsoft](http://technorati.com/tag/Microsoft)