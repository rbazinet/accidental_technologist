---
id: 1578
title: 'frozen_string_literal: the not so magical comment'
date: '2021-03-16T10:46:36-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=1578'
permalink: /ruby-on-rails/frozen_string_literal-the-not-so-magical-comment/
categories:
    - 'Ruby on Rails'
tags:
    - Ruby
    - 'Ruby on Rails'
---

I have been working on a project over the past year for a client with a large Ruby on Rails application. The project has allowed me to learn more about how large Rails applications are developed and managed in the real-world. I’ve picked up some real gems to help scale Rails applications which I’ve used in some of the smaller applications I maintain. One of the gems I learned about was the use of this magic comment:

```
# frozen_string_literal: true
```

 This comment was added to every Ruby file in this company’s application, which included several microservices along with a large main application. The files numbered over 1,000. I read up on the use of this magic comment use in other projects and the results seen. One in particular was [Sidekiq](https://sidekiq.org/) from Mike Perham. [Mike documented his use of the magic comment](https://www.mikeperham.com/2018/02/28/ruby-optimization-with-one-magic-comment/) and how it improved his use and helped cleanup his code. > Ruby 2.3 introduced a very nice option: each Ruby file can opt into Strings as immutable, meaning all Strings within that file will automatically freeze, with a simple magic comment at the top of the file.

 Mike includes some benchmarks that show improved memory footprint for Sidekiq. This was enough for me. I had one relatively small application that had an API component I was optimizing (Rails 5.2.x and Ruby 2.6.6). I thought about the use of the magic comment and decided to give it a try. I added it to every Ruby file in the project and was included as part of the weekly deploy. The deploy was done after hours one evening and I was ready to witness the magic. Unfortunately, this magic did not happen. I noticed right away the response times of API calls were *slower*, not faster. Maybe I was seeing the effects of cold cache calls and things would improve overnight. The next morning in fired up Skylight to check the response times from the API. To my surprise, the response times did not improve. Since the only change in this deploy was the use of magic comments, I decided to rollback the changes. This application runs on Heroku, rolling back with really easy and does not require reverting the code back and redeploying. The result was noticed instantly: ![IMG 1186](/assets/img/2021/03/IMG_1186.jpg "IMG_1186.jpg") Response times drastically improved as you can see from the above graph. At this point, I don’t have any reason to believe it's not the magic comment that caused these longer response times. During my brief research about the comment’s use, thinking there was more to using it than simply using it everywhere, I ran across a thread from the Ruby lang issue list. The threads title, [Reconsider impact of frozen\_string\_literal on dynamic strings](https://bugs.ruby-lang.org/issues/16047), I found interesting. Maybe this is a clue and dynamic strings being frozen in my application is part of the problem. It sounds like there is a benefit to use this feature but not everywhere, the exact result I saw in performance graphs. I am still exploring when to use the magic comment and when it shouldn’t be used. If you are using this throughout your applications it might be worth measuring with and without their use. Any others have more information to share, please reach out.