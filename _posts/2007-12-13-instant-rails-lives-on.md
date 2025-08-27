---
id: 189
title: 'Instant Rails Lives On'
date: '2007-12-13T10:23:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=189'
permalink: /instant-rails/instant-rails-lives-on/
dsq_thread_id:
    - '95925640'
categories:
    - 'Instant Rails'
---

[![logo50](http://rbazinet.files.wordpress.com/2007/12/logo50.png)](http://instantrails.rubyforge.org/wiki/wiki.pl)

I have been a long-time user of [Instant Rails](http://instantrails.rubyforge.org/wiki/wiki.pl) to write [Ruby on Rails](http://www.rubyonrails.org) applications on Windows. What I like most about Instant Rails is its level of isolation, where nothing is installed on my local computer as a service or anything permanent. I can just take it with me and run it anywhere.

A short time ago Curt Hibbs, the founder of the Instant Rails project on [Rubyforge](http://www.rubyforge.org), decided he didn't have the time to continue the project to the level it deserved. He announced the project would not longer be updatee and users should look to another Ruby stack on Windows, named [BitNami RubyStack](http://bitnami.org/stack/rubystack).

After trying BitNami I came away feeling like I had stepped back to something not as polished as Instant Rails. I have no ill feeling about Bitnami, I hope they do very well. I have been spoiled by the way Instant Rails runs isolated along with its nice user interface to control services and my Rails applications.

[![image](http://rbazinet.files.wordpress.com/2007/12/image-thumb.png)](http://rbazinet.files.wordpress.com/2007/12/image.png)

I decided to contact Curt and see what the story was with closing down the project and if I could do anything to help maintain it. Curt explained he was simply too busy with work and real life to maintain the project any longer and it was as simple as that. I thought about it a bit and offered to take the project over continue with this legacy. Curt was happy to have someone keep the project going.

So, now what?

#### **Immediate Plans**

This is my first foray into an open source project so please be patient. Anyone with advice on maintaining an open source project, it would be appreciated. For the short term my goals are not lofty, I plan on:

- Learning the layout of the Instant Rails project
- Inventory what is currently part of the project
- Understand how the project was administered so I can successfully manage to continue the project

#### **Short-term Plans**

In the next few weeks I want to be able to get a release out to RubyForge. I would like to at least provide and update to the following:

- Ruby on Rails 2.0.1, or newer if bugs are patched between now and then
- Ruby 1.8.6 Patch Level 111

#### **Longer-term Plans**

I have used Instant Rails and love how it works. I am not going to make any large changes with the project, I want to keep the functionality the way it is. Curt has done a great job and there is no need to change for the sake of change.

I plan to make some updates to some of the packages to get them up-to-date beyond the ones above:

- RubyGems
- MySQL
- Mongrel
- Rake
- Ruby 1.9

Of course I will fix any bugs I can along the way.

I have been asked about adding some things to the current build such as Capistrano 2.1 among some others. What would users like to see? I can't really add any and all gems to releases, it has to be by consensus. As always users can just add gems themselves and customize as much as they want.

I will be posting updates here as things progress and I get other ideas or come to a fork in the road and need feedback. Please come here for informational updates on Instant Rails. Release updates will continue to be in the [RubyForge project page](http://rubyforge.org/projects/instantrails/).

<div class="wlWriterSmartContent" style="display:inline;margin:0;padding:0;">Technorati Tags: [Instant Rails](http://technorati.com/tags/Instant%20Rails),[Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails)</div>