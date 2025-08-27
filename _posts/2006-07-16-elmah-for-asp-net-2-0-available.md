---
id: 84
title: 'ELMAH for ASP.NET 2.0 Available'
date: '2006-07-16T23:14:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=84'
permalink: /asp-net/elmah-for-asp-net-2-0-available/
dsq_thread_id:
    - '95924215'
categories:
    - ASP.NET
---

I have been using a module for Error Logging and Notification released on [GotDotNet, called ELMAH](http://www.gotdotnet.com/workspaces/releases/viewuploads.aspx?id=f18bab11-162c-4267-a46e-72438c38df6f).? ELMAH is a great behind-the-scenes module for ASP.NET that is quickly added to your project's /bin folder, add a?handler in your web.config and run a script to create a table in your database.?? ELMAH logs errors to my SQL Server Database and allows me to quickly know if an error has occurred.? I can also configure the module to email me to get early notification.? I have been using ELMAH for the past year or so and would be lost without it.? The latest release is built for ASP.NET 2.0.? I used the one built for ASP.NET 1.1 without any problems.? The new version has some nice updates like using System.Net.Mail instead of the troublesome CDONTS. Here you can see a sample of the error reporting: ![elmahlog.jpg](http://rbazinet.files.wordpress.com/2006/07/elmahlog.jpg) Please give ELMAH a try, it's well worth the few minutes to set it up. Technorati Tags: [ASP.NET](http://technorati.com/tag/ASP.NET)