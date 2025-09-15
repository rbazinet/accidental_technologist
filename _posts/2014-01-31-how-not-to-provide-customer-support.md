---
id: 971
title: 'How Not To Provide Customer Support'
date: '2014-01-31T10:42:30-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=971'
permalink: /entrepreneurship/how-not-to-provide-customer-support/
dsq_thread_id:
    - '2200634764'
categories:
    - Entrepreneurship
tags:
    - 'Customer Service'
    - helpspot
    - kickofflabs
---

I recently had an interesting interaction with a company?s support team and the results were less than spectacular. Originally, I had a much longer post planned that better detailed the problem, brought attention to the company and gave details of how poorly they handled it. ?I felt the approach was less than constructive.

The bottom-line is I had a need to contact a well-reputed company and faced several of the hurdles [outlined by Ian Landsman of HelpSpot recently in his post about customer support](https://ianlandsman.com/landsmans-10-rules-customer-support/). ?I won?t rehash them here, so you should go read his post right now.?[Scott Watermasysk of KickoffLabs had bit of follow-up](https://scottw.com/do-not-reply-all-time-low/) to Ian?s post that you should also read.

I came out of my experience with two additional rules that we follow and you should consider reviewing your work as a person who supports ?customers?:

### 1. It works for me, so it must be you

This one really bothers me, and I?m probably guilty of it over the years. ?You have a customer who has a problem, you can?t reproduce the problem so you pass it off as not your problem and close the issue.

> I have checked the site via a proxy and it's showing up correctly:
> 
> &lt;useless url to proxy removed&gt;
> 
> This issue appears to be local. As a troubleshooting measure, I would recommend restarting your computer. If the site is still having connection issues, I also recommend restarting your router as well. Please let us know if you're still experiencing connection issues after trying those recommendations.

This goes along with #9 on Ian?s post, **Listen Carefully**. I had provided a trace route to the support team which clearly showed my request was terminating at the host of the company. ?Had this tech read my email (I sent the trace route 3 times by the way) and listened, he would have seen proof the problem was not local.?

### 2. Passing the buck

It?s really easy to look at problem your customer is facing and not know the answer, saying you don?t know is fine. ?One response may be to blame the problem on someone else because you don?t want to continue dealing with it and you want it to pass it on. ?This is the exactly how my problem was handled.

I use a utility which is a graphical client to interact with another service, the utility was timing out. ?I tried to access the endpoint directly and it was also timing out. ?A bit of my own sleuthing revealed my requests were being either dropped or blocked. ?Support finally realized that in-fact my IP address was being blocked for unknown reasons.

The tech involved on the ticket decided the utility I was using must be the problem, even after repeated attempts at telling them it was no longer running. This was their response:

> Good afternoon Rob,
> 
> Thank you for contacting us today.
> 
> The reasons that \*\*\*\*\*\*\*\* state on their front page for using \*\*\*\*\*\*\*\* aren?t very sound. Why would you ?avoid being connected to the internet" to make a post when you must connect to the internet to make the post? \*\* isn't making a bunch of data calls back and forth while you're sitting on the post editing page so the network bandwidth consumption would be negligible even if you had to "be connected" to the internet.
> 
> With that said, anything that hits our server with multiple connections too quickly from the same IP will be blocked for attacker like activity. My suggestion is to contact the developers of your software and have them work to throttle the connections down or at least offer the option to do so. If they are unwilling to work with you I would request a refund from them and potentially find another plugin to duplicate this functionality.
> 
> If you have any further questions please let us know and we'll gladly assist you.

Gladly assist me? ?Hmmm?.

The result is a lot of frustration trying to solve this issue. ?Normally this company provides great service and they have a great reputation in the community but sometimes a company?s growth and not communicating culture can be negative.

Please don?t do this.