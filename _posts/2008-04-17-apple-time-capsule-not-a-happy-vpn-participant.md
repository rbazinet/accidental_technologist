---
id: 261
title: 'Apple Time Capsule not a Happy VPN Participant'
date: '2008-04-17T08:51:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=261'
permalink: /apple/apple-time-capsule-not-a-happy-vpn-participant/
dsq_thread_id:
    - '95926038'
categories:
    - Apple
---

[![specs_timecapsule_20080115](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AppleTimeCapsulenotaHappyVPNParticipant_781B/specs_timecapsule_20080115_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AppleTimeCapsulenotaHappyVPNParticipant_781B/specs_timecapsule_20080115_2.jpg) I have been a happy owner of an [Apple Time Capsule](http://www.apple.com/timecapsule/) for the past month or so. It was very [easy to setup](http://www.accidentaltechnologist.com/apple/time-capsule-up-and-running/) and configuring it to work with Time Machine was a breeze and backups seamless. I have been using a Linksys 54GL router as my main router and used the Time Machine as a backup and additional wireless station. I came home last night to find I had no network connectivity. A call to Charter Communications tech support pointed to my router and it sure seemed like it but Charter has been known to have problems and not admit them.

I decided to reassign my Time Capsule as my main router last night and make the transition sooner rather than later. Reconfiguring the router was as easy this time as the last time and in the matter of an hour I had our network with both wire and wireless clients back up and running.

### VPN is the Show Stopper

Everything was fine until today when I needed to VPN into a client site to get some work done and I could not connect. I thought it may have been some configurations settings on the Time Capsule but I found thing obvious, like "VPN Configuration Here". So I decided to check out the Apple support site for a solution. I was greeted by a nice discussion on [Apple's Time Capsule support forum by many others having the same problem with no fix](http://discussions.apple.com/thread.jspa?messageID=6956989). You can see I am not the only one.

[![AppleSupport1](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AppleTimeCapsulenotaHappyVPNParticipant_781B/AppleSupport1_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AppleTimeCapsulenotaHappyVPNParticipant_781B/AppleSupport1_2.jpg)

I am running the AT&amp;T VPN Client, when trying to connect I get a message saying it's authenticating but it just times out. Time Capsule firmware 7.3.1 is supposed to fix VPN issues but has not fixed mine as I verified I have 7.3.1.

One option suggested is to setup the Time Capsule as a pass-through device. This will only work if you have another device behind it if you need DHCP. In my opinion, this is only a hack any and Apple should address issues like this if they plan on being an enterprise player. Today so many of us are either consultants to enterprises or telecommuters to enterprise companies and being able to VPN to sites is important. Maybe enterprise is not on Apple's radar and this is a perfect example.

Another possible solution for the AT&amp;T VPN client is to turn off IPv6. I have had some IPv6 issues on Vista and this may be the issue but hadn't had time to try it out, but based on the support forum it worked for some:

[![AppleSupport2](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AppleTimeCapsulenotaHappyVPNParticipant_781B/AppleSupport2_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AppleTimeCapsulenotaHappyVPNParticipant_781B/AppleSupport2_2.jpg)

### A Step Back

This morning I took my Linksys 54GL and hooked it back up and it worked. I think Charter has some issues they weren't very open about or were doing some updates to infrastructure because the Linksys would not connect last night with two Charter network support folks and myself. Today is a different day and the Linksys has saved the day, the work day anyway.

I am going to revisit some workarounds until Apple has better support for VPN. I likely won't be able to until I get some free time and connecting to clients isn't required for the day. Anyone with a solution, please comment or send me an email.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:91a438f1-5467-4bfc-a8a3-5df3aed36843" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: [Apple](http://technorati.com/tags/Apple),[Time Capsule](http://technorati.com/tags/Time%20Capsule),[VPN](http://technorati.com/tags/VPN)</div>