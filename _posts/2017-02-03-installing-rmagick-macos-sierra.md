---
id: 1120
title: 'Installing RMagick on macOS Sierra'
date: '2017-02-03T10:58:56-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1120'
permalink: /ruby/installing-rmagick-macos-sierra/
dsq_thread_id:
    - '5518883150'
categories:
    - Ruby
tags:
    - 'macOS Ruby RMagick ImageMagick'
---

I ran into a problem recently on macOS Sierra, trying to install the RMagick ruby gem. I was using ImageMagick 7 installed via HomeBrew, with this error:

```
Building native extensions. This could take a while...<br></br>ERROR: Error installing rmagick:<br></br> ERROR: Failed to build gem native extension.
```

```
current directory: /Users/rbazinet/.rvm/gems/ruby-2.3.1@statusbox_admin/gems/rmagick-2.16.0/ext/RMagick<br></br>/Users/rbazinet/.rvm/rubies/ruby-2.3.1/bin/ruby -r ./siteconf20170203-49311-bi1omy.rb extconf.rb<br></br>checking for gcc... yes<br></br>checking for Magick-config... no<br></br>checking for pkg-config... yes<br></br>checking for outdated ImageMagick version (<= 6.4.9)... no<br></br>checking for presence of MagickWand API (ImageMagick version >= 6.9.0)... no<br></br>checking for Ruby version >= 1.8.5... yes<br></br>checking for stdint.h... yes<br></br>checking for sys/types.h... yes<br></br>checking for wand/MagickWand.h... no
```

```
Can't install RMagick 2.16.0. Can't find MagickWand.h.<br></br>*** extconf.rb failed ***<br></br>Could not create Makefile due to some reason, probably lack of necessary<br></br>libraries and/or headers. Check the mkmf.log file for more details. You may<br></br>need configuration options.
```

```
Provided configuration options:<br></br> --with-opt-dir<br></br> --with-opt-include<br></br> --without-opt-include=${opt-dir}/include<br></br> --with-opt-lib<br></br> --without-opt-lib=${opt-dir}/lib<br></br> --with-make-prog<br></br> --without-make-prog<br></br> --srcdir=.<br></br> --curdir<br></br> --ruby=/Users/rbazinet/.rvm/rubies/ruby-2.3.1/bin/$(RUBY_BASE_NAME)
```

```
To see why this extension failed to compile, please check the mkmf.log which can be found here:
```

```
/Users/rbazinet/.rvm/gems/ruby-2.3.1@statusbox_admin/extensions/x86_64-darwin-15/2.3.0/rmagick-2.16.0/mkmf.log
```

```
extconf failed, exit code 1
```

After a bit of trying to install the gem by setting the C\_INCLUDE\_PATH to the location of the MagickWand.h file, the gem could still not be installed. A Google search revealed the solution. It seems the RMagick gem (v 2.16.0 as of this writing) is not compatible with ImageMagick 7.

The [StackOverflow articles points out](http://stackoverflow.com/questions/41647979/imagemagick-7-with-rmagick-2-16-on-macos-sierra-cant-find-magickwand-h)the necessary steps to get it to work:

> Install version 6 (uninstall existing imagemagick if needed):
> 
> ```
> <span class="pln" style="margin: 0px; padding: 0px; border: 0px; color: #303336;">brew install imagemagick@6</span>
> ```
> 
> Since this is keg-only, you should then force-link it:
> 
> ```
> <span class="pln" style="margin: 0px; padding: 0px; border: 0px; color: #303336;">brew link </span><span class="pun" style="margin: 0px; padding: 0px; border: 0px; color: #303336;">--</span><span class="pln" style="margin: 0px; padding: 0px; border: 0px; color: #303336;">force imagemagick@6</span>
> ```
> 
> This installed imagemagick version 6.9.7-4 for me.

Afterwards, the gem then installed successfully. I am including the version numbers for future readers:

This solution worked great and RMagick installed without having to jump through any other hoops. Hope this helps.