---
id: 984
title: "Welcome Swift, I've Been Waiting For You"
date: '2014-06-13T09:45:30-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=984'
permalink: /swift/welcome-swift-ive-been-waiting-for-you/
dsq_thread_id:
    - '2761188485'
categories:
    - Swift
tags:
    - swift'
---
![Swift hero](/assets/img/2014/06/swift-hero.png "swift-hero.png")

I haven?t blogged here in a while, sometimes life seems to get in the way.

## Bombshell

Last week I was one of many who watched the Apple WWDC keynote and was blown away by many of their announcements. ?The one to get me the most excited is the new programming language, [Swift](https://developer.apple.com/swift/). ?No one saw this coming.

I?ve been a long-time Objective-C developer but have never been in love with the language. ?As Apple developers, we use because it?s the only real option?until now. ?Swift is introduced as an alternative to Objective-C, not a replacement, and to me resembles Go and C# with many of the language constructs. ?I?m not going into the language details today but you can find out more from [The Swift Programming Language guid in the iBooks Store](https://itunes.apple.com/us/book/the-swift-programming-language/id881256329?mt=11).

Swift is a type-safe and modern programming language for Cocoa and Cocoa Touch applications, which means targeting iOS and OS X. ?It?s really nice to see Apple making big changes and offering developers a choice. ?I?ve read tweets and other reactions to Swift and asking why we need another programming language but I say it?s a good thing. Swift does away with all the square brackets (\[\]) and pointer references to create a cleaner programming language. ?

## Should You Learn Swift?

Objective-C isn?t going away any time soon. Apple realizes Objective-C has baggage and when looking at adding to the language, there is only so much they can do with it and therefore came up with a language that removes all of the warts on Objective-C. ?The API?s are the same when using Cocoa and Cocoa Touch so if you are an Apple developer already, you are half-way there.

Apple releasing this new language says a lot; it expresses Apple?s intentions. ?Swift will be important in the future, whether that?s a year or five, we just don?t know.

Yes, I think you should learn Swift. ?If you are new to Apple then you have a choice, Swift or Objective-C. ?[Aaron Hillegas, long-time Objective-C proponent, thinks developers need to know Objective-C](http://www.bignerdranch.com/blog/ios-developers-need-to-know-objective-c/). ?He has some valid points:

> **You can't do everything in Swift.** For example, if you want to use a library of C++ code in your application, you will need to talk to the C++ objects from Objective-C. Swift can call C functions, but I believe that if you are working with a lot of C functions and types, you will want to code in Objective-C.

He claims Objective-C is easier to learn than Swift. ?I?m not sure I agree with this point:

> **C is a really simple little language, and Objective-C is a really simple little extension to C.** Swift has many rules that Objective-C does not. (I, as an instructor, am already trying to figure out how I will explain the rules around optional variables and the proper use of ? and ! to signal the programmer's intent around optionality.) These extra rules mean that the compiler can be much more pedantic about enforcing good coding practices, but it also means that the language will take longer to learn.
> 
> **Objective-C requires programmers to be explicit.** The Swift language lets the compiler do more work for the programmer. This is great?less typing for the programmer, right??but it means that when you look at a line of code, it won't mean much without a deep understanding of the context in which that line lives. Explicit languages are easier for beginners to understand.
> 
> **Swift has a bunch of constructs that Objective-C doesn't have.** For example, generics make type checking better in Swift, but it makes that language considerably more complex.

[Marco Arment had a good follow-up to Aaron?s post](http://www.marco.org/2014/06/12/ios-developers-need-to-know-objective-c) and I tend to agree with him:

> The time will come when knowing Objective-C will be like knowing C, C++, or assembly ? it?ll be a plumbing layer beneath your application code that almost all working developers will never need to know or interact with. And I bet that time is less than five years away ? possibly just two or three.

I have to say that as far as sample code, blog entries and Stackoverflow threads, Objective-C will have the lead for a long time. ?Finding solutions to problems specific to Swift will be harder to find and you might be a bit of an explorer for a while.

If you are targeting multiple platforms there is always a debate. ?If you go native on every platform then Swift may be a good choice. ?If you like the idea of a single-ish code base then maybe Xamarin (C#) or RubyMotion is something to consider.

If you want to play with Swift be aware that you will need the Xcode 6 beta.

## The Future

I am devouring the Swift documentation and WWDC presentations. ?Over the next few months I will be blogging about it, now that I have a good reason to blog. ?

I will not be [migrating any Objective-C code bases to Swift](https://developer.apple.com/library/prerelease/ios/documentation/swift/conceptual/buildingcocoaapps/Migration.html)?I don?t see the point. ?I will be writing sample code and creating a new application with only Swift and plan to document the process."