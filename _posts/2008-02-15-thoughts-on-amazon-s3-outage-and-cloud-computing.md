---
id: 235
title: 'Thoughts on Amazon S3 Outage and Cloud Computing'
date: '2008-02-15T15:57:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=235'
permalink: /technology/thoughts-on-amazon-s3-outage-and-cloud-computing/
dsq_thread_id:
    - '95924660'
categories:
    - Technology
---

I am pretty sure that by now everyone has heard about [today's outage](http://www.centernetworks.com/amazon-s3-down-error) of [Amazon Web Services](http://www.amazon.com/gp/browse.html?node=3435361&tag=word08-20), [their S3 service](http://www.amazon.com/S3-AWS-home-page-Money/b/ref=sc_fe_l_2?ie=UTF8&node=16427261&no=3435361&me=A36L942TSJ2AJA) in particular.

[![amazonweb](http://rbazinet.files.wordpress.com/2008/02/amazonweb-thumb.png)](http://rbazinet.files.wordpress.com/2008/02/amazonweb.png) I noticed there was a problem this morning when the avatars on Twitter were not showing up. I know Twitter uses Amazon S3 to host the avatars but thought the issue was with Twitter because they constantly have problems keeping the service running. I gave little thought that the problem might have been Amazon S3 service instead.

The coverage on the Internet spread like wildfire and the details and speculation can be found many places, including [TechMeme](http://www.techmeme.com/) which has lots of links and the list is growing.

I am not posting to report the Amazon outage (a million before me have already done so) but more to reflect on it and give some of my thoughts about using services like S3 and EC2 versus other ways of accomplishing the same tasks. I don't have the answers, just some thoughts and opinion. I would like to hear from readers who may have more experience than I with this.

I have been thinking lately about the best way to host my applications, either in part or full. Right now I use a hosting provider, [RailsPlayground](http://railsplayground.com/), to host a couple Ruby on Rails applications. I have a single VPS setup with them and have never had a problem, but I could. The applications hosted there are small and if the VPS was down for a period of time I doubt it would matter much. The pricing is right but there is no redundancy.

I have a couple additional applications I have been working on and the thought of hosting them is where my concerns are. Hosting them could be done one of several ways:

- Slices/VPS - [Slicehost](http://www.slicehost.com) or RailsPlayground
- Clustered Slices - [Engine Yard](http://www.engineyard.com/)
- Dedicated Server - co-located and managed
- Compute Cloud - [Amazon EC2](http://www.amazon.com/b/ref=sc_fe_l_2?ie=UTF8&node=201590011&no=342430011&me=A36L942TSJ2AJA)

All options have their strengths and weaknesses with regards to costs, scalability and reliability. My biggest concern at this point is balancing reliability with costs. We can easily through money at the problem if money was no object. Even with virtually unlimited funds such as those Amazon has, they are obviously not excluded from downtime issues.

I don't know the cause of Amazon's downtime but do they have S3 or any of the other services running in a single data center? Even if the data center is huge it still has a single point of failure. It could also be their disaster recovery procedures were not tested well enough. I think we will hear more and more coming from Amazon about the exact cause of the problem, any disaster recovery issues and a statement to the effect of why this will not happen again.

### Relying on the Cloud

Can we rely on what we put in the cloud to be available? How will we be effected by having our applications unavailable while there is some downtime?

I think I can characterize my use of the cloud by application level, which is probably like other users as well:

**Level 1 Application** - used daily but can live without, won't really miss if gone. An example of this type of application is Twitter. Lately, this service has been down more than it has been up, but life goes on.

**Level 2 Application** - used daily but depending on the day, will be a productivity loss if down. An example of this is Google Docs or GMail.

**Level 3 Application** - used daily and cannot be down without financial loses. An example of this may be my own web applications I make a living on.

So how can I position my applications to give me the most uptime without throwing money at the problem unnecessarily? I would think a single location with a single database is asking for problems. The solution that stands out in my mind for a solution to my particular problem would be to used managed services hosting the applications on VPS slices on a cluster across multiple data centers, in different states or even continents. I know Engine Yard does this but I don't know if Amazon does this with EC2. If they don't, they should. If EC2 was fully down today then Amazon needs to rethink their strategy a bit.

### Service Level Agreements

Problems happen to the best of companies and we know uptime is not 100% guaranteed.

Looking at part of Amazon's Service Level Agreement (SLA), they admit they can't ensure 100% uptime and will pay customers back for anything less than 99.9% uptime.

> **Service Commitment**
> 
> AWS will use commercially reasonable efforts to make Amazon S3 available with a Monthly Uptime Percentage (defined below) of at least 99.9% during any monthly billing cycle (the "Service Commitment"). In the event Amazon S3 does not meet the Service Commitment, you will be eligible to receive a Service Credit as described below.

**<a name="2"></a>**

SLAs are a fair statement as to the importance of uptime to the company but no real guarantee. The company gives us their best and will refund anything less, which is more than fair.

### Final Thoughts

Amazon's S3 downtime today just really got me thinking how risky it could be for users to rely on the cloud for computing. The concept is great but even large companies like Amazon with massive infrastructure are still prone to problems.

It makes me think how I run my business and how I can minimize downtime. I certainly can guarantee 100% that the services I host will never be down. I can only do my best and have a recovery plan.

The same is true for those services like Twitter who takes its share of slams for not being up all the time. Heck, it's a free service and they have a huge number of users, they are growing and we will experience pain. Amazon S3 has experienced its real issues today and they will get better. We can only learn from mistakes and weaknesses, this will be a learning experience. It has opened my eyes.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Amazon](http://technorati.com/tags/Amazon),[S3](http://technorati.com/tags/S3),[SLA](http://technorati.com/tags/SLA),[Cloud Computing](http://technorati.com/tags/Cloud%20Computing)</div>