---
id: 155
title: 'ASP.NET Development Server Problems Under Vista'
date: '2007-10-25T10:24:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=155'
permalink: /asp-net/asp-net-development-server-problems-under-vista/
dsq_thread_id:
    - '95928422'
categories:
    - ASP.NET
---

I guess I was bored last night so I decided to upgrade my development system to Vista. I have been running Windows XP Pro without any real issues but I wanted to start using some of the features of Vista I had only used in my virtual machines.

The upgrade went pretty well with only a handful of driver issues for video, printer and my sound card.

I installed the Visual Studio 2005 updates to run on Vista [outlined by Microsoft](https://msdn2.microsoft.com/en-us/vstudio/aa948853.aspx) and Visual Studio seemed to run just fine. Note that ASP.NET is not installed by default, so you will need to enable it.

I normally use the ASP.NET Development Server for ASP.NET applications for development and testing and move over to IIS for deployment. The only real problem I faced was hitting Ctrl-F5 in Visual Studio 2005 to run one of my web applications, the server started, Internet Explorer opened but nothing happened. I waited for several minutes, but nothing.

After searching the web many different ways I found out that Vista implements IPv6 (versus the old IPv4) and browsers may have issues resolving <https://localhost>. Since I use both Internet Explorer and Firefox for web development I decided to try just copying the URL the ASP.NET Development Server was using and pasting manually into both browsers and the same result...nothing, no error, nothing.

It turns out others have had this same problem and you can turn off IPv6 in Firefox pretty easily.

##### Disable IPv6 in Firefox

1. Type **about:config** in the address bar and press Enter.
2. Scroll down until you find **network.dns.disableIPv6**.
3. Double-click on it to change its value to **true**.
4. Restart Firefox.

After restarting Firefox I pasted the address used by ASP.NET Development Server into the Firefox address bar....and it worked like a charm. So, it seems IPv6 is the issue.

I spent an hour or so trying to find a similar configuration for Internet Explorer but had no luck. If a reader finds a setting in IE to disable IPv6 I would like to hear about it so I can update this post.

The solution I did get to work in IE was to disable IPv6 for my system. I found a great article by the Cable Guy which [pointed out what to do](https://www.microsoft.com/technet/community/columns/cableguy/cg0506.mspx#EAKAC). In short I set the following key:

HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\tcpip6\\Parameters\\DisabledComponents

to a value of 0xff and restarted the system. Checking the ASP.NET Development Server URL in the IE address bar displayed my page.

##### Conclusion

This worked for me but I have reservations about the solution. What are the side-effects or the future effects of disabling IPv6 which Microsoft includes with Vista. If the system evolves and I need IPv6 then I will have a different problem.

If someone has a different solution I would like to hear it. I am not keen on disabling IPv6 but it works and it is not irreversible. On the plus side, browsing the web seems to be faster.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Microsoft](https://technorati.com/tags/Microsoft), [Vista](https://technorati.com/tags/Vista), [Visual Studio 2005](https://technorati.com/tags/Visual%20Studio%202005), [IPv6](https://technorati.com/tags/IPv6)</div>