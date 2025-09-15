---
id: 140
title: 'New IronRuby Build Instructions'
date: '2007-09-05T09:16:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=140'
permalink: /ironruby/new-ironruby-build-instructions/
categories:
    - IronRuby
---

I started playing with the new drop of the IronRuby source this past Labor Day Weekend but found out quickly the source would not build due to the RakeFile included with the release.? It was apparent the RakeFile was very specific to the Microsoft internal environment and it would not work for me. Thanks to the Internet and the blogging world there was some quick fixes to this problem.? First, the [rubydoes.net](https://rubydoes.net/) site posted a [way to make the Rakefile](https://rubydoes.net/2007/09/02/building-ironruby-with-the-rakefile/) work and [Seo posted a NANT build file](https://rubydoes.net/2007/09/02/building-and-modifying-ironrubys-second-drop/) to help out with the task, both worked beautifully. [John Lam](https://www.iunknown.com/2007/09/new-ironruby-bu.html) has also created an [IronRuby home page](https://ironruby.rubyforge.org/) to help people get started.? You will find a reference to a Visual Studio solution file to help out with the build. **UPDATE:** After loading up the recent solution file available from the IronRuby on RubyForge, I was having some problems with the build, getting crypto errors and such.? A post to the IronRuby support list reminded me I need to switch by configuration to "ExternalDebug".? Once doing this, all is well and IronRuby builds great with Visual Studio 2005.

Technorati Tags: [IronRuby](https://technorati.com/tags/IronRuby)