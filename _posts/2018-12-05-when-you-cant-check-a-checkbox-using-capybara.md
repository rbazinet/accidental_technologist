---
id: 1260
title: 'When You Can&#8217;t Check a Checkbox using Capybara'
date: '2018-12-05T09:00:55-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1260'
permalink: /ruby-on-rails/when-you-cant-check-a-checkbox-using-capybara/
categories:
    - 'Ruby on Rails'
tags:
    - capybara
    - rspec
    - 'Ruby on Rails'
    - tests
---

In my last post I [documented an issue I was having using Capybara](http://accidentaltechnologist.com/ruby-on-rails/fixing-staleelementreferenceerror-when-using-capybara/) on a client’s Ruby on Rails application with a ReactJS frontend. I wanted to share another issue I came across during my feature testing escapades.

# The Problem

 During my recent feature testing project I had a form which has a checkbox on it. The checkbox had a label with it. Did I mention this is a ReactJS frontend? I’m not sure if this is specific to ReactJS, but I suspect it isn’t. I think other frontend JavaScript frameworks may exhibit the same problem. The Ruby code for my feature test is dead simple: ```
check “English”
```

 That’s it. The test should run and when it finds the checkbox with a label of English, the checkbox should be checked. But, it doesn’t work. After many attempts at making this work and more Google searches than I can remember..I ended up at the [Capybara mailing list](https://groups.google.com/forum/#!forum/ruby-capybara). # The Solution

 Thomas Walpole was kind enough to reply with his thoughts on the matter: > 99.9% sure your checkbox isn't actually visible on the screen. What you're describing as the "checkbox" is probably an image (probably added via CSS pseudo elements) being shown in place of the actual checkbox input element to ensure the same styling across different browsers. If the checkbox has a label element correctly attached to it you can use `check('whatever', allow\_label\_click: true)` - [https://www.rubydoc.info/ github/jnicklas/capybara/ Capybara/Node/Actions#check- instance\_method](<https://www.rubydoc.info/%20github/jnicklas/capybara/ Capybara/Node/Actions#check- instance_method>) - to tell Capybara to click the label element instead of the hidden checkbox input to toggle state. If you don't have an associated label then you'll need to find whatever element is actually visible on the page and click it instead.

 Changing my test to include this for the checkbox, worked perfectly. ```
check(“English", allow_label_click: true)
```

 I hope someone finds this valuable and will save them some time and hair pulling.