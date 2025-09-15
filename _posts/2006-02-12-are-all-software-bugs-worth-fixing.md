---
id: 49
title: 'Are all software bugs worth fixing?'
date: '2006-02-12T00:02:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=49'
permalink: /programming/are-all-software-bugs-worth-fixing/
categories:
    - Programming
---

I am a subscriber and fan of [Jeff Atwood's blog](https://www.codinghorror.com/blog/ "Jeff Atwood"). Jeff has an [interesting post](https://www.codinghorror.com/blog/archives/000498.html "Fixing Bugs") worth checking out if you deal with the same things I do on a daily basis, dealing with bugs and fixing them...or not. Jeff's post outlines some standard procedures for going from giving your code to a test team and deciding the level of severity of the bug, the risk involved, the cost to fix and exactly how often the bug happens. In my current position I work on a very small team and we do not have an official QA test team, we rely on internal developers, internal users and worse, our customers. I know this is a bad way to do things but this is what we have to work with. Our major problem is not finding the bugs, but more what to do about them when we find them. As I said I am on a very small team and we are spread thin as it is. According to Jeff, his bug fix criteria is this:

1. ***Severity**: When this bug happens, how bad is the impact?*
2. ***Frequency**: How often does this bug happen?*
3. ***Cost**: How much effort would be required to fix this bug?*
4. ***Risk**: What is the risk of fixing this bug?*
 
 Ethics say we fix all bugs we find, no matter how small and no matter how long it takes. In reality we can't do this and we don't do this.? Our method of fixing bugs has come down to: 1. ***Severity**: When this bug happens, who noticed? This is the real question, if no one notices then maybe it doesn't get fixed.*
2. ***Frequency**: How often has the customer reported it?? Can we even reproduce it?*
3. ***Cost**: How much business will we lose vs. the time it will take to fix? When we are fixing we are not working on new software.*
4. ***Risk**: What is the risk of fixing this bug? What are we going to break since we don't have a real SDLC process to test a fix. Yes, this will change but right now not an option.*
 
 Since our team is so small the process of tracking a bug down can be very time consuming, often to the point of feeling like a detective instead of a developer. Our existing legacy system is an ASP application originally written 5 years ago with enhancements and bug fixes occurring since then. The complexity of the system makes the process of tracking a bug down a very long one. Whether your team is large or small the bugs still pop up but regardless of what we know the process of fixing or not fixing is the same. Our team does not have a tester or a currently a test process to put software into production but they are coming ONLY if the team grows. Isn't this problem, I mean scenario, pretty standard? I think it is. I don't know of anyone bootstrapping a project who has a solid team with proper QA/testing and the procedures we know we should have. So how are others ensuring software quality? What is the extreme of not fixing known bugs? Technorati Tags: [Programming](https://www.technorati.com/tags/Programming)