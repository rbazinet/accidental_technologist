---
id: 1122
title: "Tip: Save Typing 'bundle exec'"
date: '2017-02-17T09:55:55-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1122'
permalink: /tips/tip-save-typing-bundle-exec/
dsq_thread_id:
    - '5566717993'
categories:
    - Tips
tags:
    - 'Ruby on Rails'
    - Tips'
---
If you're a Ruby on Rails developer, you probably type the words *bundle exec* numerous times a day. I finally got tired of it and decided to do something about it. In the context of keeping it simple, I use the 'alias' command and add to my .profile. I know there are more Rails recommended ways of solving this problem via binstubs but I rather not use that approach. My solution is simple, add an alias to my .profile like this:

```
alias be='bundle exec '
```

 Keen observers will notice the trailing space after the command. This space allows for [alias chaining](http://en.wikipedia.org/wiki/Alias_(command)#Chaining) and can be helpful. The resulting shortcut allows this: ```
bundle exec rspec
```

 To this: ```
be rspec
```

 The 'alias' command is super useful and has many applications to help remove repetitive typing tasks."