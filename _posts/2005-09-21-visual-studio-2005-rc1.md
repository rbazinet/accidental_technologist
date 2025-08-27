---
id: 25
title: 'Visual Studio 2005 RC1'
date: '2005-09-21T18:52:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=25'
permalink: /visual-studio/visual-studio-2005-rc1/
categories:
    - 'Visual Studio'
---

I downloaded the recent Release Candidate 1 (RC1) from the Microsoft MSDN Universal Subscriber site over the weekend to get it installed on my Windows 2003 Server VPC. I also decided to down SQL Server 2005 Developer Edition as well.

When I setup a VPC I make sure the VPC files are located on a totally separate disk than the operating system to maximize performance. I installed Windows 2003 with Service Pack 1. This comes as a nice ISO image from the MSDN site as well.

The installation of Windows 2003 in the VPC is pretty straight forward. Once installed it is best to run an update to make sure all of the most recent patches are installed. This is not mandatory but I think it's a good idea. It's important to install IIS on the server as well since SQL Server will require it.

I decided to install Visual Studio 2005 with the default options checked, SQL Express is installed by default, you may or may not want this if you plan to install SQL Server. After choosing the default setup I had second thoughts on whether I should have installed SQL Express or not. The Visual Studio 2005 installation went on without a hitch, unlike some of the other CTP's that have been released.

Next was the SQL Server 2005 install which was pretty straight forward. I did a custom install and left things out like Analysis Services. This install went well until it got to the point when the Workstation tools get installed. The install told me it was already installed and obviously not needed. I assumed this software was for Enterprise Manager. After the install completed I tried to run Enterprise Manager and it wasn't there.

It appears the Workstation Tools the install is referring to was for some SQL Express use. I re-ran the SQL Server install and asked just for the Workstation Tools, but this time when it asked if I wanted to overwrite the existing ones I said yes. The install continued but suddenly prompted me for Disk 2. What?? There is a Disk 2 for tools? Sure enough, checking the MSDN download site there is a tools download. I downloaded the ISO, mounted it and let the install continue. The process finished and was complete.

After spending some time with RC1 I can report that it is pretty good. The features work well and the overall performance is much better than the other CTP's or even Beta 2. I am a bit disappointed that there is no go-live license with this release candidate. Oh well, we only have another 6 weeks before we get the release.