---
id: 197
title: 'Ruby 1.9 Released - Should you use it today?'
date: '2007-12-30T01:40:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=197'
permalink: /ruby/ruby-1-9-released-should-you-use-it-today/
dsq_thread_id:
    - '95924568'
categories:
    - Ruby
---

[![Ruby Logo](https://rbazinet.files.wordpress.com/2007/12/ruby-logo.jpg)](https://rbazinet.files.wordpress.com/2007/12/ruby-logo.jpg "Ruby Logo")

[Ruby 1.9 was released on Christmas](https://www.ruby-lang.org/en/news/2007/12/25/ruby-1-9-0-released/), announced on the Ruby web site. Matz made the announcement we all expected, as Matz seems to enjoy giving all the Rubyists a nice Christmas present.

Many developers probably were anxious for the release and wanted to download it, get it setup and start using their Ruby or Rails applications with some new found speed improvements. Anyone who has been around the computer industry for any amount of time knows it is rarely easy just to take a new release of a programming language and just use it with existing code or framework.

Dave Thomas has some [nice insight](https://pragdave.blogs.pragprog.com/pragdave/2007/12/ruby-19right-fo.html) on the topic of using Ruby 1.9 and whether it is right for you.

The Good:

> - *Performance*: this new Ruby runs on the new YARV virtual machine. For most compute-intensive applications, you'll see significant speed improvements.
> - Support for string *encodings and transcoding*. Every string in Ruby can now have an associated encoding (ASCII, UTF-8, SJIS, and so on). You can transcode the contents of a string (for example converting ISO-8859-1 to UTF-8).
> - Integrated *RubyGems* and *rake*
> - Cool new goodies such as *Fibers*

The Bad:

> - This is a development release, not a production release. It has known bugs, and there'll be more to come.
> - It contains several incompatible changes (block parameters are now block-local, String is no longer Enumerable, "cat"\[1\] now returns "a", rather than 65)
> - It is more rigorous that 1.8 when it comes to detecting invalid code. For example, 1.8 accepts `/[^\x00-\xa0]/u`, while 1.9 complains of invalid multibyte escapes

Some of the things Rails developers expect today is that things normally just work and we take a lot for granted. Many of the existing gems and libraries do not work with Ruby 1.9, this includes Rails 2.0.2. Users have reported creating a new Rails application does not work property.

#### What's the purpose of Ruby 1.9 then?

Well, it's a development release so how about use it for development? This means developers who have created gems or libraries for Ruby should be taking advantage of this early release and get their products to work with 1.9.

It is also made available for hard-core Ruby developers to learn what's new and how to use the new features, to play around with now. This does not mean you should be using it for production code, there are known bugs and there will be more found.

Users should install Ruby 1.9 as a secondary Ruby install, not an install over the top of your production Ruby 1.8.x or whatever. Dave Thomas gives a nice tutorial on the subject:

> ```bash
> $ autoconf
> $ ./configure --prefix=/Users/dave/ruby19
> $ make
> $ make install
> 
> Then, I just add /Users/dave/ruby19/bin to my path, and I'm using my nicely sandboxed version of Ruby 1.9.
> 
> $ PATH=/Users/dave/ruby19/bin:$PATH
> $ ruby -v
> ruby 1.9.0 (2007-12-26 revision 0) [i686-darwin8.11.1]
> ```

This method will give you a sandbox or Ruby 1.9 to write code with and explore.

#### So, should it be used today?

The answer is yes and no. Yes, so you can play around with it, get to know it and update your libraries or gems if you maintain any. The other side of the argument is that you should not expect to use it for production code, it's not meant for that today.

Ruby has come a long way and the future is bright. The [performance improvements](https://antoniocangiano.com/2007/02/19/ruby-implementations-shootout-ruby-vs-yarv-vs-jruby-vs-gardens-point-ruby-net-vs-rubinius-vs-cardinal/) alone is reason enough to want to get it and learn it.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Ruby on Rails](https://technorati.com/tags/Ruby%20on%20Rails),[Ruby](https://technorati.com/tags/Ruby)</div>