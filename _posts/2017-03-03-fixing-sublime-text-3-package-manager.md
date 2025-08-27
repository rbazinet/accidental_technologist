---
id: 1146
title: 'Fixing Missing Sublime Text 3 Package Manager'
date: '2017-03-03T11:36:08-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1146'
permalink: /programming/fixing-sublime-text-3-package-manager/
dsq_thread_id:
    - '5600402217'
categories:
    - Programming
tags:
    - 'sublime text 3'
---

I've been a big fan and long-time user of [Sublime Text 3](http://www.sublimetext.com/3). Recently, I ran into a problem where [Package Control](https://packagecontrol.io/) stopped working. When I say, not working, I mean behaving as though I never installed it. Attempting to install or remove packages was not even an option any longer. All menu items relating to packages was gone..yet by all accounts, Package Control was still installed. ![NoPackageManager](/assets/img/2017/03/NoPackageManager.png "NoPackageManager.png") This had been working in the past and as far as I could remember, it worked recently. I figured either an update to Sublime Text 3 had broken the Package Control or maybe another package had caused some problems. I tried [reinstalling the Package Control](https://packagecontrol.io/installation) but nothing changed. After much trial-and-error, I discovered an interesting section in user settings (**Preferences -&gt; Settings**), name *Ignored Packages*. What? ![IgnoredPackageManager](/assets/img/2017/03/IgnoredPackageManager.png "IgnoredPackageManager.png") I could see the Package Control package was ignored. I removed it from this section and restarted the editor. ![YeahPackageManager](/assets/img/2017/03/YeahPackageManager.png "YeahPackageManager.png") Checking Package Control now reveals it's running as it was before. I have no idea how this happened but I'd venture to guess a bug in a Sublime upgrade at one point. I hope this fixes this really annoying problem for someone else.