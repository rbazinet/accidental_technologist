---
id: 1031
title: 'Website Filtering Using OpenDNS'
date: '2015-05-07T09:30:16-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=1031'
permalink: /technology/website-filtering-using-opendns/
dsq_thread_id:
    - '3744266298'
categories:
    - Technology
tags:
    - opendns
    - Software
    - 'website filtering'
---

I happen to have a 15 year old at home who insists on using websites and chat services that distract her from more important academic activities. The ability to apply some website filtering is a topic I?ve learned a bit about over the past few weeks.

I can testify first-hand that the Internet can be a giant waster of time. Services such as ooVoo, SnapChat, Instagram and others can be fun to use and share with friends but can interfere with academic pursuits. We also found an increasing number of websites not family friendly.

Having a conversation with a friend who was facing the very same issues, he suggested?[OpenDNS](https://www.opendns.com/ "OpenDNS"). Surprisingly, I had heard of them. I decided to take a look at their free service level.

Setup was really simple. The first step is to switch from using Google DNS to OpenDNS name servers. A quick router change and we were switched over.

OpenDNS has quite a few settings to restrict sites but nothing is turned on by default, so after switching name servers you really won?t be able to tell the difference. ?Name lookups seemed to be faster but that?s hard to measure.

Visiting all the settings pages isn?t really necessary but good to see what?s available.

## Security Settings

![Website Filtering - Security Settings](/assets/img/2015/05/2015-05-06_16-48-11.jpg "2015-05-06_16-48-11.jpg")

The security settings are flexible with nice defaults. These are the defaults and I haven?t really seen a need to change these.

## Dynamic IP Update

Use a cable provider and have a dynamic IP address? No problem. Simply enabling Dynamic IP Update in Settings allows update of your dynamic IP address with the DNS update client. The client runs on your Mac or Windows PC and sits up in the toolbar just waiting for your Internet provider?s DHCP address to change.

I love when I can just set it and forget it.

## Default Settings for Website Filtering

![Website Filtering - Custom Security Settings](/assets/img/2015/04/2015-04-28_17-06-081.jpg "2015-04-28_17-06-08.jpg")

It?s easy to set a variety of different levels of security. You can view and customize any level. I wanted control over the categories being filtered so I chose the custom level. It?s just as easy to pick one of the three levels (High, Moderate, Low) and just customize their defaults.

Filtering this way takes a big swing at generally offensive website categories. Since each category is a curated list of websites, this may result in some sites being blocked you don?t wish to be blocked and some not blocked that should be. There is an easy way to take care of this ?Manage Individual Domains?.

## Manage Individual Domains

![Website Filtering - Manage Domains](/assets/img/2015/04/2015-04-28_17-15-20.jpg "2015-04-28_17-15-20.jpg")

The ability to add domains *not* on the groups of websites defined by OpenDNS is really nice. You have the ability to add a list of specific domains you want to make sure no one can visit.

You?d be surprised how many websites use doubleclick and googleleadservices. They get blocked and it feels pretty good to stop that bit of unwanted traffic.

Have a website being blocked but you need access? No problem, add to the list of sites you want to never block. Very flexible indeed.

## Does it Work?

You bet it works and it works really well. Here is me trying to visit the oovo.com site:

![Website Filtering - Blocked Domain](/assets/img/2015/04/2015-04-28_17-08-13.jpg "2015-04-28_17-08-13.jpg")

## Stats

What good is a service without stats?

![Website Filtering - Stats](/assets/img/2015/04/2015-04-28_17-22-07.jpg "2015-04-28_17-22-07.jpg")

I can see the total requests on the network, which domains are being blocked and how often, as well as see the domains which are *not* blocked and determine which are good candidates to add to the blocked list.

![Website Filtering - Blocked List](/assets/img/2015/04/2015-04-28_17-19-48.jpg "2015-04-28_17-19-48.jpg")

## Success

Implementing OpenDNS was really easy. Their onboarding experience was very straightforward.

Previously we had been using Google DNS and noticed slowness at times. Over the years I have felt less interested in using Google services, so moving to different DNS was a nice win.

Using OpenDNS seems to give us really fast name resolution but more importantly websites are being blocked that are not fit for young eyes. It also lets a data geek have good insight into all the domains we access daily and find more candidates to block.