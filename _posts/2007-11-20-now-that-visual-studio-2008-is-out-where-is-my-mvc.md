---
id: 168
title: 'Now that Visual Studio 2008 is Out, Where is My MVC?'
date: '2007-11-20T22:01:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=168'
permalink: /visual-studio/now-that-visual-studio-2008-is-out-where-is-my-mvc/
dsq_thread_id:
    - '95911899'
categories:
    - 'Visual Studio'
---

Now that Visual Studio 2008 has been released we are one step closer to having the ASP.NET MVC Framework in our hands. This is one of the biggest pieces of Microsoft technology, in my opinion, that will change ASP.NET development for the better.

Since I don't have the ASP.NET MVC Framework in my hands yet I can only make statements from the demos I have seen and from those lucky few that have had a chance to play with it.

**So what makes having a different framework to write ASP.NET applications with besides WebForms important?**

- One of the most important reasons to use the new MVC framework is getting rid of ViewState and ViewState management. ViewState is one of those things that tend to creep up on you and before you know it your web page is huge and you have to start cutting down ViewState usage. This is something developers should not have to worry about and manage, it's just a waste of time.
- Secondly, no more PostBack and PostBack Events. Here we go again, something developers should not have to waste their time managing. Frankly, having to have intimate knowledge of when to perform certain actions in various events leads to code that is hard to manage and maintain. Unless you have this particular knowledge you may be inadvertently writing bad code. I think this model was created to try to make web application development as close to being WinForm development as possible and make the job of the developer easier. The intention probably wasn't to make it harder.

**What do we really gain from an MVC implementation?**

- Developers will be able to make use of the framework from static as well as dynamic languages, such as IronRuby and IronPython. Much of the things that make Ruby on Rails so attractive can now be done in IronRuby using the MVC Framework.
- Architecting a solution will be much easier and cleaner when we have very clear separation between the view, the controller and our models. When developing a solution in ASP.NET using webforms we always have blurred lines between our different layers, no real distinction.
- Testing will be so much easier with the innate ability for testing in an MVC pattern, we will not be pulling our hair out trying to perform the tests we know we should be doing. Sure, we can and do test now but it is not the easiest of tasks.
- We can also chose how we want to handle our views with third party support such as NVelocity, Brail or Microsoft's flavor of view engine that will support ASP.NET. We will have choice available to us.

We can forget about [MonoRail](https://castleproject.org/monorail/index.html) and what that has given us. MonoRail will find its place once the ASP.NET MVC Framework comes out. My guess will be that it will take advantage of what Microsoft does and extend it for the better. Hammett has some [thoughts on this too](https://hammett.castleproject.org/?p=219).

I think [Ruby on Rails](https://www.rubyonrails.com/) has a lot of influence in the MVC Framework and for good reason, Rails is popular, Rails works and it really helps create maintainable and testable code. I really enjoy working with Rails and because of this, I am looking forward to the MVC Framework.

I hope the MVC team takes advantage of [Rob Conery's](https://blog.wekeroad.com/) [SubSonic project](https://www.subsonicproject.com/) to give us things like Scaffolding and dynamically creating classes from our models. I know LINQ will do wonders to make it happen. I would like to add generation of controllers and models to my wish list too.

Maybe Santa will leave the MVC Framework in my stocking........

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Microsoft](https://technorati.com/tags/Microsoft), [Visual Studio 2008](https://technorati.com/tags/Visual%20Studio%202008), [MVC](https://technorati.com/tags/MVC)</div>