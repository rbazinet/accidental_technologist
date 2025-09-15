---
id: 965
title: 'One of Many Worlds: Another go at Go ... failed!'
date: '2014-01-29T06:15:54-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=965'
permalink: /go/one-of-many-worlds-another-go-at-go-failed/
dsq_thread_id:
    - '2190081952'
categories:
    - Go
tags:
    - go
---

Remember folks, choose the right tool for the job?

You can?t read about programming languages these days without [Google?s Go programming language](https://golang.org/) being discussed with much praise. ?I agree that Go is good, ?but I recently ran across a post addressing some short comings titled [Another go at Go?failed!](https://oneofmanyworlds.blogspot.com/2014/01/another-go-at-go-failed.html) ?The criticism is constructive and a good read. ?Bottom line:

> - If your problem domain involves patterns that benefit from type parameterization or\[2\] polymorphism that is easily achievable through inheritance, Go is a poor choice.
> - If you find your Go code evolving into having few interfaces but many higher-order functions (or methods) that resort to frequent type assertions, Go is a poor choice.
> - Go runtime can learn a trick or two from JRE 7 as regards performance.

I thought it was going to be more bashing by a naive developer but it?s far from the case. ? It goes to show the point that not all tools are the right tool for the job and not a single programming language is right in all cases. ?

Developers tend to use a tool, programming language or framework, and try to fit the problem?s solution to the tool. ?It doesn?t always work that way.