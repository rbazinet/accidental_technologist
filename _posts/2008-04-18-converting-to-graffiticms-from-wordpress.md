---
id: 259
title: 'Converting to GraffitiCMS from WordPress'
date: '2008-04-18T06:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=259'
permalink: /technology/converting-to-graffiticms-from-wordpress/
categories:
    - Technology
---

As my faithful readers probably know, I have been running my blog for the past 3 years on the free [Wordpress](http://www.wordpress.com) hosted service. Wordpress is a great service with really good uptime and they are always improving their features. The only limitations I have been faced with lately is being able to customize the blog the way I want it. I would like better control over the theme, the ability to add other pieces of code to the site and better analytics via Google Analytics.

I decided to go with the new Content Management System (CMS) from [Telligent Systems](http://telligent.com/) called [GraffitiCMS](http://graffiticms.com/). It is written in .NET and offers a lot of flexibility through widget and plugins which are available as part of the GraffitiCMS system or available from third parties. Developers can also write their own plugins if they desire.

## Install Graffiti

I purchased the professional version of Graffiti around the first of the year to take advantage of the pre-release special Telligent was having for the early adopters. The software comes as a download in ZIP format and is easy to install simply by unzipping into a new folder. I decided I would get it setup on my local Windows XP system so I could get a feel for the user interface and be able to import my Wordpress blog items.

I won't go into all of the details of setting up IIS and assigning the various permissions here since Telligent already provide this information. Check out - [Installing Graffiti](http://graffiticms.com/support/getting-started/installing-graffiti/) on the Graffiti web site.

## Exporting from Wordpress

I have a good deal of content sitting on my Wordpress blog which I would like to be able to move over to the new blog. Fortunately, Wordpress does a good job of providing a nice Export function. Exporting could not be easier; the export function prompts for a location and saves in a standard XML format.

[![WordpressExport](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_79E9/WordpressExport_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_79E9/WordpressExport_2.jpg)

## Importing Wordpress Content into Graffiti

I have Graffiti 1.0.1 (1.0 SP1) installed and had a small issue with importing Wordpress Export files into Graffiti. I found a nice exception when attempting the import:

[![GraffitiImport](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_C269/GraffitiImport_thumb.jpg)](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_C269/GraffitiImport_2.jpg)

It is important to complete a step prior to attempting to run the Graffiti Migrator:

1. Open the Wordpress Export file in your text editor of choice.
2. Replace All **&lt;wp:comment\_content&gt;&lt;!\[CDATA\[** with **&lt;wp:comment\_content&gt;**
3. Replace All **\]\]&gt;&lt;/wp:comment\_content&gt;** with **&lt;/wp:comment\_content&gt;**

Thanks to the great support at Telligent with the help on that one, I would have been scratching my head for a while on that one.

Once the file was fixed the file loaded into the Graffiti Migrator just fine. The posts are not automatically imported but you are presented with a list of posts by date and you need to map the post to a category in Graffiti. This takes some time as the import process takes maybe 15-20 seconds for a single post to load up and import. A few hundred posts takes some time.

Users should note; it's important to choose an author to import into or the posts will be imported as Admin.

## Redirecting Old Blog to New Blog

My current blog has been around for 3 years and I wanted to keep the traffic I have built up (125k visitors per month) over time to be redirected to the new blog. This includes existing links people may have book marked or Google and other search engines may have in their archives. The problem is pretty simple, all requests to [rbazinet.wordpress.com](http://rbazinet.wordpress.com) need to be redirected to [www.accidentaltechnologist.com](http://www.accidentaltechnologist.com).

Fortunately, Wordpress has a great facility to provide a redirect from my old blog to my new blog. The redirect is considered a [301 or permanent redirect](http://en.wikipedia.org/wiki/URL_redirection#HTTP_status_codes_3xx), a good article on 301 redirects [can be found here](http://www.stonetemple.com/articles/301-redirects.shtml). The service from Wordpress is not free but a reasonable $10 per year. You simply enter your domain as a new domain in Wordpress and tell Wordpress the new domain is your new blog URL and the old blog is redirecting to the new one. It's really very simple on the Wordpress side of things.

Now, when a user requests anything referencing [rbazinet.wordpress.com](http://rbazinet.wordpress.com), it gets redirected to the new blog at [www.accidentaltechnologist.com](http://www.accidentaltechnologist.com).

[![WordpressDomains](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_79E9/WordpressDomains_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_79E9/WordpressDomains_2.jpg)

The bigger challenge came on the Graffiti side of things when it received a redirect from the old Wordpress blog. The old URL would look like this:

> **<font size="2">http://rbazinet.wordpress.com/2007/12/20/setting-up-sqlite3-for-ruby-on-rails-development/</font>**

And get redirected to the new blog at this URL:

> **http://www.accidentaltechnologist.com/2007/12/20/setting-up-sqlite3-for-ruby-on-rails-development/**

Which does not exist on the new blog. Graffiti references posts by the categories they are maintained in. So, this post lives at the following location:

> **http://www.accidentaltechnologist.com/ruby/ruby-on-rails/setting-up-sqlite3-for-ruby-on-rails-development/**

I started searching around the Internet for others who may have ran into this situation and found a great plugin from [James Avery](http://infozerk.com/averyblog/) called [Graffiti.Redirect](http://infozerk.com/averyblog/announcing-graffiti-redirect-0-1/). This plugin was designed just for the problem I was trying to solve. I contacted James about the plugin use and he was a great help, pointing me in the right direction. Thanks James.

[![GraffitiRedirectPlugin](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_79E9/GraffitiRedirectPlugin_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/ConvertingtoGraffitiCMSfromWordpress_79E9/GraffitiRedirectPlugin_2.jpg)

The key to getting this plugin is to get the regular expression (regex) done correctly. I had to brush up on my regular expressions for this one but it was not too hard to get it right. The key here was matching the date part of the original Wordpress posts, **/2007/12/20,** for example, and simply have Graffiti redirect by the name of the post, which is **setting-up-sqlite3-for-ruby-on-rails-development**.

The second part of getting the redirection to pass the incoming request along to the right location is setting up IIS 6.0 Wildcard Mapping. This allows ASP.NET to be able to pass requests along even when the target directory does not exist. Scott Guthrie can explain it better than I can:

> IIS 6.0 with Windows Server 2003 added support for an ISAPI feature called "wildcard mappings". Wildcard mappings provide a way to configure IIS to cause all requests coming into the server to first be routed to one or more ISAPI extensions for processing. What is cool about wildcard mappings in IIS 6.0 is that after the ISAPI extension that is processing the wildcard extension is finished, it can then cause IIS to pass control of the request to the extension or internal handler within IIS that normally would process the request.

Scott Guthrie does have a really [good tutorial](http://weblogs.asp.net/scottgu/archive/2007/03/04/tip-trick-integrating-asp-net-security-with-classic-asp-and-non-asp-net-urls.aspx) on setting up IIS 6.0 Wildcard Mapping.

Once both of these were setup, URL redirection worked seamless and perfectly. There are other methods of URL Rewriting that a lot of flexibility, one great one is included from [Coding Horror](http://www.codinghorror.com/blog/archives/000797.html). Jeff suggests [ISAPI Rewite](http://www.isapirewrite.com/) as one good way to map URLs.

## What about Images?

Once posts are imported into Graffiti I noticed any images on the site pointed back to my old blog. This isn't a big issue but the images should be brought over to Graffiti. I do not have a great way to get the images out of Wordress so I will need to continue this post at another time when I have a solution.

Graffiti is working very well and I am very happy with it so far. The support from Telligent has been very good and I recommend them just for that reason alone. I think the user interface in Graffiti is flexible and let me modify as I need, add to it and write my own plugins.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:bbefc13c-a0cd-41b6-9fa0-6944834ed6fd" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: [Graffiti](http://technorati.com/tags/Graffiti),[Wordpress](http://technorati.com/tags/Wordpress)</div>