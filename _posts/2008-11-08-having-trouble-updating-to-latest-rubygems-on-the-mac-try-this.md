---
id: 321
title: 'Having Trouble Updating to Latest RubyGems on the Mac?  Try This.'
date: '2008-11-08T13:51:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=321'
permalink: /ruby/having-trouble-updating-to-latest-rubygems-on-the-mac-try-this/
dsq_thread_id:
    - '95911925'
categories:
    - Ruby
---

I wanted to install the [official release of Merb 1.0](http://brainspl.at/articles/2008/11/08/merb-1-0) but found I needed to have RubyGems 1.3 installed to do so, no big deal right? Well, on my MacBook Pro running 10.5, I found running the usual command to update RubyGems:

> $ sudo gem update --system

Gave me the following:

> Updating RubyGems  
> Updating rubygems-update  
> Successfully installed rubygems-update-1.3.0  
> ERROR: While executing gem ... (NameError)  
> undefined local variable or method `remote\_gemspecs' for #  
> $ gem --version  
> 1.2.0

Thinking I had typed something wrong because updating RubyGems always works, I tried again only to see this:

> $ sudo gem update --system  
> Updating RubyGems  
> Nothing to update  
> $ gem --version  
> 1.2.0

A bit of searching around the web I found a blog with a post matching my exact problem with a solution that worked [perfectly from Wincent.com](http://rails.wincent.com/wiki/Updating_to_RubyGems_1.3.0_on_Mac_OS_X_Leopard_10.5.4). I then proceeded to install Merb and now have Merb 1.0 installed.

Technorati Tags: [RubyGems](http://technorati.com/tags/RubyGems),[Merb](http://technorati.com/tags/Merb)