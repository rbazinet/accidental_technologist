---
id: 390
title: 'I Am Not a Master but a Solutionist'
date: '2010-01-11T12:01:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=390'
permalink: /programming/i-am-not-a-master-but-a-solutionist/
dsq_thread_id:
    - '96036262'
categories:
    - Programming
---

I stumbled upon an interesting essay by Zed Shaw recently titled ["The Master, The Expert, The Programmer](https://zedshaw.com/essays/master_and_expert.html)" [pointed out by Avdi Grimm](https://avdi.org/devblog/2009/12/29/wax-on-wax-off/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+VirtuousCode+%28Virtuous+Code%29&utm_content=Google+Reader). One part that stuck out in my mind was this excerpt:

> What I notice is that my peers are progressing to more and more complicated and convoluted designs. They are impressed with the flashiest APIs, the biggest buzzwords, and the most intricate of useless features. They are more than happy to write endless unit tests to test their endless refactoring all the while claiming that they follow XP’s “the simplest thing that works” mantra. I’ve actually seen a guy take a single class that did nothing more than encapsulate the addition of two strings, and somehow “refactor” it to be four classes and two interfaces. How is this improving things? How can more somehow equal simpler? This should never be the case.
> 
> These are the actions of an expert. These experts are very smart, capable, and skilled, but they are too busy impressing everyone to realize that their actions are only making things worse for themselves. In the end all of their impressive designs are doing nothing but making more work for themselves and everyone around them. It’s as if their work is only designed for getting them their next job, rather than keeping them in their current one.

I agree and have always thought the same. I have seen people turn something simple into something complex that will be difficult to maintain. One of my previous enterprise clients produced solution after solution which was so complex that adding a field to a form took a day with all of its levels of indirection.

So many programmers are like sheep, they follow the herd because they think they should and feel if they don't they will be left behind. In my opinion, developers should stand back from the crowd and be an individual and do those things that work for them.

Personally, I will do the simplest thing I can do to solve a problem within the constraints of the problem domain. This is my best interest because I can better maintain code later and it is the best interest of the client because it costs them less and more likely someone else can support it later.

### Solutionist

I currently am working on a project that is filled with tests, some created in TDD fashion, some created after the fact. It seems to me, from someone coming in from the outside, that these tests were created for tests-sake and done for the right reasons. The tests are spread out across the project and are not complete and don't cover all of the necessary business rules. When I look at this it seems like it was a waste of the clients money. If we can't rely 100% on what the tests are actually testing, then why do them at all?

I am also working on a project with very little tests, almost none. This project works very well and shows almost no ill-effects of not having a test suite. I will not get into a holy TDD war, it's not my point. I'm just pointing out how two diverse projects from a test perspective can provide value.

I look at the work I have done over the years, some with full test suites and some without and realize what was done was done with a certain business situation in mind. We don't live in a perfect world business is not perfect, projects aren't perfect and neither are solutions.

We are solutionists and we do the best job we can from the experience we have garnered and what the client can afford. I think this is an important point here, we can't really bang our fist on the table demanding TDD from a client who may not have the budget.

I think we should be creating the simplest solutions we can to fit the needs, and budget of the client. If simple is a one form application, then do it. If simple is a 20 form application with full test suite, then do it. Simple is what gets the job done.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:24c06005-f898-4a32-813c-4d04095a0a77" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [TDD](https://technorati.com/tags/TDD),[Freelancing](https://technorati.com/tags/freelancing),[Ruby on Rails](https://technorati.com/tags/Ruby+on+Rails)</div><div class="posttagsblock"> </div>