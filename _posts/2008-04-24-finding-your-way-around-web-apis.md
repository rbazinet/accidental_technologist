---
id: 262
title: 'Finding Your Way Around Web APIs'
date: '2008-04-24T09:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=262'
permalink: /programming/finding-your-way-around-web-apis/
categories:
    - Programming
---

Any developer who is tasked with the job of consuming the services from some of the popular web sites has probably gone a little mad trying to make it all happen. Each web site, whether it be Google, Digg, Flickr, Yahoo or Microsoft, has their own set of Application Programming Interfaces (APIs) which allow developers to interact with their services. The raw data pushed back and forth to each service may simply be XML in the end, but knowing what to expect from the service may be a few sessions of trial and error when implementing.

It is the developer's good fortune to have a couple web sites to help us sift through the gauntlet of API specifications.

### APIFinder

[![APIFinder](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/APIFinder_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/APIFinder_2.jpg)

The first one I came across was [APIFinder](http://www.apifinder.com/) where I introduced it in a [news item for InfoQ](http://www.infoq.com/news/2008/04/apifinder). I wanted to talk a bit about it here even though I covered some of the details there.

The site is pretty intuitive and allows users to search for the web service they are interested in. A search for Amazon S3 led me to this information about Amazon S3. There is a pretty good overview presented to the user and clicking the **Download the API** button takes us right to the Amazon S3 page. I think this is good so we get the latest information and don't have to worry about APIFinder having stale information. The only confusing part is the button says Download the API which leads me to think I am actually going to download something instead of being sent to the source site.

[![APIFinder-AmazonS3](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/APIFinder-AmazonS3_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/APIFinder-AmazonS3_2.jpg)

Each page dedicated to the API, like the S3 one above, does give some good information about the service, what it supports and any cost that may be associated with it. There is enough information given to let me make the decision if I want to go to the web site for additional information. It would be a bit helpful here to see some code samples that users added, the article may cover such things but some snippets here would be good.

### gotAPI.com

[![GotAPI](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/GotAPI_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/GotAPI_2.jpg)

GotAPI.com seems to have a bit of a rougher user interface, even though I was told it was easier to use. UI aside it does offer some nice features over the other API sites, giving users the ability to see a list of detailed methods which are selectable and give a nice big of detail about its use. Below is a screen shot of the level of detail given:

[![gotAPI-Flickr](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/gotAPI-Flickr_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/050c6fba6855_AA95/gotAPI-Flickr_2.jpg)

Selecting any web method from the left-hand navigation provides equally good information. Notice too, the information is coming from Flickr itself so we should not see any stale information.

I don't know how long this site has been up but they are lacking detail on some common APIs I would expect to see from Google, Microsoft, Amazon and Yahoo. I hope to see additions here in the future as this is the one-stop-source I like to see when trying to find information on the web.

### Finally

Finding developer information about consuming and interacting with public web sites is typically available on the web sites of the companies providing the service, sometimes easy to find but not others. These two sites provide a great service to developers and I am happy to have found them. They will be of use to me in the future and I hope you as well.

Scott Hanselman has a great post in [one of his Weekly Source Code post](http://www.hanselman.com/blog/TheWeeklySourceCode22CAndVBNETLibrariesToDiggFlickrFacebookYouTubeTwitterLiveServicesGoogleAndOtherWeb20APIs.aspx) about consuming the web services of some of the more popular web sites. The bottom line is, it's all about XML. Scott's post goes into nice detail about how to work with each.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:d39a68df-0e1c-4239-bd28-e4819795a246" style="margin: 0px; padding: 0px; display: inline; float: none;">Technorati Tags: [API](http://technorati.com/tags/API),[APIFinder](http://technorati.com/tags/APIFinder),[GotAPI](http://technorati.com/tags/GotAPI),[Web Services](http://technorati.com/tags/Web%20Services)</div>