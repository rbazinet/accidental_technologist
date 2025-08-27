---
id: 57
title: 'Starting to use AJAX'
date: '2006-02-28T11:15:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=57'
permalink: /ajax/starting-to-use-ajax/
categories:
    - AJAX
---

The current project I am working on is an ASP.NET (C# 2.0) application that is a specialized eCommerce system.

Our approach is to look at our system and determine where AJAX belongs and where it doesn’t. AJAX is not a new technology but is a newly branded old-technology. Any time you find a “craze” such as this it’s easy to think it’s an end-all solution to all problems. This is not the case. [Rick Strahl](http://west-wind.com/weblog/posts/2725.aspx) has some great insight into AJAX in a post from August 2005. All of his views are right on if you step back and think about AJAX as a technology and ignore all the “me too” people out there.

I believe AJAX can be used successfully in well-planned-out areas of our application used by your customers that potentially have the biggest impact. The biggest impact in my mind is making a better user experience, not for marketing to use the term “AJAX” to help with a sale and make it sound like we are trendy.

We are implementing AJAX in simple items at first to replace the usual postback in changing a selection in a drop down list to remove the usual behavior of a postback to make the interface much smoother. An example of this is choosing a country in a drop down and filling the states/province associated drop down behind the scenes. This is a simple and subtle example but it really makes a difference.

I am planning on using AJAX in our shopping cart application when an item quantity is changed to update totals and such. This can also apply when removing an item. These types of nuances to make the user interface smooth with no postbacks is the perfect spot.

Other areas we are considering using AJAX is to pull down panels to edit information. The information doesn’t need to show until you want to edit it, so why show it. I will report back later and show some examples of how we are using it in the future.

Technorati Tags : [AJAX](http://technorati.com/tag/AJAX), [Atlas](http://technorati.com/tag/Atlas)