---
id: 642
title: 'Is JetBrains appCode a Solution Looking for a Problem?'
date: '2011-04-08T09:30:53-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=642'
permalink: /apple/is-jetbrains-appcode-a-solution-looking-for-a-problem/
s2mail:
    - 'yes'
dsq_thread_id:
    - '274556268'
categories:
    - Apple
tags:
    - appcode
    - Apple
    - jetbrains
    - objective-c
    - xcode
---

![Bottle](/assets/img/2011/04/bottle.png "bottle.png")

Sometimes when a company releases a new product I sit back and think if I would use it. ?If not, I try to understand who the customer might be and the reasons they use it. ?When I first saw the announcement for the new Objective-C IDE from JetBrains, [appCode](https://confluence.jetbrains.net/display/OBJC/appCode+EAP), I asked myself those questions.

As a user of Apple's XCode IDE for writing Objective-C, I tried to imagine the reasons why I might use it and none came to mind. ?I also tried to imagine who might use it and I couldn't think of anyone. ?OK, maybe there are folks out there who use XCode and hate it, they may use it but I think the market is far too small to consider putting efforts into writing an IDE to target those people.

[InfoQ has an interview with Maxim Shafirov of JetBrains](https://www.infoq.com/news/2011/04/jetbrains-appCode) about the project and after reading the article, I am still scratching my head. ?From the article, appCode features include:

> Main features of the IDE are:
> 
> - Smart editor with code completion
> - Opening and creating Xcode projects (including Xcode 4)
> - Integration with the standard Interface Builder
> - Running applications in iOS Simulator
> - Debugger with breakpoints, variables, watches and evaluate expression
> - Refactorings, e.g. 'Change Signature' and 'Extract Method'
> - On the fly code analysis and quick-fix suggestions
> - Tight version control systems integration (Subversion, Git, Perforce and CVS)

I don't see a feature here in the short list which Apple's IDE doesn't include.

A question I asked myself..why develop appCode in the first place?

> *InfoQ:* What drove the decision to develop appCode?
> 
> *Maxim:* We at JetBrains admire what Apple has done to desktop apps and more generally to a consumer targeted software. They're setting new interaction design quality standards. But this is not the case when it comes to developers software, in our opinion. So we see a great opportunity for JetBrains to bring its development tools expertise to this emerging market of developers, who know how a great software should look, who care about their productivity and code quality.

Developers even need to have XCode 3 or 4 installed to use appCode:

> *InfoQ:* Do I still need XCode / the Apple development infrastructure to develop applications?
> 
> *Maxim:* Yes. You need to have Xcode 3 or Xcode 4 installed. At the very least we need a platform SDK that comes with Xcode, the Interface Builder and device simulator.

I have used JetBrains' RubyMine IDE in the past and it is not free. ?I don't think other JetBrains' product are free, so one can only assume appCode will not be free. ?Why would I pay for something Apple gives me free, as a registered developer or $5 in the App Store?

I had thought that maybe appCode would be developed to be cross-platform, like their other products, and run on OS X as well as Windows and Linux. ?This would make it a really nice proposition for non-Mac owners but the dependency on XCode makes it unrealistic.

In summary, appCode:

- Is an Objective-C IDE just like XCode
- Needs XCode to Run
- Only runs on OS X
- Is likely not to be free

To be fair, I downloaded appCode and it looks nice, opens my XCode projects but I ran into issues trying to actually run the project. ? It built but the simulator never loaded and ran. ?I will probably wait for a future EAP build to try again.

I realize appCode is only an EAP and not even beta at this point. ?I'm sure things will improve and new features will be added but I'm not sure JetBrains has a winner here. ?The XCode environment is the gold standard for Objective-C development and I don't see so many problems with that would drive me to use an alternative IDE at this point. ?I will keep an open mind but it seems JetBrains is trying to solve a problem that doesn't exist.

?