---
id: 811
title: 'Functional Programming Battle'
date: '2012-10-03T09:11:20-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=811'
permalink: /programming/functional-programming-battle/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '869589399'
categories:
    - Programming
tags:
    - 'f#'
    - 'functional programming'
    - Haskell
    - scala
---

![2012 10 03 09 09 21](/assets/img/2012/10/2012-10-03_09-09-21.jpg "2012-10-03_09-09-21.jpg")

I've been spending some quality time with Scala lately and ran into this research paper comparing Scala, Haskell and F# titled?**Haskell vs. F# vs. Scala: A High-level Language Features and Parallelism Support Comparison**. ?It's a great read and well-worth the time.

> This paper provides a performance and programmability comparison of high-level parallel programming support in Haskell, F# and Scala. Developing several parallel versions, we employ skeleton-based, semi-explicit and explicit approaches to parallelism. We focus on advanced language features for separating computational and coordination aspects of the code and tuning performance. We also assess the impact of functional purity and multi-paradigm design of the languages on program development and performance.

It's interesting to see the three languages compared for their abilities in parallel applications. ?It should be noted that the paper is from the?Glasgow Parallel Haskell web site so there may be some bias but nothing outstanding.

I like the fact that the comparison is based on a Java VM language, Scala, a .NET language, F#, and a native language of Haskell. ?Running on a rich runtime such as the JVM or .NET gives the developer a library of which to draw from, it also adds some overhead. ?The results are pretty much what I expected with Scala doing better than I would have envisioned. ?The JVM seems to be well-tuned.?

You can download a PDF version of the paper [here](/assets/img/2012/09/fhpc12.pdf). ? The code used in the benchmarks [are also available](http://www.macs.hw.ac.uk/~dsg/gph/papers/abstracts/fhpc12.html).