---
id: 269
title: 'ASP.NET MVC Recent Code Drop Updates Cause Some Pain'
date: '2008-05-06T07:49:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=269'
permalink: /asp-net-mvc/asp-net-mvc-recent-code-drop-updates-cause-some-pain/
categories:
    - 'ASP.NET MVC'
---

Microsoft released the ASP.NET MVC Framework updates to CTP 2 in the middle of April and for those using it you may have noticed some changes to the way certain things are done.

I am working on a project where I am using the CTP to get a web site built and learning ASP.NET MVC along the way. I started using the CTP 2 for the project and moved over to the latest code drop as soon as it came out. Sure, I expected some changes so it was not a big deal, but the ones I encountered were interesting and caused a little head scratching about something that worked before but not now.

### Project Wizard

The CodePlex [April 16 MVC Interim Source Code Release](http://www.codeplex.com/aspnet/Release/ProjectReleases.aspx?ReleaseId=12640) includes two downloads, the MVC code itself and a set of Visual Studio MVC Templates. When I first saw the templates I figured they were just some additional ones but they are above and beyond those in the original CTP2. You can see there are two templates now when creating a new project.

[![VS2008-NewProject](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/VS2008-NewProject_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/VS2008-NewProject_2.jpg)

One is shown under Visual Studio installed templates, called ASP.NET MVC Web Application and the other one and newer is under My Templates and is also called ASP.NET MVC Web Application. Choosing one over the other creates two very different sets of code.

One benefit of having two sets of templates is you can create applications for both sets of code bases, CTP2 and the interim drop. One other thing that is different when using the new templates is you don't get a nice test project to go in your solution. It can be added of course.

### Controllers

One of the changes which threw me off right away is the way Controller action methods have changed. You can see from the screen shot just below that the controller action method Index() returns a void.

[![MVC-CTP2Controller](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-CTP2Controller_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-CTP2Controller_2.jpg)

But the controller from the interim code drop controller action now returns an **ActionResult**, not a **void**. This obviously breaks existing code. Changing my existing code to work was not a big deal but was a surprise when trying the first build with the new code drop.

[![MVC-Controller-PostCTP](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-Controller-PostCTP_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-Controller-PostCTP_2.jpg)

After fixing this code and heading over to Scott Guthrie's blog, he explains the reasoning behind the changes:

> The MVC feature team is experimenting with a few ideas in this week's drop and are trying out some new ideas:
> 
> 1. Action methods on Controllers now by default return an "ActionResult" object (instead of void). This ActionResult object indicates the result from an action (a view to render, a URL to redirect to, another action/route to execute, etc).
> 2. The RenderView(), RedirectToAction(), and Redirect() helper methods on the Controller base class now return typed ActionResult objects (which you can further manipulate or return back from action methods).
> 3. The RenderView() helper method can now be called without having to explicitly pass in the name of the view template to render. When you omit the template name the RenderView() method will by default use the name of the action method as the name of the view template to render. So calling "RenderView()" with no parameters inside the "About()" action method is now the same as explicitly writing "RenderView('About')".
> 
> So why change Controller action methods to return ActionResult objects by default instead of returning void? A number of other popular Web-MVC frameworks use the return object approach (including Django, Tapestry and others), and we found for ASP.NET MVC that it brought a few nice benefits.

Please take a look at [Scott's post](http://weblogs.asp.net/scottgu/archive/2008/04/16/asp-net-mvc-source-refresh-preview.aspx) on this to see all of the benefits which I won't go into here.

### Routing and Default.aspx

In the CTP2 release there is a default.aspx page that was really just a placeholder page that had no code-behind, but building with the new bits causes the default route to not behave the same way and produce a page not found error. In order to fix this some code behind is added to default.aspx which fixes the problem for CTP2 code. Below is what I added and incidentally is the same code added by the new templates.

[![MVC-Defaultaspx](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-Defaultaspx_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-Defaultaspx_2.jpg)

The changes are needed because of helper method called routes.MapRoute() which eases the syntax of creating routes. Anyone who created routes with routes.Add will understand how it can be a bit simpler:

[![MVC-Routes](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-Routes_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ASP.NETMVCRecentCodeDropUpdatesareIntere_FC1B/MVC-Routes_2.jpg)

The recent code drop (4/16) templates fix all these issues and new projects just work without having to deal with tweaking code.

### Conclusion

I think these changes are keeping us on course in the right direction but are a couple of gotchas if you are not aware of them.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:3ec09e6d-3383-4360-9bba-1b7594f7ed6b" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: [Microsoft](http://technorati.com/tags/Microsoft),[ASP.NET MVC](http://technorati.com/tags/ASP.NET%20MVC)</div>