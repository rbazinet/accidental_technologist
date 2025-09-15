---
id: 605
title: 'Apple Lets Developers Refine the Rules'
date: '2011-02-24T09:00:53-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=605'
permalink: /apple/apple-lets-developers-refine-the-rules/
dsq_thread_id:
    - '239235246'
categories:
    - Apple
tags:
    - Apple
    - IAP
    - instapaper
    - readability
---

[In a recent post here](https://accidentaltechnologist.com/apple/understanding-the-apple-app-store-subscriptions/), I gave my interpretation of the new Apple App Store Subscriptions but it appears the view is not as crystal clear as at first glance. ?In recent days there has been a fairly serious developer backlash not directly against the rules but how they are being interpreted internally at Apple.

### Go for it

Initially the rules seem reasonable, to me anyway, but digging a bit deeper they look a bit greedy. ?Apple wants their cut, period.

The update to the rules causing the most buzz is 11.2, which says:

> 11.2 Apps utilizing a system other than the In App Purchase API (IAP) to purchase content, functionality, or services in an app will be rejected.

11.2 seems to be pretty clear and all encompassing.

### Wait for it....

We are now at the point where Apple waits for the backlash and will regroup and refine the rules. ?Prominent developers started right away, Richard Ziade of Readability posted ["An Open Letter to Apple"](https://blog.readability.com/2011/02/an-open-letter-to-apple/). ?Readability is a service which does not produce original content but displays content from other publishers. ?Readability is clear with their stance:

> We?re obviously disappointed by this decision, and surprised by the broad language. By including ?functionality, or services,? it?s clear that you intend to pursue any subscription-based apps, not merely those of services serving up content. Readability?s model is unique in that 70% of our service fees go directly to writers and publishers. If we implemented In App purchasing, your 30% cut drastically undermines a key premise of how Readability works.

Richard was recently on [The Daily Edition with Dan Benjamin](https://5by5.tv/dailyedition/26) where he clarifies his position and details options.

Other known developers in the community also speak out. ?[Marco Arment of Instapaper wrote how](https://www.marco.org/3437484678) great IAP would be for users?but how hard they are to implement:

> Since there are so many gray areas and it?s very far-reaching, this is going to be a difficult policy to enforce consistently.
> 
> One issue is that this policy assumes that all apps are made by someone with the ability and authority to collect IAP payments on the service?s behalf, which isn?t the case for third-party clients using a service?s API.
> 
> If Twitter charged a subscription fee, or even sold any content whatsoever, no third-party Twitter clients would be permitted on the App Store, effectively preventing that entire market.

This is very true and based on the Readability case, it is a possible far-reaching problem. ?Even if developers conceded completely to the new rules, it doesn't make great business sense. ? Margins are often thin on services anyway and sharing 30% with Apple may be too much and cause services to shutdown because they can't retool fast enough or retool in a way that is cost effective. ?[Matt Drance has some great insight](https://www.appleoutsider.com/2011/02/22/omgiapbbq/) about the economics of it:

> The requirement that IAP content be offered ?at the same price or less than it is offered outside the app,? combined with the 70/30 split, means developers must make less money off of iOS by definition. They can?t price their IAP content higher to offset the commission, nor can they price their own retail content lower.

So the current IAP definition is a proven fail for some developers.

### Clarify it

We have seen this before when Apple decided to ban developers who used developer tools not Apple's own. ?This included Flash, Mono and others. ? [AppleInsider had good coverage](https://www.appleinsider.com/articles/10/04/08/apples_iphone_4_sdk_license_bans_flash_java_mono_apps.html).

But?[after much backlash on the web](https://www.google.com/search?sourceid=chrome&ie=UTF-8&q=apple+third+part+developer+tools#hl=en&sa=X&ei=TB1lTbSWNMOC8gbG4JTWBg&ved=0CBYQBSgA&q=apple+bans+third+party+developer+tools&spell=1&bav=on.1,or.&fp=6310ac461fb3c07d), [Apple backpedaled and changed the rules](https://www.appleinsider.com/articles/10/09/09/apple_no_longer_banning_third_party_ios_development_tools.html).

Are we going down the same path with in-app purchases? I don't know but if I was a betting man, I would say we are. ?I would expect the rules to change and/or clarification to be published that will lead to apps, like Readability, to be allowed in the store.

An email to Steve Jobs supports the way I expected in-app purchases to work but contradicts how they seem to work:

> Hello Steve,
> 
> As a full time iOS developer, I am concerned (and confused) withe the new App Store guideline regarding "Apps offering subscriptions" (section 11.12).
> 
> Most of the iOS apps I have developed, as a contractor for other businesses, have been free apps that had login screens to allow the user access to some amount of private data. and/or service. These businesses have all been well established companies that sell some kind of service to their customers (Software As a Service companies) and the iOS app was merely another "portal" for their users to access their data/services (in many times, in a limited i.e. "mobile" fashion).... for example; SalesForce. I am concerned that most of these businesses will choose to not develop an iOS app for their customers if the IAP &amp; subscription policy was in place.
> 
> Would these type's of free apps be still be allowed in the App Store or will they now be expected to use IAP?

Steve's reply:

> We created subscriptions for publishing apps, not SaaS apps.?  
>   
> Sent from my iPhone

This is becoming a common Apple move, they go for it all with a fairly generic rule but later backtrack with clarifications. ?It makes them look good and makes the developer happy. ?Let's hope for the best possible outcome for us on this one too.

?

?