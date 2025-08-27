---
id: 987
title: 'Setup Swift REPL and Access from the Command Line'
date: '2014-06-13T13:05:42-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=987'
permalink: /swift/setup-swift-repl-and-access-from-the-command-line/
dsq_thread_id:
    - '2761683118'
categories:
    - Swift
tags:
    - swift
---

Swift has a very nice Read-Eval-Print-Loop (REPL) for developers to take advantage of and be able to get instant feedback on Swift code. ?This is great for trying things out without having to use Xcode 6 and a full project.

If you are unsure of what this REPL is, from the Swift web site:

> **Read-Eval-Print-Loop (REPL)**. The debugging console in Xcode includes an interactive version of the Swift language built right in. Use Swift syntax to evaluate and interact with your running app, or write new code to see how it works in a script-like environment. Available from within the Xcode console, or in Terminal.

The problem is, it?s not available by default since it?s not in your path. ?If you have Xcode 5 installed you probably don?t want to have to deal with switching back and forth between Xcode paths.

The solution is pretty simple actually. ?I wanted to be able to get to Swift from the terminal with a short command, in this case, *swift* will be the command. ?In order to setup it up I located the swift binary, yours may be different depending upon where you have the Xcode 6 beta installed. ?Mine was here:

`/Applications/Xcode6-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift`

If you just run that line in terminal it works fine but I want to be able to access this easily. ?The answer is an alias added to the .bash\_profile. ?Add this line to the .bash\_profile:

`alias swift="/Applications/Xcode6-Beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"`

Restart the terminal app, type swift and you should see something like this:

![Swift term](/assets/img/2014/06/swift-term.jpg "swift-term.jpg")

**UPDATE (06/17/2014):** Apple released Xcode 6 Beta 2 today and the path changes to where the Swift binary lives, use Xcode6-Beta2.app instead of Xcode6-Beta above.