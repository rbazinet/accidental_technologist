---
id: 380
title: 'A Serious Windows Home Server Pain Point'
date: '2009-10-19T12:25:20-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=380'
permalink: /technology/a-serious-windows-home-server-pain-point/
dsq_thread_id:
    - '95926414'
categories:
    - Technology
---

[![pain](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/WindowsHomeServerPainPoint_9B8B/pain_thumb.jpg "pain")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/WindowsHomeServerPainPoint_9B8B/pain_2.jpg) I [talked about my experiences with not having a solid backup strategy back at the end of August](https://accidentaltechnologist.com/technology/when-neglecting-backups-becomes-costly/). My solution included using a Microsoft Windows Home Server (WHS) system to handle backups for all of the computers on my home/office network. I wanted to give a bit of follow-up to the experience and explain a huge pain point I found.

### Reflection

I have been using the Acer Aspire Easystore H340 Windows Home Server for the past 6 weeks, backing up several computers on a nightly basis and it has been working flawlessly. Computers are set to backup each night between 6pm and 11pm and this gives WHS plenty of time to complete all incremental backups with time to spare. Backing up from Macs using SuperDuper works great too.

The WHS has been great to store all of the software we use on a regular basis when we need to share installation files.

### A Pain Point

I did run into a rather annoying problem this weekend that resulted in a kludgy workaround. When I setup the WHS in August I had purchased an extra disk to be using in the WHS after I was confident my Windows development system was functioning fine. The idea was to take out the 1TB (Western Digital Green) and replace with a 1 TB Western Digital Black drive, which is faster than the green.

I cloned the green drive to the black, took out the green and rebooted the development system, all worked great. I was informed by WHS that my system had a new hard drive and I needed to log in to WHS Console and configure to recognize the new disk. When running the wizard, I was greeted by this message when almost to the end:

> This computer is not online or Windows Home Server cannot access the computer's hard drive. Please make sure the computer is powered on and connected to your home network.

After much trial-and-error I could not get the new drive to be recognized by WHS. It was aware there was a new drive but could not recognize it was a replacement for the old drive. I came up with a solution that worked but is not ideal:

1. Uninstall Windows Home Server Connector
2. While using Windows Home Server Console, remove PC from list of backed up PC?s.
3. Cleanup backup database using the "Cleanup Now" button in the WHS Console
4. Reinstall Windows Home Server Connector ? install from either original DVD or by accessing via the Software share on WHS.
5. Retry setting up backups ? should now be able to configure backup for system.
 
I performed actions 2-3 from the actual WHS itself by utilizing a Remote Desktop Connection to the WHS. I then had to reconfigure the backup for my system, including all of the folders I had previously Excluded. This wasn?t a surprise but don?t forget to do this or your backup might be a lot bigger than expected.

**UPDATE:** Joel Ross made a comment suggesting the correct way to change out the disks under WHS:

> I think (and I could be wrong here) the proper way to do this would have been to do a back up with the old disk in the dev box, replace the drive in the dev box, and then do a restore on the dev box using the windows home server software. I haven't replaced a drive in any of my machines yet, but that's what I've read others doing.

### Conclusion

This solution certainly worked but was not a very clean and user-friendly way of replacing a disk. This begs the question ? what happens if I have a disk failure and need to replace the drive, will I be able to connect and restore? The answer is not clear at this point.

After some searching around the web and there are many reports of this issue back to the WHS CTP and it has yet to be resolved as of WHS Service Pack 2. It appears it could be due to the fact the new drive is not on the same SATA connection as the previous drive but, in my opinion, this should not matter. **A fix for this is needed or I will not have as much confidence as I once had for Windows Home Server as a key backup solution**.

If anyone has a better solution than the one I have found, I would love to hear it. If there is a released fix for this, I would like to hear about it as well. I am running on Windows 7 Ultimate RTM, if that matters.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:f7a2c48d-8ec6-4ad3-b6ac-7cdd9cc0d4d5" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Windows Home Server](http://technorati.com/tags/Windows+Home+Server),[Microsoft](http://technorati.com/tags/Microsoft),[Windows 7](http://technorati.com/tags/Windows+7)</div>