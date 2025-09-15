---
id: 386
title: 'Enabling Wireless on a Dell Mini 9 Running Ubuntu 9.1 Netbook Remix'
date: '2009-11-20T11:23:29-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=386'
permalink: /technology/enabling-wireless-on-a-dell-mini-9-running-ubuntu-9-1-netbook-remix/
dsq_thread_id:
    - '95926437'
categories:
    - Technology
---

I have had a Dell Mini 9 for quite some time now and played around installing various flavors of Linux on it, more as an exercise than anything else. The recently release of Ubuntu 9.1 which has a distribution configured especially for netbooks, piqued my interest. The download is called [Ubuntu Netbook Remix](https://www.ubuntu.com/getubuntu/download-netbook) and is available as an ISO. There are various instructions for installing, including a thumb drive, but I decided to burn to CD and boot off of an external USB CD-ROM drive I have just for this occasion.

The installation goes pretty quickly and is uneventful, until booting up the OS for the first time; no wireless care detected. It seems this is a [known issue](https://bugs.launchpad.net/ubuntu/+source/jockey/+bug/449268) with Broadcom wireless and has a variety of solutions.

I fixed the problem in a couple of steps:

1\. The Dell Mini has a wired Ethernet port, so I grabbed a cable and plugged into my router. Internet connection established.

2\. The restricted Broadcom driver needs to be installed so I ran these commands:

> sudo apt-get update   
> sudo apt-get --reinstall install bcmwl-kernel-source

3\. Setup connection to wireless network, with proper security and pass phrase.

4\. Done!

It was all pretty easy but pretty annoying little issue with this distribution only on certain hardware. Overall Ubuntu 9.1 on the Dell Mini is a really nice experience, very well done.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:84af221d-8008-45cc-8da3-d4cc56ff30a6" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Dell Mini 9](https://technorati.com/tags/Dell+Mini+9),[Ubuntu](https://technorati.com/tags/Ubuntu),[Ubuntu Netbook Remix](https://technorati.com/tags/Ubuntu+Netbook+Remix),[Wireless](https://technorati.com/tags/Wireless)</div>