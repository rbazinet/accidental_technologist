---
id: 698
title: 'When Pow Eats Up the Clock Cycles'
date: '2012-02-16T09:00:23-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=698'
permalink: /ruby-on-rails/when-pow-eats-up-the-clock-cycles/
s2mail:
    - 'yes'
dsq_thread_id:
    - '578567963'
categories:
    - 'Ruby on Rails'
tags:
    - pow
    - 'Ruby on Rails'
---

I have been a huge fan of [Pow](http://pow.cx/) to serve my Rails applications for development on my Mac. ?I [wrote my love for Pow a while back](http://accidentaltechnologist.com/ruby-on-rails/the-simplicity-that-is-pow/) and have been using it ever since, but all has not been a perfect experience along the way. ?After upgrading to the 0.3.2 version I started to have my applications appear to lock up in the browser and finally timing out.

The only solution I could reliably make work was to open up Activity Monitor and kill the pow process manually. ?It worked..until the next time and I would have to do it again and again. ?It seemed like I was doing this many times a day.

It turned out this was a bug reported to the development team and is a [confirmed issue](https://github.com/37signals/pow/issues/99). ?The cause of the problem is determined to be the dns resolver, ndns. ? ?A pre-release version, 0.4.0-pre is reported to resolve the issue. ?Install it with the command:

```bash
curl get.pow.cx | VERSION=0.4.0-pre sh
```

I did this and have not had to manually restart pow once. ?I'm not sure why the official release has not been updated to include the fix to this issue which seems to effect many users.

?