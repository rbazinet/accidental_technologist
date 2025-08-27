---
id: 592
title: 'Blog Move to WPEngine'
date: '2011-01-13T17:42:27-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/technology/blog-move-to-wpengine/'
permalink: /technology/blog-move-to-wpengine/
dsq_thread_id:
    - '208736577'
categories:
    - Technology
tags:
    - WordPress
    - WPEngine
---

[![Wpe 125x125](/assets/img/2011/03/wpe-125x1251.jpg "wpe-125x125.jpg")](https://secure.wpengine.com/affiliate/scripts/imp.php?a_aid=4d948e6a5f186&a_bid=0f3d7f5a)

I have been having a lot of problems lately with my self-hosted WordPress instance on one of my Linode ?slices?.? It seems around 2:00 AM, starting a few weeks ago, CPU utilization would spike to astronomical numbers and only get worse.? The solution was to reboot the node and things would return to normal.? This is not exactly a great way to spend my time as I am not a Linux admin guru nor do I want to be.

The strange thing about this sudden CPU problem is that nothing had changed on the node, no configuration changes, no upgrades?nothing.? Peering at the processes causing the issue revealed the culprit to be Apache.? A few hours of trying to fix this myself made me come to the realization that I was really wasting my time and I needed to move my WordPress site to someone who knew what they were doing.

After a bit of investigating and feature/price comparison, I settled on [WPEngine](https://secure.wpengine.com/affiliate/scripts/imp.php?a_aid=4d948e6a5f186&a_bid=0f3d7f5a).??? They offer just about every feature that made me self-host in the first place, including being able to manage my installation; WP versions, plugins, themes, skins, etc.? They do offer things better than my self-hosting provided:

- Managed Linux, PHP, MySQL, etc.
- DDos Protection
- Managed Backups
- Memcached
- Managed Firewall

These are all the things I don?t want to have to worry about and don?t have the skills to manage correctly.

So as of January 12th, this blog now runs on WPEngine.? Oh, they also offer expert support and I can vouch for it.? I took full advantage of it after totally hosing up importing my current blog into the new site.? They helped me quickly and I was up and running in a matter of a couple hours, it actually took the longest for the DNS changes to take effect.

The [company consists of industry veterans](http://wpengine.com/about/) who are WordPress experts indeed.

The site seems much snappier now and I don?t have to worry about CPU utilization on it any longer.