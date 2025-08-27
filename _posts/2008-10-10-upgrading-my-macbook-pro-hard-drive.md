---
id: 314
title: 'Upgrading My MacBook Pro Hard Drive'
date: '2008-10-10T12:49:27-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=314'
permalink: /apple/upgrading-my-macbook-pro-hard-drive/
dsq_thread_id:
    - '95924942'
categories:
    - Apple
---

[![TS_7K320](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UpgradingMyMacBookProHardDrive_B0EF/TS_7K320_thumb.jpg)](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UpgradingMyMacBookProHardDrive_B0EF/TS_7K320_2.jpg)I have been using my MacBook Pro more and more lately and quickly finding hard drive space shrinking. The addition of [VMWare Fusion](http://www.vmware.com/products/fusion/) and some virtual machines seems to eat up hard drive space pretty quickly. The stock 160G Fujitsu 5400rpm hard drive is also a bit slower than I would like.

I did a bit of investigating and a couple of conversations on Twitter I found out the job of upgrading the hard drive in the MacBook Pro is a doable task with the right tools and some guidance. I have been working on computers in one shape or form for the past two decades so I figured I could handle one MacBook Pro. Please note, changing the hard drive yourself probably voids the warranty but, it's my MacBook Pro so why not.

The hard drive I decided to upgrade to is the [Hitachi Travelstar 7K320](http://www.hitachigst.com/portal/site/en/menuitem.57ddeb9b412fed7ac41d3814eac4f0a0/). The drive is a 320G, 7200rpm drive with a nice cache and the right form factor. I was able to find this drive at [ZipZoomFly for $89](http://www.zipzoomfly.com/jsp/ProductDetail.jsp?ProductCode=10008894&prodlist=celebros) after a $30 mail-in-rebate. I have had some great luck over the years using Hitachi drives so it seemed like a great deal. ZipZoomFly always provides great service to boot.

### Upgrading

I follow a few of my own steps here in conjunction with a couple tutorials I found online and from some folks who were also upgrading.

**Step 1: Backup** - this is huge, make sure you have a good backup of the hard drive before upgrading. I used [SuperDuper](http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html) to create a full backup of my MacBook Pro. This is NOT the image of the disk but a full backup to an external hard disk. I have a 160G external USB drive for this purpose. I think the back up took a bit over an hour.

This backup should be a bootable backup, which I tested before installing the new hard drive. Apple states they don't support booting off of an external USB drive, just a Firewire type. I am a rebel and don't really care if Apple supports it or not, it's my laptop and I will do as I please. Seriously, I figured if it worked, great, otherwise I would be forced to pickup a Firewire drive. In order to book off of the external drive you need to have the MBP powered off and while holding the **Option** key down, power it on. It will search devices capable of booting from and sure enough the external USB is available. I booted from it and tried a few things and all was good.

**Step 2: Remove old hard drive and install new one** - I did some homework on how difficult it would be to replace a MBP hard disk before purchasing a new one. I found a [tutorial from iFixIt](http://www.ifixit.com/Guide/Mac/MacBook-Pro-15-Inch-Core-2-Duo/Hard-Drive-Replacement/115/10/Page-1) which gives some nice details on the process. The tutorial is 6 pages with nice photos detailing the process, pretty hard to go wrong. I just took my time and double-checked everything.

[![MacBookInternal](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UpgradingMyMacBookProHardDrive_B0EF/MacBookInternal_thumb.jpg)](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UpgradingMyMacBookProHardDrive_B0EF/MacBookInternal_2.jpg "http://blog.phatboyg.com/2008/07/18/hitachi-7k320-hard-disk-upgrade-in-macbook-pro/")

**Step 3: Boot from external USB drive** - this is, as before when testing, a key step and if it doesn't work then nothing will work from here. Since I tested the external backup before I replaced the drive, I knew this would work. Again, holding down the Option key while powering on which shows only the external USB as an option. Boot worked fine.

**Step 4: Initialize new drive** - this was one step I never saw in any reference but the new 320G hard drive needed to be formatted.

**Step 5: Restore backup** - Using SuperDuper again and now restoring from the backup to the newly formatted 320G hard disk the steps are pretty much the same as when backing up except for the new source and destination drives. I also told SuperDuper to make the new drive as the startup drive when it was done restoring. The restore took just about an hour and seemed much faster than the back with faster transfer rates.

**Step 6: Restart** - After the backup restored I then rebooted to the new hard drive and all looked well. I did check permissions on the new disk and some seemed to be wrong so I Repaired Permissions and proceeded to test my applications and everything is now zipping right along.

I hope this helps.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:c1823e7e-8eee-417a-81b9-39bae3afb759" style="padding-right: 0px; display: inline; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Apple](http://technorati.com/tags/Apple),[MacBook Pro](http://technorati.com/tags/MacBook%20Pro),[Upgrade](http://technorati.com/tags/Upgrade)</div>