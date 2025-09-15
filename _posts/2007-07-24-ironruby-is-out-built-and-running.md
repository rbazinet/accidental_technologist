---
id: 123
title: 'IronRuby is out, Built and Running'
date: '2007-07-24T22:21:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=123'
permalink: /ironruby/ironruby-is-out-built-and-running/
dsq_thread_id:
    - '96020006'
categories:
    - IronRuby
---

I have been working with Ruby for quite some time now and every time I hear of new things out I like to try them out. Most of the time it is the latest gem or technique but this time the news comes from Microsoft.

[John Lam](https://www.iunknown.com/2007/07/a-first-look-at.html) and his group at Microsoft released a source code drop of [IronRuby](https://en.wikipedia.org/wiki/IronRuby), which is a version of Ruby running on the CLR. IronRuby is promised to give us all the power and compatibility of Ruby 1.8.6 with all the goodness of the .NET 2.0 Runtime and beyond.

IronRuby is an open source project and will end up on [RubyForge](https://rubyforge.org/) but for now is available as a download from John's blog. So, I downloaded, unzipped and ran the included Build.cmd and viola...

![IronRubyBuild](https://rbazinet.files.wordpress.com/2007/07/ironrubybuild.jpg)

It built in just under 3 seconds....

I went to my command prompt and to the release directory and ran the resulting rbx.exe and saw the familiar &gt;&gt;&gt; of Ruby's IRB.

I tested the Ruby implementation with a few commands just to see what resulted and everything I ran worked very well. I didn't do any work with using .NET classes, but I will.

One interesting item I noticed was this....can you see it?

[![IronRubyConsole](https://rbazinet.files.wordpress.com/2007/07/ironrubyconsole-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/07/ironrubyconsole.jpg)

In Ruby, typing something like "Hello".class returns a type String but in IronRuby you can see it returns MutableString which is an interesting distinction from .NET, who's strings are immutable. I like the attention to details like this.

I will be running some of my utility classes with IronRuby and throw together some samples that integrate to the CLR. I will also report back what I find. All-in-all, it looks pretty good.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [IronRuby](https://technorati.com/tags/IronRuby), [Microsoft](https://technorati.com/tags/Microsoft), [.NET](https://technorati.com/tags/.NET), [Ruby](https://technorati.com/tags/Ruby)</div>