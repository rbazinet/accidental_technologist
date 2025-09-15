---
id: 246
title: 'Time Capsule Up and Running'
date: '2008-03-10T10:56:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=246'
permalink: /apple/time-capsule-up-and-running/
dsq_thread_id:
    - '95925961'
categories:
    - Apple
---

I found some time this weekend to unpack the Time Capsule, set it up and perform my first back up. I was going to provide the "unboxing" post I mentioned in a previous post but lost interest. I am sure there are a ton of those types of posts out there if someone wants to search for them. One thing I was surprised by was the size of the device. It is a lot smaller than I expected and almost completely silent.

[![TimeCapsuleRunning](https://rbazinet.files.wordpress.com/2008/03/timecapsulerunning-thumb.jpg)](https://rbazinet.files.wordpress.com/2008/03/timecapsulerunning.jpg)

### Setting up the Time Capsule

The first thing I needed to do to install and configure the Time Capsule was to install the Airport utility off of the included Time Capsule CD. Once installed I ran the Airport Utility from the Applications-&gt;Utilities folder.

I chose to setup Time Capsule wirelessly since it is the easiest, if it works. It is pretty interesting that my MacBook Pro disconnected from my local wireless network and connected to the Time Capsule. I probably shouldn't be surprised, but I was.

The overall configuration was very easy, just stepping me through the configuration using a wizard. I have an existing wireless network so I just added the Time Capsule to use that network. I could have just as easily replaced the current network with the Time Capsule since it is a full Airport base station. I may end up doing that at some point to take advantage of the 802.11n capabilities, but for now I just wanted to keep it simple.

Once I stepped through using the wizard the Time Capsule rebooted and my MacBook Pro was back on my original wireless network. The amber light experienced on the Time Capsule during setup was now a nice green color, indicating all was well.

### The First Time Machine Backup

I took my MacBook Pro and ran Time Machine for the first time and was delighted to see it find my Time Capsule right away and told me it would be starting a backup in 2 minutes. I told Time Machine to skip my VMware Fusion virtual machines so it wouldn't be backing those up all the time.

The backup started right on time and found 45g to backup. The backup seemed to run very slow, taking about 16 hours to complete. I am on a 802.11g network but I just figured it would take a lot less. I didn't try to figure out how long it should take but it was a lot longer for this initial setup. I will be monitoring this in the future so I can determine if I need to change some things to get better performance.

### Connecting with Windows Clients

I bought a Time Capsule so I would have Time Machine natively recognize it but also to backup my Windows clients too. I was a little concerned with Apple's support for Windows clients but was pleasantly surprised by the experience. The key is to make sure File Sharing is turned on as seen in this screen shot.

[![TimeCapsuleFileShare](https://rbazinet.files.wordpress.com/2008/03/timecapsulefileshare-thumb.jpg)](https://rbazinet.files.wordpress.com/2008/03/timecapsulefileshare.jpg)

Notice also the Workgroup is the Windows Workgroup on your network. Once I set this and performed an Update the Time Capsule appeared in the list of my network devices in my workgroup. Bringing up Windows Explorer shows the Time Capsule named Backup in the list:

[![WindowsExplorer](https://rbazinet.files.wordpress.com/2008/03/windowsexplorer-thumb.jpg)](https://rbazinet.files.wordpress.com/2008/03/windowsexplorer.jpg)

When selecting **Backup** in the tree the user is prompted for credentials. I was not sure of the user name so I chose the name of the device, Backup, and the password is the one chosen during the initial setup. I was able to connect right away and create a new folder for my Windows files.

[![WindowsExplorerConnected](https://rbazinet.files.wordpress.com/2008/03/windowsexplorerconnected-thumb.jpg)](https://rbazinet.files.wordpress.com/2008/03/windowsexplorerconnected.jpg)

You can see the folder Time Machine created for my MacBook Pro backup.

### Conclusion

I am really happy with the experience of setting this device up, it was easy and just worked. I will follow-up later once I use it for a while both from my MacBook Pro and from Windows. The only downside to the experience was how long it took to perform the initial 45g backup, which was a long time. I may not have had my expectations set correctly.

The status back in Time Machine only tells the user how many files it is backing up, how much data needs to be backed up in total and a running status of the amount of data backed up. I would like to see an estimated time to completion and more importantly, my current data transfer rate.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Apple](https://technorati.com/tags/Apple),[Time Capsule](https://technorati.com/tags/Time%20Capsule),[Time Machine](https://technorati.com/tags/Time%20Machine)</div>