---
id: 326
title: 'Dell Mini BIOS Upgrade without Windows XP Installed'
date: '2008-12-02T09:00:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=326'
permalink: /technology/dell-mini-bios-upgrade-without-windows-xp-installed/
dsq_thread_id:
    - '95925020'
categories:
    - Technology
---

**DISCLAIMER: Do this at your own risk, it worked for me. I have experience with this type of update so I may overlook some minute details so BE CAREFUL.**

One of the things that really bugs me about Dell is their claimed support for Ubuntu Linux but fail at supporting Linux like they do with Windows XP and Vista. I found this recently sent going to the Dell support site for my Dell Mini 9 to try to download new BIOS updates. My Mini shipped with BIOS version A00, where A02 is out and A03 reported to be available from support, Windows only.

[![DellMiniSupport](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DellMiniBIOSUpgradewithoutWindowsXPInsta_B4FA/DellMiniSupport_thumb_1.jpg "DellMiniSupport")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DellMiniBIOSUpgradewithoutWindowsXPInsta_B4FA/DellMiniSupport_4.jpg)

Notice in the image above, there is not option for Ubuntu on the Dell Mini supported operating systems, even though Dell ships Ubuntu on their systems. I don?t know why this is the way it is, perhaps Linux is still too hard for the average user. I don?t know.

This post is not a complaint about Dell?s lack of Linux support files but how to upgrade the Dell Mini BIOS without having Windows XP installed. I have to say it is not trivial and is likely not for the inexperienced user but is it not bad overall.

### Overview

The normal way we update our BIOS in any of our systems to run a BIOS update utility in our current operating system which either downloads a particular version of the target BIOS or the user points to a BIOS file on their local hard disk or maybe even booting off of a CDROM with a slimmed down operating system to install the BIOS. We don?t have that luxury with the Dell Mini if we are not running Windows XP.

The process here is still very much the same, we need to boot up and operating system and run a utility to update our BIOS to a new version which we specify on disk.

I have successfully updated my Dell Mini from BIOS A0 to A03, yes A03 which is not even available yet. If you are not that <strike>stupid</strike> brave then A02 is available and will work fine.

### Creating a Bootable Device

Well, this is probably the biggest sticking point on the Dell Mini. The Mini has no CDROM drive so we need to decide how to boot off of an alternative device. If you had an external hard drive or external CDROM drive you could probably use it, I don?t so I needed to figure out what to use. Just like [I explained in booting off of a USB key when installing Ubuntu on my Mini](https://accidentaltechnologist.com/technology/installing-ubuntu-8-10-on-the-dell-mini/), I will do the same but create a USB key with DOS on it.

I found and used a handy tool that says it is from HP but I don?t know for sure. It is called the [HP USB Disk Storage Format Tool](https://www.bay-wolf.com/usbmemstick.htm). The web site gives good direction how to use it and even includes a link to a Windows 98 DOS image, which is just a text-only version of Windows 98, nothing graphical. The user interface is pretty intuitive for anyone with some prior experience formatting a floppy disk or hard drive:

[![HPUSB-Tool](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DellMiniBIOSUpgradewithoutWindowsXPInsta_B4FA/HPUSB-Tool_thumb.jpg "HPUSB-Tool")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DellMiniBIOSUpgradewithoutWindowsXPInsta_B4FA/HPUSB-Tool_2.jpg)

Only USB devices come up under the Device menu but be careful you don?t format the wrong drive.

### Acquiring an Updated BIOS Version

Once the USB key contains a bootable DOS image, the next process is to find the Dell BIOS I am looking for, A03. I found a forum post from one of the resources I mentioned in a [previous post](https://accidentaltechnologist.com/technology/dell-mini-resources/) linking to a BIOS update someone put together. Check out the [original post](https://www.mydellmini.com/forum/bios-upgrade-utility-split-from-bios-upgrade-failure-topic--t1063s10.html) in the forum. You can download the BIOS files from [here](https://www.mydellmini.com/forum/download/file.php?id=218).

I downloaded the flashBIOSv.2.rar file, extracted out the flashBIOSv.2.exe manually. The .EXE runs an HP utility that hung on my Vista 64 system, probably because it was 64-bit. The extracted archive contains several directories but only one we care about, the Dell folder. Opening that folder gave us a list of a small number of files:

[![DellMiniBiosDir](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DellMiniBIOSUpgradewithoutWindowsXPInsta_B4FA/DellMiniBiosDir_thumb.jpg "DellMiniBiosDir")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DellMiniBIOSUpgradewithoutWindowsXPInsta_B4FA/DellMiniBiosDir_2.jpg)

The idea now it to take and select all files here and copy to the root of your USB stick. Once this is done, that is all there is to it.

### Boot off of USB Key

Powering on the Dell Mini and watching for the prompt to press ?0? to select boot source. Once the menu comes up select USB boot device and you will soon be prompt for the version of the BIOS you want to install. You should have the choice of the latest, A03, or you can chose to install an older version, maybe A02.

**Note:** Once the option is chosen the BIOS update is happening, so no second chance. Be sure you are no on battery power but plugged into a good power outlet.

Upon rebooting and entering into Setup I found I was now on A03. Everything has been working great since the update, including my Ubuntu 8.10 installation.

I hope this helps someone else. I would think we will see some utilities coming from Dell to make this a bit easier process, if they are serious about supporting Linux.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:4d19c2e2-2d02-4f68-8a37-d2c6592cc953" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Dell Mini](https://technorati.com/tags/Dell+Mini),[BIOS](https://technorati.com/tags/BIOS)</div>