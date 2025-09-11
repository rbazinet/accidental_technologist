---
id: 939
title: 'Vesper Quickly Becoming a Valuable Case Study'
date: '2013-07-01T10:00:02-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=939'
permalink: /ios/vesper-quickly-becoming-a-valuable-case-study/
dsq_thread_id:
    - '1454812080'
categories:
    - iOS
tags:
    - iOS
    - ios7
    - Vesper
---

When I first heard about [Vesper](http://vesperapp.co/), a note-taking application for $4.99 that only runs on the iPhone, I was a bit skeptical. ?Vesper comes from Q Branch, LLC and consists of some fairly high-profile people including: [John Gruber](http://daringfireball.net/), [Brent Simmons](http://inessential.com/) and [Dave Wiskus](http://betterelevation.com/). ?My gut told me these guys are leveraging their Internet fame to sell a lot of Vesper. ?I believe my gut was very wrong.

The trio appeared on an [episode of the Debug podcast](http://www.imore.com/debug-15-simmons-wiskus-gruber-and-vesper) and John discussed this very aspect of marketing Vesper. ?He pointed out their fame would only take them so far and fame alone will not make this a successful product. ?In order to build a successful business from Vesper, they would need much more.?This was the turning point in my thinking and John was exactly right, they need to create a great product people will want and only then will they gain the momentum they want.

Since the release of Vesper, I've seen consistent discussion about the design and some of the decisions which went into its features. ?We can all speculate on it, but fortunately the Q Branch team has been taking it further with a level of transparency we don't usually see in a high-profile iOS application.

Vesper is an application we can all learn from, starting with design to the thought process of feature implementation. ?The team is doing a great job of helping us see their process from detailed design discussions to open sourcing code they use. ?I hope they continue the level of transparency with the dialogs they have, I know I personally address they questions myself and often times don't have an echo chamber to help me out. ?I often look at a good application and wonder how or why something was done.

Here are a few of the nuggets of information we don't usually see, but are so valuable:

[How to Make a Vesper: Design](http://vesperapp.co/blog/how-to-make-a-vesper/)?- a great view into the history of Vesper design discussing all the different aspects of what goes into design. ?Each aspect of the application design is discussed, what made it in and what did not.?

> Vesper is opinionated software. Every interaction, pixel, and line of code was carefully considered, and no work was too precious to throw away. I?d like to share some history of how Vesper came to look and feel the way it does.?

You can learn a ton about design, especially if you are not a designer and may not be aware of all the things needing consideration when building a beautiful application.

[Open Source: DB5](http://inessential.com/2013/06/27/open_source_db5) - at times it becomes difficult to effectively work with non-developers on a project and collaborate in a positive way. ?DB5 is a simple idea solving a common problem in an elegant way. ?The Vesper team releases their tool to everyone who may face a similar problem. ?It's open source so anyone can make it even better.

[Brent Simmons Gists](https://gist.github.com/brentsimmons) - a nice collection of code from the Vesper developer, someone who is a very experienced Objective-C developer.?

[Technical Notes on Vesper?s Full-Screen Animations](http://inessential.com/2013/06/22/technical_notes_on_vespers_full-scree) - a detailed look on animations, comparing the standard way most developers do it to how they did it with the logic behind the decision making. ?This is how a regular application can be outstanding, paying attention to these kinds of details reveals the difference between an artist and a laborer.

How should you handle beta testers for you application? ?Lots of ways to do it but [this is how Vesper does it](http://www.neglectedpotential.com/2013/06/vesper-beta-collaboration/)?as [explained by Brent Simmons](http://inessential.com/2013/06/07/how_we_work_together). ?Being very open about the tools that worked for a particular style and project is always very nice to know.

No developer is proud of a bug in their creation and most of us go to great lengths to hide the fact that they exist. ?It's only human nature to not want others to know we have failed in some way. ?[Not surprising, the Vesper team is open about this aspect too](http://inessential.com/2013/06/21/putting_the_q_in_qa):?

> Here?s a bug in Vesper. You can reproduce this easily.
> 
> 1. Start dragging a note from right-to-left to archive it.
> 2. Before you let go, take another finger and tap the hamburgrabber button in the top left to open the sidebar.
> 
> Note that the sidebar opens and the note is still in a partially-dragged state. That shouldn?t be, but I didn?t think of it when I was writing the code.
> 
> You can figure out why the bug exists. When I?m writing a feature, I don?t necessarily think of all the interactions with all the other features. I try to, but it?s easy to get overly-focused.

I bought Vesper \*because\* of the openness of the team and I want to witness the evolution of this application. ?It's refreshing and rare to be told a story you can witness about the crafting of a product. ?The Vesper story is just that, the story of crafting a great application. ?We are often pushed or expected to be producers, our parents and grandparents were the crafters of our time, proud of the things they created. ?It is time we show that we are crafters too.

The openness and transparent style of the Q Branch team seems like a winning approach. ?It will at the very least continue and grow the discussion of their application. ?If people are talking, they are probably buying?like I did.?

Let's hope for more thoughts and reasoning from these guys in the future.