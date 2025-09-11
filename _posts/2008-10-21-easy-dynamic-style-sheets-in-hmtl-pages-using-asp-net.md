---
id: 316
title: 'Easy Dynamic Style Sheets in HMTL Pages using ASP.NET'
date: '2008-10-21T15:55:07-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=316'
permalink: /programming/easy-dynamic-style-sheets-in-hmtl-pages-using-asp-net/
dsq_thread_id:
    - '95924975'
categories:
    - Programming
---

One of my current projects consists of a lot of existing static HTML documents that I need to work with and integrate with ASP.NET. The idea is to change as few of the static HTML files as possible as they are fine the way they are but allow new ASP.NET applications to add some dynamic dimensions to somewhat older systems.

### The Problem

A particular task I faced was to be able to take a regular link statement from HTML like this:

```html
<link rel="stylesheet" type="text/css" href="/shared/styles/style.css" />
```

And be able to dynamically replace the *style.css* file with some other custom style sheet. The requirement is the document could not be converted to an ASPX page and needed to remain a .html file.

This is actually a very small problem in the grand scheme of things but is one example of dealing with legacy systems and trying to find the least disruptive and most cost-effective solution to a problem.

### The Solution

There is probably a clever way to solve this problem using JavaScript but our solution needed to be solved using ASP.NET. My normal approach to solving a problem of this nature is first assume it has been solved before and do a few Google searches trying to find the answers. This time my searches returned no viable solutions using the tool (ASP.NET) that I am using on this project, so I needed to solve this the best way I could find.

The solution I built in ASP.NET allows for many different style sheets to be used, one per client, to help "skin" our web pages. I have some logic which figures out which CSS file to use based on who the client is and load up that style sheet. The solution to this problem leverages this by creating a "faceless" ASPX page to help out.

The page is very simple and is called Customstyle.aspx. This page does something very simple in the Page\_load:

```csharp
protected void Page_Load(object sender, EventArgs e)
{
Response.Redirect("/shared/styles/" + CurrentStyleSheet);
}
```

This page is then called from our original static page, making a very small change to the HTML file by changing the original LINK to this:

```html
<link rel="stylesheet" type="text/css" href="Customstyle.aspx" />
```

When our HTML page is loaded in the browser the Customstyle.aspx page will return and inject the proper CSS file into our HTML, giving us the desired solution.

There may be several ways to solve this same problem but after many tries this seemed to be the simplest approach. In all of my years of ASP.NET development, this is the first time I needed to use it this way.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:001b252f-8ec3-4830-99e3-6ee0a90c8234" style="padding-right: 0px; display: inline; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [ASP.NET](http://technorati.com/tags/ASP.NET),[Legacy Systems](http://technorati.com/tags/Legacy%20Systems),[HTML](http://technorati.com/tags/HTML),[CSS](http://technorati.com/tags/CSS)</div>