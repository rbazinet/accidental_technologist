---
id: 880
title: 'Maybe You Are Doing Too Much Test Driven Development'
date: '2012-12-11T12:21:20-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=880'
permalink: /programming/maybe-you-are-doing-too-much-test-driven-development/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '969280375'
categories:
    - Programming
tags:
    - 'kent beck'
    - tdd
    - tests
---

I came across this [StackOverflow post from 2008](http://stackoverflow.com/questions/153234/how-deep-are-your-unit-tests) where someone wanted to know when a developer can do too much testing. ?Simply brilliant summary by the father of test-driven development (TDD), Kent Beck:

> I get paid for code that works, not for tests, so my philosophy is to test as little as possible to reach a given level of confidence (I suspect this level of confidence is high compared to industry standards, but that could just be hubris). If I don't typically make a kind of mistake (like setting the wrong variables in a constructor), I don't test for it. I do tend to make sense of test errors, so I'm extra careful when I have logic with complicated conditionals. When coding on a team, I modify my strategy to carefully test code that we, collectively, tend to get wrong.
> 
> Different people will have different testing strategies based on this philosophy, but that seems reasonable to me given the immature state of understanding of how tests can best fit into the inner loop of coding. Ten or twenty years from now we'll likely have a more universal theory of which tests to write, which tests not to write, and how to tell the difference. In the meantime, experimentation seems in order.

I always find interesting to read so many blog posts about how to do TDD, including unit tests, integration tests, functional tests, factories, mocking and on and on. ?There are conferences dedicated to software quality and software craftsmanship where TDD is advocated as all-in and anything less is not doing the right thing.

Clients pay me to write code too and not tests. ?I write tests just enough to know the critical pieces of my system are working?.and continue to work. ?Developers could easily spend double their time writing completely tested systems and I'm not sure the customer gets 2X the value or ROI.

I think experimentation is certainly in order and see what best fits your situation. ?The biggest takeaway, step back and decide for yourself what's the right amount of testing and don't simply follow the pied pipers of TDD. ? Lots of great feedback from the others in response to the original question in that thread and great food for thought.

**UPDATE:** If you want to hear another developer's perspective on TDD and using it as-needed, [Marco Arment](http://www.marco.org/) discusses how he uses testing in his very successful business on the latest [Build and Analyze](http://5by5.tv/buildanalyze/107). ?Very timely to my post.