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

```bash
Building native extensions. This could take a while...
ERROR: Error installing rmagick:
ERROR: Failed to build gem native extension.
```

```bash
current directory: /Users/rbazinet/.rvm/gems/ruby-2.3.1@statusbox_admin/gems/rmagick-2.16.0/ext/RMagick
/Users/rbazinet/.rvm/rubies/ruby-2.3.1/bin/ruby -r ./siteconf20170203-49311-bi1omy.rb extconf.rb
checking for gcc... yes
checking for Magick-config... no
checking for pkg-config... yes
checking for outdated ImageMagick version (<= 6.4.9)... no
checking for presence of MagickWand API (ImageMagick version >= 6.9.0)... no
checking for Ruby version >= 1.8.5... yes
checking for stdint.h... yes
checking for sys/types.h... yes
checking for wand/MagickWand.h... no
```

```bash
Can't install RMagick 2.16.0. Can't find MagickWand.h.
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers. Check the mkmf.log file for more details. You may
need configuration options.
```

```bash
Provided configuration options:
 --with-opt-dir
 --with-opt-include
 --without-opt-include=${opt-dir}/include
 --with-opt-lib
 --without-opt-lib=${opt-dir}/lib
 --with-make-prog
 --without-make-prog
 --srcdir=.
 --curdir
 --ruby=/Users/rbazinet/.rvm/rubies/ruby-2.3.1/bin/$(RUBY_BASE_NAME)
```

```bash
To see why this extension failed to compile, please check the mkmf.log which can be found here:

/Users/rbazinet/.rvm/gems/ruby-2.3.1@statusbox_admin/extensions/x86_64-darwin-15/2.3.0/rmagick-2.16.0/mkmf.log

extconf failed, exit code 1
```

After a bit of trying to install the gem by setting the `C_INCLUDE_PATH` to the location of the MagickWand.h file, the gem could still not be installed. A Google search revealed the solution. It seems the RMagick gem (v 2.16.0 as of this writing) is not compatible with ImageMagick 7.

The [StackOverflow article points out](https://stackoverflow.com/questions/41647979/imagemagick-7-with-rmagick-2-16-on-macos-sierra-cant-find-magickwand-h) the necessary steps to get it to work:

> Install version 6 (uninstall existing imagemagick if needed):
> 
> ```bash
> brew install imagemagick@6
> ```
> 
> Since this is keg-only, you should then force-link it:
> 
> ```bash
> brew link --force imagemagick@6
> ```
> 
> This installed imagemagick version 6.9.7-4 for me.

Afterwards, the gem then installed successfully. I am including the version numbers for future readers:

- **macOS Sierra**: 10.12.3
- **Ruby**: 2.3.1
- **RMagick**: 2.16.0
- **ImageMagick**: 6.9.7-4

This solution worked great and RMagick installed without having to jump through any other hoops. Hope this helps.