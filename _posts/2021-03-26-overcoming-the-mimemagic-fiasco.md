---
id: 1597
title: 'Overcoming the Mimemagic Fiasco'
date: '2021-03-26T09:31:19-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1597'
permalink: /ruby-on-rails/overcoming-the-mimemagic-fiasco/
categories:
    - 'Ruby on Rails'
tags:
    - 'Ruby on Rails'
    - rubygem
---

I’m sure if you are a Ruby on Rails developer, you have heard about the fiasco that is [Mimemagic](https://rubygems.org/gems/mimemagic). It seems a component used in the Mimemagic gem was under a GPL license which was different than Mimemagic but because of how these licenses work, trickles down to users of Mimemagic. In this case the Ruby on Rails gem. If you’re interested in some of the background, the Ruby on Rails issue, [Dependency on mimemagic 0.3.x no longer valid](https://github.com/rails/rails/issues/41750) [\#41750](https://github.com/rails/rails/issues/41750), can fill you in. The gem was yanked from Rubygems and because of this, the gem could no longer be installed so builds broke everywhere. Users received the message:

> Your bundle is locked to mimemagic (0.3.5), but that version could not be found in any of the sources listed in your Gemfile. If you haven't changed sources, that means the author of mimemagic (0.3.5) has removed it. You'll need to update your bundle to a version other than mimemagic (0.3.5) that hasn't been removed in order to install.

 I have several clients needing a way to resolve this problem. I came up with a couple different options. ## Option 1 - Remove Dependency

 After a bit of research I discovered that Mimemgic was used by the Marcel gem which is required by ActiveStorage. If the application did not use ActiveStorage then removing the dependency would solve the problem. If you use ActiveStorage, this is not an option. Implementing this is pretty straightforward. Opening up your **config/application.rb**, you should see where Rails is required: ```
require "rails/all"
```

 Instead of requiring all, just require what you need and remove the ActiveStorage dependency. This is what requiring rails/all includes: ```
active_record/railtie
active_storage/engine
action_controller/railtie
action_view/railtie
action_mailer/railtie
active_job/railtie
action_cable/engine
action_mailbox/engine
action_text/engine
rails/test_unit/railtie
sprockets/railtie
```

 Just remove the second line and require each of these individually and you will be all set. ## Option 2 - Change how the gem is included

 Since the Mimemagic gem is open source and the code is in a git repo, we can identify the commit created when version 0.3.5 of the gem was released. Some commits that should solve the problem: - 0.3.3 <https://github.com/mimemagicrb/mimemagic/commit/d5ebc0cd846dcc68142622c76ad71d021768b7c2>
- 0.3.4 <https://github.com/mimemagicrb/mimemagic/commit/64b60d125432bde900fa4d9f77fb6f057a0c325a>
- 0.3.5 <https://github.com/mimemagicrb/mimemagic/commit/01f92d86d15d85cfd0f20dabd025dcbd36a8a60f>
 
 My projects have been using v0.3.5, I found the commit and added this to my Gemfile: ```
gem 'mimemagic', '0.3.5', git: 'https://github.com/mimemagicrb/mimemagic', ref: '01f92d8'
```

 This is a short-term fix. I expect once the Rails team resolves the dependency, new versions of Rails will be released.