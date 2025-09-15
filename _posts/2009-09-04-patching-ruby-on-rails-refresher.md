---
id: 373
title: 'Patching Ruby on Rails Refresher'
date: '2009-09-04T11:49:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=373'
permalink: /ruby/patching-ruby-on-rails-refresher/
dsq_thread_id:
    - '95925346'
categories:
    - Ruby
---

**UPDATE:** As one comment points out, it is not a good idea to directly patch production unless it was an emergency. The normal state of patching would be to patch the source and make sure your tests still pass and likely to test on a staging environment. The process to patch would still be the same as I describe below.

The recent [XSS Vulnerability in Ruby on Rails](https://weblog.rubyonrails.org/2009/9/4/xss-vulnerability-in-ruby-on-rails) discussed on the Ruby on Rails blog and discovered by [Brian Mastenbrook](https://brian.mastenbrook.net/display/36), reminded me about patching my Rails applications which are running vendored. If not doing this all the time, one can forget how it is done.

All of my production Rails applications keep a copy of Rails in the &lt;application\_root&gt;/vendor/rails directory. This just keeps me in check that I don’t upgrade Rails on a server and possibly break a production application. The only minor drawback to this approach is when a patch is released, as with this XSS Vulnerability, you have to manually update the Rails installation for each application by hand. If you don’t do it all the time, one can forget how it’s done.

### Patching Rails

Getting and applying a patch is pretty simple. The list of patches are listed as:

- [2-0-CVE-2009-3009.patch – Patch for 2.0 series](https://weblog.rubyonrails.org/assets/2009/9/4/2-0-CVE-2009-3009.patch)
- [2-1-CVE-2009-3009.patch – Patch for 2.1 series](https://weblog.rubyonrails.org/assets/2009/9/4/2-1-CVE-2009-3009.patch)
- [2-2-CVE-2009-3009.patch – Patch for 2.2 series](https://weblog.rubyonrails.org/assets/2009/9/4/2-2-CVE-2009-3009.patch)
- [2-3-CVE-2009-3009.patch – Patch for 2.3 series](https://weblog.rubyonrails.org/assets/2009/9/4/2-3-CVE-2009-3009.patch)

Follow 3 easy steps:

1. cd &lt;your\_application\_root&gt;/vendor/rails
2. wget <https://weblog.rubyonrails.org/assets/2009/9/4/2-2-CVE-2009-3009.patch>
3. patch -p1 &lt; 2-2-CVE-2009-3009.patch

You need to know the Rails version you are running vendored before you can determine which patch file to apply. The simple way for me is to run ***script/about*** from &lt;your\_application\_root&gt;. This displays the Rails version which you can then choose from the URL links above and replace the URL you need for the #2 ***wget*** command.

Depending on the security settings where the application is installed, the ***wget*** and patch may need to have a ***sudo*** inserted before the command. I needed to do this my production servers but it would not be needed if patching a local project which would be later committed to source control.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:17ad280e-85cc-43c3-aeab-0e9c75e1a458" style="margin: 0px; padding: 0px; display: inline; float: none;">Technorati Tags: [Ruby on Rails](https://technorati.com/tags/Ruby+on+Rails),[XSS Vulnerability](https://technorati.com/tags/XSS+Vulnerability),[Patching](https://technorati.com/tags/Patching)</div>