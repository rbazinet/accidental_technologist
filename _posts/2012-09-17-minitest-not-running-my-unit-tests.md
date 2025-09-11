---
id: 797
title: 'Minitest Not Running My Unit Tests'
date: '2012-09-17T09:40:09-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=797'
permalink: /ruby-on-rails/minitest-not-running-my-unit-tests/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '847765716'
categories:
    - 'Ruby on Rails'
tags:
    - autotest
    - minitest
    - rails
    - Ruby
    - 'unit testing'
---

I have started using [minitest](https://github.com/seattlerb/minitest) for Rails 3.x unit testing and since it comes with Ruby 1.9.x by default, it seems like a good direction to take my testing.

I am using the great gem by Mike Moore called [minitest-rails](https://github.com/blowmage/minitest-rails) which has a minitest dependency so I can easily have the latest version of minitest. ?This gem helps to more cleanly integrate and use minitest in our Rails 3.x projects.

As part of my setup I use [Autotest](https://github.com/seattlerb/zentest) so my tests run automatically when files change. ?I noticed none of my unit tests were running and upon further inspection, minitest was looking in test/unit and test/unit test directories but not in the test/models folder, which seems to be the minitest default. ?

Opening up my .autotest configuration file and adding the following:

```ruby
Autotest.add_hook :initialize do |at|
  at.add_mapping(/test\/models\/.*\.rb/) do |_, m|
    at.files_matching %r%^test/(models)/.*\.rb$%
  end
end
```

After restarting autotest, my unit tests are now being tested. ?I hope this saves someone some time.