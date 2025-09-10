---
id: 1639
title: 'Fix Installation of Ruby using rbenv on macOS Big Sur'
date: '2021-04-26T09:30:26-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1639'
permalink: /ruby/fix-installation-of-ruby-using-rbenv-on-macos-big-sur/
categories:
    - Mac
    - Ruby
tags:
    - rbnev
    - Ruby
---

I’ve been using with [rbenv](https://github.com/rbenv/rbenv) to manage installation and switching of Ruby versions for the pass year and have been very happy with it. I recently took the plunge and upgraded my main Apple MacBook Pro from macOS Catalina to Big Sur. Everything seemed to work well after the upgrade. Until I tried to install a new version of Ruby.

## Problem

When performing the usual command to install Ruby with rbenv, I started getting this message:

```bash
~ $ rbenv install 2.6.7
Downloading ruby-2.6.7.tar.bz2...
-> https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.7.tar.bz2
Installing ruby-2.6.7...
ruby-build: using readline from homebrew

BUILD FAILED (macOS 11.2.3 using ruby-build 20210423)

Inspect or clean up the working tree at /var/folders/mq/tlm78wy92v54ygbzfykqc8640000gn/T/ruby-build.20210424214159.42314.u6mGui
Results logged to /var/folders/mq/tlm78wy92v54ygbzfykqc8640000gn/T/ruby-build.20210424214159.42314.log

Last 10 log lines:
        rb_native_mutex_destroy(&vm->waitpid_lock);
        ^
vm.c:2489:34: warning: expression does not compute the number of elements in this array; element type is 'const int', not 'VALUE' (aka 'unsigned long') [-Wsizeof-array-div]
                             sizeof(ec->machine.regs) / sizeof(VALUE));
                                    ~~~~~~~~~~~~~~~~  ^
vm.c:2489:34: note: place parentheses around the 'sizeof(VALUE)' expression to silence this warning
compiling dmyenc.c
1 warning and 1 error generated.
make: *** [vm.o] Error 1
make: *** Waiting for unfinished jobs....
~ $
```

Trying to figure out the problem by looking at the message, it didn’t seem like something I could fix. Searching the [rbenv Github issues](https://github.com/rbenv/rbenv/issues) didn’t give many clues. Knowing that rbenv uses [ruby-build](https://github.com/rbenv/ruby-build) to automate the Ruby build process, I looked at the issues reported. It looks like I was not the only one having similar problems.

![CleanShot 2021 04 24 at 21 51](/assets/img/2021/04/CleanShot-2021-04-24-at-21.51.png "CleanShot 2021-04-24 at 21.51.png")

I tried several of the suggestions found from those issues and none of the solutions worked.

## Solution

I decided to turn to my friends on Twitter to see if anyone had faced this issue. Twitter never lets me down and [Robby Russell of Planet Argon](https://www.planetargon.com/about/robby-russell) came through, suggesting installing Ruby with these CFLAGS:

```bash
CFLAGS="-Wno-error=implicit-function-declaration" rbenv install 2.6.7
```

It worked perfectly and I was able to get additional versions of Ruby installed. This should also work if you’re having problems with [asdf Ruby version manager](https://github.com/asdf-vm/asdf-ruby) too. Asdf uses ruby-build behind the scenes.

I wondered why I hadn’t stumbled on this solution in the [ruby-build issues on Github](https://github.com/rbenv/ruby-build/issues). It turned out I saw the issue but ignored it because it referenced installing older versions of Ruby when Xcode 12 was installed. I have Xcode 12 but was installing new versions of Ruby. The ticket was a little deceiving as it worked with new versions as well.

For those interested in the details, they can be found in the ticket - [Installing older Ruby versions on OSX after Xcode 12](https://github.com/rbenv/ruby-build/issues/1489).