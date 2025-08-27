---
id: 257
title: 'Ruby on Rails and IIS7 Playing Nicely Together'
date: '2008-04-04T00:01:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=257'
permalink: /ruby-on-rails/ruby-on-rails-and-iis7-playing-nicely-together/
dsq_thread_id:
    - '95924733'
categories:
    - 'Ruby on Rails'
---

[Ruby on Rails](http://www.rubyonrails.org) has been around for a few years now and has become a hugely popular web development framework, but not on Windows and Internet Information Server (IIS). Rails has run on Linux and Max OSX almost exclusively, until recently.

The Ruby on Rails Wiki has a [very good article](http://wiki.rubyonrails.org/rails/pages/HowToConfigureIIS7) on setting up Ruby on Rails using IIS7.

### Enter FastCGI

[FastCGI](http://www.fastcgi.com/) is the key to getting Rails running in IIS. The FastCGI web site describes FastCGI as:

> FastCGI is a language independent, scalable, open extension to CGI that provides high performance without the limitations of server specific APIs. See the [docs](http://www.fastcgi.com/#Docs) for more details.

Dave Scruggs has a nice short tutorial about his experience getting [Rails running on Windows Visata SP1 and IIS 7 with FastCGI](http://blogs.msdn.com/dscruggs/archive/2008/03/31/setting-up-ruby-on-rails-with-iis-7-0-and-vista-sp1.aspx). One of the really nice features of Vista SP1 is that it includes FastCGI built-in.

In the event you are running IIS7 without FastCGI built in, Dave points out a good tutorial from Carlos Caneja called [Install FAST CGI on IIS7](http://blog.caneja.com/archive/2007/10/26/install-fast-cgi-on-iis7.aspx).

FastCGI is used to serve applications on IIS7 for languages such as:

- Ruby
- Python
- PHP
- and others....

### What about IIS6?

Most of the recent resources on the web I have seen show FastCGI applications running on IIS7, mainly because it is built-into Vista SP1 and that avoids some configuration difficulties but IIS6 does has FastCGI support for it. I have not personally attempted it but I may in the future. The [IIS.NET](http://www.iis.net) site has some information about using FastCGI on IIS6.

- [IIS.net : FastCGI Extension for IIS6 ? GoLive to RTM release upgrade](http://blogs.iis.net/mailant/archive/2007/12/07/fastcgi-extension-for-iis6-golive-to-rtm-release-upgrade.aspx)
- [FastCGI Extension for IIS6.0 - RTM](http://www.iis.net/downloads/default.aspx?tabid=34&g=6&i=1521)

It seems the primary support for FastCGI from Microsoft is on IIS7 but not everyone may be at the point where their web servers are running IIS7 just yet.

### Personal Setup

The tutorials given here are very good and work really well with Vista. I have a VMWare VM setup on my MacBook Pro running Vista SP1, the setup was flawless. I have an advantage of many years of IIS experience with a couple years of Ruby on Rails experience, which I think does help.

I would like to see some performance numbers of running Rails or any FastCGI hosted application under IIS. I am not aware of any but would like to hear back from someone putting IIS and FastCGI through it paces.

<div class="wlWriterSmartContent" id="abc40b49-67d3-4513-9b78-277e44fbfd53" style="display:inline;margin:0;padding:0;">Technorati Tags: [Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails),[IIS](http://technorati.com/tags/IIS),[Microsoft](http://technorati.com/tags/Microsoft),[Vista](http://technorati.com/tags/Vista)</div>