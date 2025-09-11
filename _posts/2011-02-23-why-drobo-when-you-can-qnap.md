---
id: 604
title: 'Why Drobo when you can QNAP?'
date: '2011-02-23T09:00:13-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=604'
permalink: /hardware/why-drobo-when-you-can-qnap/
dsq_thread_id:
    - '238235775'
categories:
    - Hardware
tags:
    - drobo
    - qnap
    - raid
---

?

![TS 419P 01](/assets/img/2011/02/TS-419P_01.jpg "TS-419P_01.jpg")

I recently spent a good amount of time finding a RAID solution for my home office. ?My requirements were fairly minimal:

- Supports RAID5
- Supports Time Machine to backup all my Apple Macs
- Wireless
- Gigabit Ethernet
- Supports at least 4 drives

My original intention was to purchase a Drobo but several conversations with Drobo users [I found out they use a proprietary disk format](http://www.google.com/search?aq=1&oq=drobo+propr&sourceid=chrome&ie=UTF-8&q=drobo+proprietary+format) that would require drives sent back to Drobo to pull data from in the event of a failure. ?I have also heard of issues with the devices, so after a bit of research I found QNAP.

The price of the Drobo with the ability to support connecting wirelessly AND via ethernet was pretty high compared the QNAP.

QNAP has a ton of options for storage, too many really but their site is good and pretty easy to match requirements to features. ?I ended up with the [QNAP TS-419P](http://qnap.com/pro_detail_feature.asp?p_id=183).

This device supports Time Machine as well as integration with Windows networks and Linux.

### Feature Frenzy

QNAP does exactly what I need but offers so much more, [including a huge list of possible supported uses](http://qnap.com/pro_detail_software.asp?p_id=183), including:

- Apache server
- MySQL Server
- iTunes Server
- Personal Cloud Server
- ...and so much more.

I won't repeat the list here, but needless to say, this device can do almost anything imaginable. ?The combinations are almost endless.

### Making a Good RAID Choice

I have been involved in hardware configuration for a really long time, setting up networks for clients used to be a focus of mine. ?Back in the day we often sold clients on using hardware RAID 5 to ensure good performance and great redundancy.

When looking at a personal NAS solution I learned a lesson; RAID 5 is not as fault tolerant as I thought. ?Per Wikipedia I learned the entire RAID set would be lost if there was a 2-drive failure:

> RAID 5 (block-level striping with distributed parity) distributes parity along with the data and requires all drives but one to be present to operate; drive failure requires replacement, but the array is not destroyed by a single drive failure. Upon drive failure, any subsequent reads can be calculated from the distributed parity such that the drive failure is masked from the end user. The array will have data loss in the event of a second drive failure and is vulnerable until the data that was on the failed drive is rebuilt onto a replacement drive. A single drive failure in the set will result in reduced performance of the entire set until the failed drive has been replaced and rebuilt.

It was important to reduce the risk to a hardware failure when making this choice. ?I learned RAID 6 allows for two hard disk failures and still maintain the consistency of the RAID set:

> RAID 6 (block-level striping with double distributed parity) provides fault tolerance from two drive failures; array continues to operate with up to two failed drives. This makes larger RAID groups more practical, especially for high-availability systems. This becomes increasingly important as large-capacity drives lengthen the time needed to recover from the failure of a single drive. Single-parity RAID levels are as vulnerable to data loss as a RAID 0 array until the failed drive is replaced and its data rebuilt; the larger the drive, the longer the rebuild will take. Double parity gives time to rebuild the array without the data being at risk if a single additional drive fails before the rebuild is complete.

The QNAP-419P hold up to 4 drives and with RAID 6 a minimum of 4 drives is needed, so you lose a fair amount of storage in a RAID 6 configuration.

### Hard Disk Choices

QNAP makes it very clear which hard drives they recommend and support. ?It's [important to pay attention to this list](http://qnap.com/pro_compatibility.asp) as the drives they recommend are not your run-of-mill drives you might find at BestBuy but more mission-critical drives with high mean-time between failures (MBTF).

The specifications for the QNAP say up to 3TB drives are supported in each bay. ?I could only find 2TB varieties and they were a bit pricey so I went with a [Western Digital 1TB WD1002FBYS from NewEgg](http://www.newegg.com/Product/Product.aspx?Item=N82E16822136313&cm_re=WD1002FBYS-_-22-136-313-_-Product). ?The description indicates it is a drive for server or storage applications.

Bottom line, this is for backups and you want something fast and reliable so don't skimp on the hard drives.

### Performance

The includes gigabit ethernet connection combined with my 802.11n router makes backups really fast. ?My old Time Capsule used to seem to take forever for small backups, never mind large ones. ?The QNAP seems to be able to lay the backup down in no time.

### Conclusion

I really love this solution and can't say enough good things about it. ?I discover new uses for it all the time, ones that I didn't know I'd use and new ones coming out in QNAP's regular updates.

The only minor complaint I have with the device is the occasional hum I hear. ?It sounds like the case vibrating to me, when I touch the case when the noise starts it stops it right away. ?I did read in the QNAP forums that other users of this model have a similar complaint but they claim it is the power supply humming, so I'm really not sure which it is. ?Overall, a very minor annoyance.

I use this to stream all my audio and video content too all my computers, a feature I didn't think I wanted but would be lost without it.

QNAP beats Drobo hands down, I mean not even close.

?