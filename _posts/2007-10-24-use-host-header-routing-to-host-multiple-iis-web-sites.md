---
id: 153
title: 'Use Host-Header Routing to Host Multiple IIS Web Sites'
date: '2007-10-24T11:46:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=153'
permalink: /iis/use-host-header-routing-to-host-multiple-iis-web-sites/
dsq_thread_id:
    - '95928415'
categories:
    - IIS
---

I have been working with Microsoft Internet Information Server (IIS) since very early on and sometimes take for granted some nice features in the current (pre-IIS7) versions.

Much of my work is from the development side of things, creating ASP.NET web sites and web services. I do get involved in the management of those IIS servers from time-to-time. One issue that we often face is how to host multiple web sites on the same IIS server. There are three approaches that work, they are:

1\. Separate IP address for each site hosted - this works but requires you to use a precious IP address that your hosting company may not want to give out.

2\. Use different TCP port - since normal HTTP traffic uses port 80 there is nothing saying you can host your web site on a different port, say 8080. The drawback to this is yoursite.com:8080 may have it's port blocked by the firewall you are behind and it's not a common port so your users may have a hard time finding it.

3\. The best way, in my opinion is to use what is called Host-Header Routing, which is part of the HTTP 1.1 specification. Host-Header Routing is simply using a single IP address in your IIS configuration for all of your web sites but differ them in the configuration by indicating their host name.

You can access this information by going to Internet Information Services and right-clicking on your website and choose Properties and go to the Web Site tab and click the **Advanced** button and see a screen like below:

[![IISAdvanced](https://rbazinet.files.wordpress.com/2007/10/iisadvanced-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/10/iisadvanced.jpg)

Choose the **Edit** button which will reveal a dialog like this:

[![IISHostHeader](https://rbazinet.files.wordpress.com/2007/10/iishostheader-thumb.jpg)](https://rbazinet.files.wordpress.com/2007/10/iishostheader.jpg)

Simply enter your host like "[www.microsoft.com](https://www.microsoft.com)" into the **Host Header Name** field and select OK. You can now do the same thing for additional web sites using the (All Unassigned) IP Address but vary the **Host Header Name**. This will save your IP addresses and is an nice way to host multiple web sites.

The only caveat is the browser needs to support HTTP 1.1, which almost all do today.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [IIS](https://technorati.com/tags/IIS), [Host-Header Routing](https://technorati.com/tags/Host-Header%20Routing), [Microsoft](https://technorati.com/tags/Microsoft)</div>