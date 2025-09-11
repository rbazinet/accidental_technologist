---
id: 453
title: 'Install Consolas Font for Use in Xcode'
date: '2010-07-03T14:24:03-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=453'
permalink: /apple/install-consolas-font-for-use-in-xcode/
dsq_thread_id:
    - '113866839'
    - '113866839'
s2mail:
    - 'yes'
categories:
    - Apple
tags:
    - consolas
    - xcode
---

Coming from the Microsoft development world I have gotten really accustomed to using their Consolas font in Visual Studio. ?When moving over to the Mac I wanted to have the same font in Xcode. ?A bit of searching around the web I found a great resource,?[Install Microsoft?s Consolas Font on Mac OS X](http://www.wezm.net/2009/03/install-consolas-mac-osx/)?. The gist of it is:

1. > Download the Open XML File Format Converter for Mac from the Microsoft Mactopia download page.
2. > Double click the disk image if it wasn?t automatically mounted. You will see an Open XML File Format Converter meta package (.mpkg). This is an installer package comprised of several sub-installer packages. One of which is the fonts I was after.
3. > Run the Open XML Fonts Installer package. Running the following in the Terminal will achieve this in a typical Mac OS X install:?open "/Volumes/Open XML File Format Converter for Mac 1.1.5/Open XML File Format Converter for Mac 1.1.5.mpkg/Contents/Packages/OpenXML\_all\_fonts.pkg"
4. > Follow the prompts and you?re done. You can now configure you text editor and Terminal to use Consolas.?
 
 The instructions were a bit dated but the only difference from the original source was moving the version from 1.0.2 to 1.1.5. Once this is installed you can go to Xcode-&gt;Preferences-&gt;Fonts &amp; Colors and in the selected theme you select your font and can see Consolas and others added. **UPDATE**: The original post has been updated to include some screen shots to help with the setup - <http://www.wezm.net/technical/2010/08/howto-install-consolas-font-mac>.