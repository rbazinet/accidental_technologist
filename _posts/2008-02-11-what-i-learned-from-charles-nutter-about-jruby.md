---
id: 230
title: 'What I learned from Charles Nutter about JRuby'
date: '2008-02-11T18:11:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=230'
permalink: /ruby/what-i-learned-from-charles-nutter-about-jruby/
dsq_thread_id:
    - '95925935'
categories:
    - Ruby
---

[![JRubyLogo-140_63px](https://rbazinet.files.wordpress.com/2008/02/jrubylogo-140-63px-thumb1.jpg)](https://rbazinet.files.wordpress.com/2008/02/jrubylogo-140-63px1.jpg)The [acts\_as\_conference](https://www.actsasconference.com/) has passed and was a great time to relax and learn some things related to Ruby. One of talks I was looking forward to was the talk about [JRuby](https://jruby.codehaus.org/) from [Charles Nutter](https://headius.blogspot.com/). I was aware of the JRuby project but never really paid close attention to it but with Mr. JRuby himself going to talk about it, I wanted to listen.

JRuby includes features such as:


- A 1.8.6 compatible [Ruby](https://www.ruby-lang.org/en/) interpreter written in 100% pure Java
- Most built-in Ruby classes provided
- Support for interacting with and defining java classes from within ruby
- Bean Scripting Framework ([BSF](https://jakarta.apache.org/bsf/)) support
- Distributed under a tri-license ([CPL](https://www.eclipse.org/legal/cpl-v10.html)/[GPL](https://www.gnu.org/copyleft/gpl.html)/[LGPL](https://www.gnu.org/copyleft/lgpl.html))

When I thought of JRuby I thought of Java and I am not a Java programmer, so JRuby must not be for me. Charles said he heard this reason many times and he said:

> Not liking JRuby because it is written in Java is like not liking Ruby because it is written in C.

It may seem obvious, but I never thought of it that way before.

### JRuby Performance Information

One of the more interesting pieces of information Charles provided was that of the different versions of JRuby and how they related to

- JRuby 1.0 was 2x slower than Ruby 1.8.6
- JRuby 1.1 Beta1 2x faster than Ruby 1.8.6
- JRuby trunk 2-5x faster and often faster than 1.9

Performance improvements in trunk due to a JIT compiler implementation. This looks like a huge boost for JRuby and really makes one think about running Ruby in this runtime over native Ruby 1.8.6.

### JRuby Performance Demonstration

[![CharlesNutter](https://rbazinet.files.wordpress.com/2008/02/charlesnutter-thumb.jpg)](https://rbazinet.files.wordpress.com/2008/02/charlesnutter.jpg)

There has been a ton of performance-related bits of information posted on the web lately pertaining to Ruby vs. JRuby vs. other implementations. These are sometimes hard to get your head around and relate to. I anticipated Charles would simply gives us some performance numbers from previous tests but he instead run some live tests against different Ruby implementations he had on his laptop.

Three different types of tests were run, live for us to witness:

**Method Dispatch (10 million invocations)**

- Ruby 1.8.6 ~2.1 secs
- Ruby 1.9 ~0.95 secs
- JRuby trunk 1.29 secs for first call and then 0.6 secs (JRuby trunk on [Soy Latte](https://landonf.bikemonkey.org/static/soylatte/))

**Fibonacci**

- Ruby 1.9 0.4 secs
- Ruby 1.8.6 ~1.54 secs
- JRuby ~.77 secs first, 0.4 secs subsequently

**Hilbert Matrix of Dimension 2, 4, ... 64 times its inverse**

- Ruby 1.9 ~21secs
- JRuby ~21secs

These numbers are really encouraging and well beyond what I expected. This information alone gives good reason for me to look deeper at using JRuby as a Ruby implementation I can use for some Rails applications I have running today.

Sun had a good presence at the conference and they seem committed to making Ruby successful on the Java JVM. They have already converted some of their web sites to run Ruby on Rails on JRuby and they are looking for people to use JRuby and talk about it. The [NetBeans](https://www.netbeans.org/) IDE was created by a group at Sun as well. This is a great IDE for Ruby development and overall project development.

The talk by Charles really made me more aware of JRuby and convinced me to try it out in conjunction with [NetBeans](https://www.netbeans.org/) as an IDE on my Windows or Mac machines.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [JRuby](https://technorati.com/tags/JRuby), [Ruby on Rails](https://technorati.com/tags/Ruby%20on%20Rails)</div>