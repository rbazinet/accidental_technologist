---
id: 192
title: 'RubyGems 1.0 Released, Helps Windows Developers'
date: '2007-12-20T11:18:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=192'
permalink: /ruby/rubygems-1-0-released-helps-windows-developers/
dsq_thread_id:
    - '95924545'
categories:
    - Ruby
---

**UPDATE**: Make that [RubyGems 1.0.1](http://blog.segment7.net/articles/2007/12/20/rubygems-1-0-1), released tonight.

The great folks at the RubyGems project have released RubyGems 1.0. This release fixes a bunch of issues, including some important ones for Windows developers. Updates include:

> Major New Features Include:
> 
> - RubyGems warns about various problems with gemspecs during gem building
> - More-consistent versioning for the RubyGems software
> 
> Other Changes Include:
> 
> - **Fixed various bugs and problems with installing gems on Windows**
> - Fixed using <kbd>gem server</kbd> for installing gems
> - Various operations are even more verbose with?verbose
> - Built gems are now backwards compatible with 0.9.4
> - Improved detection of RUBYOPT loading rubygems
> - <kbd>ruby setup.rb</kbd> now has a?help option
> - Gem::Specification#bindir is now respected on installation
> - Executable stubs can now be installed to match ruby?s name, so if ruby is installed as ?ruby18?, foo\_exec will be installed as ?foo\_exec18?
> - <kbd>gem unpack</kbd> can now unpack into a specific directory with?target
> - OpenSSL is no longer required by default
> 
> Deprecations and Deletions:
> 
> - Kernel#require\_gem has been removed
> - Executables without a shebang will not be wrapped in a future version, this may cause such executables to fail to operate on installation
> - Gem::Platform constants other than RUBY and CURRENT have been removed
> - Gem::RemoteInstaller was removed
> - Gem::Specification#test\_suite\_file and #test\_suite\_file= are deprecated in favor of #test\_file and #test\_file=
> - Gem::Specification#autorequire= has been deprecated
> - Time::today will be removed in a future version

It's pretty simple to update your current RubyGems installation, simply type:

> ```bash
> gem update --system
> ```

The upcoming release of Instant Rails 2.0 will include this new version of RubyGems, primarily because of the issues 0.95 users experienced on Windows. Please read the [official announcement on this RubyGems release](http://blog.segment7.net/articles/2007/12/20/rubygems-1-0-0) which will help with other ways to update or install RubyGems on your system.

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [RubyGems](http://technorati.com/tags/RubyGems),[Instant Rails](http://technorati.com/tags/Instant%20Rails)</div>