---
id: 308
title: 'Using Amazon S3 as my Backup Solution'
date: '2008-09-04T12:01:30-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=308'
permalink: /technology/using-amazon-s3-as-my-backup-solution/
dsq_thread_id:
    - '95924910'
categories:
    - Technology
---

I have been using [Mozy](https://mozy.com/) for the past year and had been pretty happy with the way their backup software worked both on Windows and the Mac. I have upgraded my systems several times and each time I reinstall a new operating system and backup with Mozy it tells me I need to delete my old machine and create a new one in their system. I have done this a few times and it takes a while to backup 6G or so but my main concern is having a system failure and not being able to attach to my system backup to restore. Mozy seemed just too cumbersome in the way it functioned, so I started looking for a better solution.

Thinking about a solution for my needs, 10G or so of data (documents, client projects, photos), and an easy way to backup and a simple way to restore. I really was looking for a disk in the sky I could use like a disk on my local system and copy things to it. The first such solution that came to my mind was [Amazon S3](https://www.amazon.com/gp/browse.html?node=16427261). Amazon S3 stands for Simple Storage Service and sounded like what I needed.

The pricing structure for S3 is really attractive:

> **United States**
> 
> ***Storage*** $0.15 per GB-Month of storage used ***Data Transfer*** $0.100 per GB - all data transfer in  
> $0.170 per GB - first 10 TB / month data transfer out  
> $0.130 per GB - next 40 TB / month data transfer out  
> $0.110 per GB - next 100 TB / month data transfer out  
> $0.100 per GB - data transfer out / month over 150 TB
> 
> 
> ***Requests*** $0.01 per 1,000 PUT, POST, or LIST requests  
> $0.01 per 10,000 GET and all other requests\*

Using their [AWS Simple Monthly Calculator](https://www.amazon.com/gp/redirect.html/ref=sc_fe_c_0_16427261_2?location=https://calculator.s3.amazonaws.com/calc5.html%3f&token=CF94223EE85412625EB9A54E6AAFDAF07BA3853A) shows I will be paying about $1.50/month for my backup to host and add additional data to.

### Client Software

One of the main parts of any backup is the ability to have a nicely done piece of software to facilitate the backup process. After searching around the web a bit I found there are a lot of different types of solutions with various levels of integration with the local system and S3. I decided to do what any resourceful technologist would do...ask what other people use on Twitter. Although there were many solutions, [Jungle Disk](https://www.amazon.com/gp/redirect.html/ref=sc_fe_c_0_16427261_2?location=https://calculator.s3.amazonaws.com/calc5.html%3f&token=CF94223EE85412625EB9A54E6AAFDAF07BA3853A) was the favorite of folks like myself.

I had actually heard of Jungle Disk before but wasn't aware of its use. The software is priced right at $20 for unlimited number of systems I can use it on and with backing up at least one Windows system and a Mac, this is really nice. Jungle Disk also gives me the option to backup my Linux systems too, which is a future task of mine as well. The software comes with a 30-day trial so I had nothing to lose.

The configuration menu is really intuitive in its tree view layout :

[![JungleDiskConfiguration](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskConfiguration_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskConfiguration_2.jpg)

Deciding what to backup looks like normal Windows Explorer :

[![JungleDiskSelection](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskSelection_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskSelection_2.jpg)

After selecting what I wanted to backup, the summary screen gives me a nice summary so I know how much will be backed up with this selection:

[![JungleDiskBackup](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskBackup_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskBackup_2.jpg)

There are many options with Jungle Disk including scheduling automated backups to setting Amazon S3 as just another drive on my system so I can simply drag and drop my selections.

When actually firing off the backup the speed of the backup is dependent on my maximum upload speed, which for me is 512K. It will take over a day for me to backup everything but once it's done I just need to update my storage bucket. The user interface for the backup is very informative too:

[![JungleDiskActivityMonitor](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskActivityMonitor_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/UsingAmazonS3asaBackupSolution_13903/JungleDiskActivityMonitor_2.jpg)

The failures that can be seen under Errors &amp; Warnings is nothing major other than me stopping the running backup job because I didn't want a problem with my Skype calls in the afternoon. I may not have had to stop the backup but wanted to be sure.

I think this is really going to be a great way to backup my systems to a great store solution. Comparing the price of backing up an unlimited number of systems to the cost of only the storage to the $4.95 per month I was paying for Mozy seems like a great deal. Only time will tell.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:f4c7fb8d-cd81-40d7-827d-6286eff25332" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Amazon S3](https://technorati.com/tags/Amazon%20S3),[Jungle Disk](https://technorati.com/tags/Jungle%20Disk),[Backup](https://technorati.com/tags/Backup)</div>