---
id: 372
title: 'When Neglecting Backups Becomes Costly'
date: '2009-08-31T10:21:32-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=372'
permalink: /technology/when-neglecting-backups-becomes-costly/
dsq_thread_id:
    - '95925335'
categories:
    - Technology
---

I recently had a setback in my work because I had failed to backup my system properly and it cost me dearly. The term ?dearly? is really relative and it could have been much worse.

My daily work consists of both Ruby on Rails work and ASP.NET projects for clients. Since both of these web frameworks have completely different environments, I have different operating systems to think about backing up. The ASP.NET work is done on native Vista 64-bit and on VMWare VM's running Windows 2003 server instances to keep client work isolated. The Ruby on Rails work is done solely on my Apple MacBook Pro.

My main development system for ASP.NET client work suffered a sudden and catastrophic hard disk failure which was the main hard drive for my client virtual machines. The disk never started acting strange, as others I have had in the past, no read errors, not entries in the Windows Event Log but rather a sudden disappearance from Windows. Upon examination on reboot, the drive can be heard clicking which usually means there is a head-related issue. This particular drive was only about 6 months old and is a Seagate Barracuda 750G SATA, one of the 7200.11 which apparently is known to have these types of sudden failures. I was not aware until I asked around after the fact.

The result of this failure meant I had to go to my last backup to restore, which was 03/2009, 5 months ago. This was certainly going to be painful and resulted in losing 5 months of email since one account uses Outlook as the client, many Word documents and worse of all was the client development work since my last commits to their source control system. This will prove to end up costing me a week of coding work and trying to remember what was done...not good at all.

After first replacing the hard disk with a Western Digital Caviar 1TB drive and restoring what I could, the updates to the operating system and other patches took a few hours. The replacement of code took 4 days of working longer hours than normal. The email was a total loss for 5 months and all-in-all resulted in a few days of lost time which adds up to several thousand dollars. Not acceptable in any way, my backup strategy needed to be looked at and fixed.

### Original Backup "Strategy"

My recent so-called backup strategy consisted of the following:

- [JungleDisk](https://jungledisk.com/) on OSX and Vista used to backup documents an photos to Amazon S3 - this works great but takes a lot of time and not really intended to backup large (gigabyte) files or complete operating systems.
- [SuperDuper](https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html) on OSX to backup complete system to external USB drive - this works great and has helped me in the past. The major drawback here is the process is manual but be made to be a scheduled task and an incremental update.
- Time Machine and Time Capsule - this may seem a bit redundant to using SuperDuper and an external USB drive. It probably is but Time Machine really gives me a nice view into the past and lets me restore very easily.
- [Acronis TrueImage](https://www.acronis.com/homecomputing/products/trueimage/) on Vista to backup complete system to external USB drive - also works great and can be scheduled. Notice I said "can be scheduled", which works if you actually set up a schedule.
- [Dropbox](https://www.getdropbox.com/) for various documents for clients and reference.
 
As you can see this mix of backups is fine if done all the time but the manual nature of some of some aspects can lead to inconsistency. This was a haphazard mix of inconsistent backups.

### New and Improved Backup Strategy

After the failure and all of the lost time, I decided to fix the problem now and not have to face this again. Since I needed a solution that will back up both Mac and Windows systems it had to be cross-platform. The obvious choice to me was to look at a Windows Home Server. As I write this, two companies make solutions, HP and Acer. I reviewed each company's offerings and determined HP used Seagate Barracuda drives while Acer reportedly used Western Digital. This fact alone was the deciding factor to purchase from Acer.

I ordered an [Acer Aspire Easystore H340 from NewEgg](https://www.newegg.com/Product/Product.aspx?Item=N82E16859321013) and it arrived in a couple days. The specifications are pretty decent:

- Intel Atom 1.6Ghz Processor
- 2GB Memory
- 1 TB Storage - expandable with 4 drive bays, 3 free
- Gigabit Ethernet Port
- 5 USB ports for external storage or printers
 
Upon receiving, the setup was pretty easy. Client software gets loaded on each system (not the Mac) and are backed-up nightly. The Acer can even wake-up shutdown clients to back them up. Pretty slick.

[![IMG_1182](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DontForgettoBackupDaily_978B/IMG_1182_thumb.jpg "IMG_1182")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/DontForgettoBackupDaily_978B/IMG_1182.jpg)

Backing up with the Mac is a bit different, with no native client. I again use SuperDuper (licensed) to attach to the Acer and create a bootable image which can be updated on a schedule basis from SuperDuper. [A nice tutorial on how to be able to attach a client Mac to a Windows Home Server](https://www.mediasmartserver.net/forums/viewtopic.php?f=19&t=3576) is available.

This takes care of each computer backup but the data is stored on-site.

A general policy I put into effect will help us be more vigilant with our work:

1. Continue to use JungleDisk on all systems to backup documents, text based assets (source code, etc), photos and email. This will be more inclusive and run daily.
2. No source code will be left out of source control, check it in or shelve the changes.
3. Monitor nightly backups to Windows Home Server to verify integrity.
 
### Finally

I have learned my lesson being lazy with backups. If anything I will be backing up too much but I equate that with having too much money. I also do a firm commit with any source code I am working on for a client, if it does not poorly effect the build it either gets checked in or shelved. [Savvy Freelancer had a nice article](https://www.thesavvyfreelancer.com/management/data-storage-options-for-freelancers) recently on this subject, definitely worth a read.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:bef3dea8-6f3e-4429-a66f-03769854adc6" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Windows Home Server](https://technorati.com/tags/Windows+Home+Server),[Jungle Disk](https://technorati.com/tags/Jungle+Disk),[Acer Easystore](https://technorati.com/tags/Acer+Easystore),[Backups](https://technorati.com/tags/Backups)</div>