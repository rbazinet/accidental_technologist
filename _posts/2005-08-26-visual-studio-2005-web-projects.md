---
id: 17
title: 'Visual Studio 2005 Web Projects'
date: '2005-08-26T08:58:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=17'
permalink: /visual-studio/visual-studio-2005-web-projects/
categories:
    - 'Visual Studio'
---

There has been much talk and complaining in the blogsphere about how Visual Studio 2005 Web Project now lack a project file like so many of us are familiar with in Visual Studio 2003.

Scott Guthrie has a [great post](http://weblogs.asp.net/scottgu/archive/2005/08/21/423201.aspx) on his blog about the reasoning behind this decision and how the lives of enterprise developers will be better served. I think in the long run this will be good not having a project file to keep track of but in the short term we will have to change the way we organize our projects.

Most of [our](http://www.incentiveusa.com/) applications are being developed with Visual Studio 2003 but we are itching to move to 2005. We recently updated the [ASP.NET Project Migration Wizard](http://weblogs.asp.net/scottgu/archive/2005/08/07/421827.aspx) in our VS 2005 Beta2 installation and ran it against our project. Most of the application converted fine with just some minor issues that we needed to fix.

There turned out to be much larger problems that surfaced, not in conversion, but in the way the web application is structured. Our web application is an ecommerce catalog and houses some 5000+ project images in a directory off of our project root. We also have large directories used by third party controls and for application themes.

Since the new ASP.NET 2.0 web project do not have project files Visual Studio relies on the file system to get project information. Our directories with large numbers of files cause a problem because Visual Studio wants them to be part of our source control system. If we check these files in, it takes an hour and half. When we open our project and do a "Get Latest" it takes an hour to find out what needs to be updated....totally unacceptable.

Contact with the Visual Studio team resulted in a very fast and thorough response with some nice guidelines for our type of situation. Scott Guthrie made another [recent post](http://weblogs.asp.net/scottgu/archive/2005/08/26/423730.aspx) which talks about our situation specifically and how to address these types of issues. So, with IIS and web projects, the virtual directory will be your friend.

By making our images directory a virtual directory in IIS we can have it in the exact location we need and not have to be burdened by the check-in/check-out process of our source control.

I don't think the lack of projects will be as bad as [Paul Wilson](http://weblogs.asp.net/pwilson/archive/2005/08/10/422112.aspx) has pointed out and others have commented. I think we will need to adjust the way we do things with our projects but in the long run it will be better.