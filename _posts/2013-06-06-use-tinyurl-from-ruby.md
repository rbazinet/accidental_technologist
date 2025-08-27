---
id: 928
title: 'Use TinyURL from Ruby'
date: '2013-06-06T14:30:02-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://accidentaltechnologist.com/?p=928'
permalink: /ruby/use-tinyurl-from-ruby/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '1370364187'
categories:
    - Ruby
tags:
    - httparty
    - Ruby
    - tinyurl
---

I recently found myself needing to use [TinyURL](http://tinyurl.com/) on a client project. ?I did a bit of scouring the web for some Ruby code to solve the problem but with little success. ?Much to my surprise they don't have an available API, but they do have a way to access over HTTP.

This is a simple Ruby class to use TinyURL. ?Note: this depends on [HTTParty](https://github.com/jnunemaker/httparty), so add to your project.

```
```
class Tinyurl <br></br>
```  include HTTParty <br></br>  base_uri 'tinyurl.com' <br></br><br></br>  def shorten(url) <br></br>    self.class.get("/api-create.php?url=#{url}") <br></br>  end <br></br>end 
```

You can find the [Gist on Github](https://gist.github.com/rbazinet/5721055). Hopefully you find this code useful. Enjoy!