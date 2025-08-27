---
id: 1116
title: 'Fixing Nokogiri Installation on macOS Sierra'
date: '2016-10-01T17:54:04-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1116'
permalink: /ruby/fixing-nokogiri-installation-macos-sierra/
dsq_thread_id:
    - '5193170473'
categories:
    - Ruby
tags:
    - 'nokogiri macos rubygem'
---

Nokogiri seems to be the source of many problems on my Mac and after upgrading to macOS Sierra, I wasn't very surprised to have problem.

## Problem

 You may get an error similar to: ```

ERROR: Error installing nokogiri:
ERROR: Failed to build gem native extension.

/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby extconf.rb
Using pkg-config version 1.1.7
checking if the C compiler accepts ... yes
checking if the C compiler accepts -Wno-error=unused-command-line-argument-hard-error-in-future... no
Building nokogiri using packaged libraries.
Using mini_portile version 2.1.0
checking for iconv.h... yes
checking for gzdopen() in -lz... yes
checking for iconv... yes
************************************************************************
IMPORTANT NOTICE:

Building Nokogiri with a packaged version of libxml2-2.9.4.


```

 Suggesting using system libraries with: ```
gem install nokogiri -- --use-system-libraries
```

 Which leads to other less than helpful suggestions. ## Solution

 It seems after the macOS upgrade and moving to Xcode 8.0, command line tools were not installed. I was able to get Nokogiri installed by first installing the Xcode command line tools: ```
xcode-select --install
```

 Then install Nokogiri using the system libraries: ```
gem install nokogiri -- --use-system-libraries
```

 I hope this helps someone trying to solve a problem that seems should have been solved better by now.