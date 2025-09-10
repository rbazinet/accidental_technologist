---
id: 1118
title: 'Fix Ruby Malloc Error on macOS Sierra'
date: '2016-10-13T17:26:06-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1118'
permalink: /ruby/fix-ruby-malloc-error-on-macos-sierra/
dsq_thread_id:
    - '5221158379'
categories:
    - Ruby
tags:
    - Ruby
    - rust
    - skylight
---

After upgrading my iMac to macOS Sierra I have experienced a few issues that I thought I'd document here, both for myself and to help others.

## Problem

The latest issue I found when trying to run a `rails console` command for a client application. The result was a hung terminal session and this message:

```bash
ruby(50426,0x7fff96cd43c0) malloc: *** malloc_zone_unregister() failed for 0x7fff96cca000
```

I've never seen this one before and with the terminal session hung, I had no real way to debug. Thanks to Stackoverflow, the solution was pretty simple.

## Solution

What I found pointed to the [Skylight](https://www.skylight.io/) gem version (0.8.1) I was using. Changing the version 0.10.6, bundling and running the console again fixed the issue.

I wondered about the root cause the issue though and did a bit of research to see if I could figure out why this one gem caused such a failure. Knowing what I know about the [Skylight gem and being developed at least partially](https://news.ycombinator.com/item?id=8321767) using [Rust](https://www.rust-lang.org/en-US/), I started there. 

Looking at the [Skylight gem source](https://github.com/skylightio/skylight-ruby/tree/master/ext), there is indeed references to using Rust. A bit of spelunking Rust issues revealed there were some issues with earlier macOS Sierra betas. I was using 0.8.1 of the Skylight gem, built before Rust was fixed. [One in particular](https://github.com/rust-lang/rust/issues/34674) looked very suspect.

Everything is working great now. I hope this helps someone with this really odd error.