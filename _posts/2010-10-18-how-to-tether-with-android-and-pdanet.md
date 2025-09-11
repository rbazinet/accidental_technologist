---
id: 536
title: 'How-To Tether with Android and PDAnet'
date: '2010-10-18T08:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=536'
permalink: /technology/how-to-tether-with-android-and-pdanet/
dsq_thread_id:
    - '158060889'
categories:
    - Technology
tags:
    - Android
    - 'Droid X'
    - How-To
    - Tethering
---

One of the annoying things with a non-jailbroken iPhone is the lack of tethering. Tethering is the ability to use your 3G-enabled phone and its Internet connection with a computer. When I am on the road I find times it would be helpful to be able to tether my Droid X to my laptop but not for the $20/month Verizon changes.

I was put onto the application known as PdaNet. The application consists of a piece of software that runs on the Android phone and a client which runs on the computer you want to make use of tethering, [both Mac and Windows clients](http://junefabrics.com/android/download.php).

The [directions from the June Fabrics web site](http://junefabrics.com/android/mac.php) are pretty good but were missing a few details I stumbled over the first time I tried to set this up. Maybe if I was a long-time Android user I might have not had any issues.

### Setup

So, the steps I used to setup tethering of my Motorola Droid X to my MacBook Pro.

1\. **Install the Desktop Client** - visit the June Fabrics web site and [download the Mac client](http://www.junefabrics.com/bin/PdaNetA242.pkg). I am on a Mac, as I said, but a client is available for Windows as well. The installation was fairy straight forward, requiring a reboot to complete the installation.

2\. **Install the Android Client** ? install on the phone, grab the app from [the Android Marketplace](market://search?q=pname:com.pdanet).

 [![PdaNet-QR](/assets/img/2010/10/PdaNetQR.png "PdaNet-QR")](market://search?q=pname:com.pdanet)

3\. **Enable Tethering** ? run the PdaNet application on the phone and select ?Enable USB Tether?.

[![pdanet_setup](/assets/img/2010/10/pdanet_setup_thumb.png "pdanet_setup")](/assets/img/2010/10/pdanet_setup.png)

Turning it off later is pretty simple, just run the software on the phone again and you get only one option.

[![pdanet_enabled](/assets/img/2010/10/pdanet_enabled_thumb.png "pdanet_enabled")](/assets/img/2010/10/pdanet_enabled.png)

4\. **Enable USB Debugging** ? on the phone, go to Settings-&gt;Applications-&gt;Development and check "USB Debugging".

5\. **Configure USB Connection** ? this is the step that had me scratching my head. As you should be able to see, the selection here says ?USB Mass Storage?. This is key since the default ?PC Mode? does not work to tether the phone.

[![usb_config](/assets/img/2010/10/usb_config_thumb.png "usb_config")](/assets/img/2010/10/usb_config.png)

6\. **Connect the Phone** ? armed with your phone to USB cable, plug into the USB port of the Mac. Now, if all goes well, visiting the PdaNet menu on the Mac now finds the phone.

[![PDANET_Connect](/assets/img/2010/10/PDANET_Connect_thumb.png "PDANET_Connect")](/assets/img/2010/10/PDANET_Connect.png)

Per the June Fabrics web site:

> Now when you connect your phone to the computer, you should see the menu icon changes state, click on it to connect. When the icon stops blinking and turns blue, your computer should be online.
> 
> Network traffics on the Mac will go through PdaNet only if your system does not have other connectivities.

So, if you are testing this out and are connected via Wi-Fi or an Ethernet cable, it will still go through these connections. Disable them to test.

### Results

The bottom line is, it works. It isn?t exactly fast but gets the job done and does it well. You can see the results of the speed test from Speakeasy.net of my tethered Droid X.

[![3GSpeed](/assets/img/2010/10/3GSpeed_thumb.png "3GSpeed")](/assets/img/2010/10/3GSpeed.png)

I would like to know what folks are getting for speed from their Verizon Mi-Fi. This will certainly work and for most things like email, Twitter, blogging and less bandwidth-intensive jobs, it will work well.