---
id: 697
title: 'Homebrew Upgrade Woes'
date: '2012-02-15T11:35:42-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=697'
permalink: /general/homebrew-upgrade-woes/
s2mail:
    - 'yes'
dsq_thread_id:
    - '577304032'
categories:
    - General
tags:
    - homebrew
    - redis
---

I ran into an interesting problem recently after updating my installation of [Homebrew](http://mxcl.github.com/homebrew/) on my Mac Pro. ? Starting with the update command, which ran successfully:

```bash
$ brew update
```

I then attempted to update my redis installation to the latest:

```bash
$ brew upgrade redis
```

I was greeted with this message:

```
Error: undefined local variable or method `brew_install' for main:Object
```

Trying several things on my own to no avail, led me to a Google search result pointing out a known issue and solution. It appears there is an issue with a brew_upgrade.rb artifact being left behind after a brew update. The following commands from the [Homebrew wiki](https://github.com/mxcl/homebrew/wiki/Common-Issues) fix the problem:

```bash
$ cd $(brew --prefix)/Library/Contributions/examples
$ git clean -n # if this doesn't list anything that you want to keep, then
$ git clean -f # this will remove untracked files
```

I hope this helps someone with the same problem.