---
id: 271
title: 'IronRuby, Mono and My Mac'
date: '2008-05-12T13:00:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=271'
permalink: /ironruby/ironruby-mono-and-my-mac/
dsq_thread_id:
    - '95924753'
categories:
    - IronRuby
---

[![MacBookProCorner](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/IronRubyMonoandMyMac_A54D/MacBookProCorner_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/IronRubyMonoandMyMac_A54D/MacBookProCorner_2.jpg)

I have been developing Ruby applications for the past couple years, not as my only work but part of my overall work. The IronRuby project is a large part of my work as well, not as a committer, but from a consumer standpoint. I am looking forward to the day where we can run Ruby on Rails on IronRuby and therefore IIS. I also use IronRuby for the book I am working on with a friend for Wrox Press, which I talked about previously.

I have always been a Windows developer and use Windows systems for all of my daily work. This change in the past year when I jumped on the Apple Mac bandwagon and started using a MacBook Pro. I have to say I really love it from a hardware perspective as well as from the perspective of the usability of OSX, it is just a pleasure.

This leads me to the reason for this post, getting IronRuby to build and run on a Mac under Mono.

### Mono

The first part of getting IronRuby to run on the Mac is to install [Mono](http://www.mono-project.com/Main_Page). Mono is needed to have a .NET 2.0 available on the Mac, its current version at the time of this writing is 1.9.1. The download for the Mac is a [Universal DMG Image](http://ftp.novell.com/pub/mono/archive/1.9.1/macos-10-universal/3/MonoFramework-1.9.1_3.macos10.novell.universal.dmg) extracting to a PKG which you just double-click and install, pretty straight forward.

I followed much of [Seo Sanghyeon's brief tutorial](http://sparcs.kaist.ac.kr/%7Etinuviel/download/IronRuby/HOWTO) on the details of IronRuby on Mono but needed to make some adjustments to actually get it to work on my system. For example, I did NOT install Mono from source, I used the pre-built package.

### IronRuby Source

The IronRuby team is constantly make changes to the source and not all revisions are compatible with this built process. I am sure as we get closer to release there will be more stable base of code. For right now we are on Revision 100, so the Subversion command to get the source looks like this:

> ```bash
> svn co -r 100 http://ironruby.rubyforge.org/svn/trunk ironruby
> ```

### IronRuby Build Process

The build process is where it gets a little tricky to make sure everything is lined up. The first thing is changing to the directory where IronRuby source is located:

> ```bash
> cd ironruby
> ```

A patch needs to be applied for Rake to work properly. The patch can be found on [Seo's web site here](http://sparcs.kaist.ac.kr/~tinuviel/download/IronRuby/patch-mono-r100), notice it is build revision specific and new ones will likely be available. Next up run Patch:

> ```bash
> patch -p0 < patch-mono-r100
> ```

The next step was the key to my success, telling the Mono compiler where the needed libraries are located. The build would never work without it.

> ```bash
> export PKG_CONFIG_PATH="/Library/Frameworks/Mono.framework/Libraries/pkgconfig/"
> ```

This export I put in my ~/.bash\_profile file and closed and reopened my Terminial window. Next, run Rake:

> ```bash
> rake compile mono=1
> ```

If all goes well the build will succeed, with likely some warnings, and you can run IronRuby:

> ```bash
> mono build/mono_debug/ir.exe
> ```

You should see a nice prompt showing a happy IronRuby interpreter running.

[![IronRubyOnMono](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/IronRubyMonoandMyMac_A54D/IronRubyOnMono_thumb.jpg)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/IronRubyMonoandMyMac_A54D/IronRubyOnMono_2.jpg)

### Conclusion

The process to get IronRuby on the Mac under Mono is pretty straightforward and will likely get easier. The key for me getting this to work was how great the community is around IronRuby. The members of the [IronRuby-Core](http://rubyforge.org/mailman/listinfo/ironruby-core) mailing list do such a great job.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:d36badb7-8437-404a-b732-6d70b102184c" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: [IronRuby](http://technorati.com/tags/IronRuby),[Mono](http://technorati.com/tags/Mono),[Mac](http://technorati.com/tags/Mac)</div>