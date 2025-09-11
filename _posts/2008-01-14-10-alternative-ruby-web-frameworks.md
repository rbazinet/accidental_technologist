---
id: 209
title: '10 Alternative Ruby Web Frameworks'
date: '2008-01-14T07:30:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=209'
permalink: /ruby/10-alternative-ruby-web-frameworks/
dsq_thread_id:
    - '95910853'
categories:
    - Ruby
---

Do you want to write web applications but don't want to use [Ruby on Rails](http://www.rubyonrails.org/)? We all know Ruby on Rails is the most popular web framework for Ruby on the planet. Rails is the reason Ruby is so popular today, Rails is Ruby's killer application. I am very much in favor of using Rails but there may be times when a smaller or different framework is desired or just for the sake of choices. We also know once something becomes popular, it is duplicated, imitated or downright recreated. I started thinking about this recently from a series of posts on the Ruby Talk group on Google. Someone on the list wanted to create a web site utilizing Ruby but didn't want to use Rails. It is a fair question and I knew of a couple but wanted to dig deeper to see how many frameworks were springing up. I am not claiming any expertise with these frameworks, I have used some to try to understand how they work and possible applications for smaller projects. Some I was not aware of until making this list. I am doing this as a reference for fellow Ruby developers who are looking for alternative web application frameworks.

### Merb

 This is probably the most popular of the alternative frameworks, primarily because it has been around for a while and gets good coverage in the forums and was started by popular Rubyist, [Ezra Zygmuntowicz](http://brainspl.at/). I have started playing with this framework for a couple applications I am creating. The documentation is very good but there doesn't seem to be any good tutorials yet. I can expect the lack of tutorials being a new framework. There is a nice overview of Merb for the site I write for, InfoQ, called [High Performance Ruby MVC: Merb](http://www.infoq.com/news/2007/08/performance-ruby-on-merb) From the Merb web site: > Like Ruby on Rails, Merb is an MVC framework. Unlike Rails, Merb is ORM-agnostic, JavaScript library agnostic, and template language agnostic, preferring plugins that add in support for a particular feature rather than trying to produce a monolithic library with everything in the core. In fact, this is a guiding principle of the project, which has led to third-party support for the [ActiveRecord](http://ar.rubyonrails.org/), [DataMapper](http://datamapper.org/), and [Sequel](http://sequel.rubyforge.org/) ORMs.

 More information about Merb can be found at <http://merbivore.com/>. ### Camping

 Camping is a microframework which is less than 4K and has its own HTML markup-type language implemented in Ruby. An except from the CampingShortSample from the Camping web site: ```ruby
require 'camping'
Camping.goes :HomePage

module HomePage::Controllers
  # The root slash shows the `index' view.
  class Index < R '/'
    def get
      render :index
    end
  end

  # Any other page name gets sent to the view
  # of the same name.
  #
  # /index -> Views#index
  # /sample -> Views#sample
  #
  class Page < R '/(\w+)'
    def get(page_name)
      render page_name
    end
  end
end
```

 More information about Camping can be found at <http://code.whytheluckystiff.net/camping/>. ### Ramaze

 I wasn't aware of this framework until recently. It is an MVC framework with all the elements to create complete Ruby web applications. The typical "Hello World" application below is very simple. ```ruby
require 'rubygems'
require 'ramaze'

class MainController < Ramaze::Controller
  def index
    'Hello, World!'
  end
end

# Run using mongrel on http://localhost:7000/
Ramaze.start :adapter => :mongrel, :port => 7000
```

 The Ramaze web site describes Ramaze as: > Ramaze is a simple, light, and modular open-source web-framework written in Ruby, similar in spirit to [Rails](http://www.rubyonrails.org/), [Camping](http://camping.rubyforge.org/files/README.html) and [merb](http://merbivore.com/).

 I think this framework holds a lot of promise if the developers keep it simple and light. I see Ruby web frameworks getting better and better as developers create and evolve new frameworks such is happening with Ramaze. The developers know about Rails, Camping and merb and want the best of what they know. Evolution in action. I found a nice article putting [Ramaze to work at Zen and the Art of Ruby Programming](http://antoniocangiano.com/2008/01/08/ramaze-a-ruby-framework-that-will-amaze/). I plan to spend some time with this one and some others. More information about Ramaze can be found at <http://ramaze.net/>. ### Vintage

 Vintage was released very recently but appears to be well-thought-out and is very small. The Vintage web site claims: > ###### The super slim, microwebframework of doom!
> 
>  Vintage is a very small web framework written in Ruby based on the original idea of [Merb](http://www.merbivore.com/): Mongrel serving up ERb (Embedded Ruby) templates. The idea has been expanded and now Vintage helps you serve up ERb, HAML, Textile, Markdown, and Markaby templates.

 More information about Vintage can be found at <http://vintage.devjavu.com/>. ### Halcyon

 This appears to also be new, details from the Halcyon RubyForge page: > Halcyon is a JSON Web App Server Framework built on Rack for speed and light weight. Halcyon has several aims and goals, including: - **Be fast** - easy with [Rack](http://rack.rubyforge.org/) and [Mongrel](http://mongrel.rubyforge.org/)
> - **Be small** - also not a problem with Rack and Mongrel
> - **Talk small** - communications are fast and flexible with JSON transport layer
> - **Be flexible** - since it's an HTTP server, it's very flexible and has lots of room to grow
> - **Be easy to implement** - also easy since we're developing in [Ruby](http://ruby-lang.org/) here

 More information about Halcyon can be found at <http://halcyon.rubyforge.org/>. ### Nitro/Og

 This framework has been in development for a while but seems to be lacking for a long time. It does has a nice website but missing information in many areas. I have seen a bunch of references to this framework on the web. Documentation for the API looks to be complete and detailed. I know very little about this framework. I wish the web site had some tutorials More information about Nitro can be found at <http://www.nitroproject.org/>. ### Wuby

 This is new, lightweight framework that when I say it, I feel like I am talking like Elmer Fudd. Come one, doesn't it sound like it a little. Wuby comes from Chris Matthieu, the voice of the [Rubyology](http://rubyology.com/) podcast. The Wuby web site describes Wuby as: > Wuby is a Ruby Web Server designed for light-weight Ruby web applications and a framework for storing and accessing data without deploying a database engine. No third-party applications or Gems are required to run Wuby and host a Ruby-based web site. Remember the days of IIS and ASP code where you could mix HTML and ASP scripts inside of &lt;% %&gt; symbols? Wuby allows you to accomplish the same task but using the Ruby language instead of ASP! Wuby consists of the following components: - Lightweight &amp; fast web server
> - Supports only GET and POST methods currently
> - CGI params and environmental variables
> - Optional directory browsing
> - Persistent hashed data access layer
> - MySQL, SQLite, and Postgres support

 More information about Wuby can be found at http://wuby.org/ ### Sinatra

 I have never heard of this one before but their web site says Sinatra is: > Classy web-development dressed in a DSL*

 More information about Sinatra can be found at [http://sinatra.rubyforge.o rg/](http://sinatra.rubyforge.org/). ### Ruby WAF

 This one looks to be not maintained but may be worth a look if you wanted to create your own framework or if you are looking for an open source project to get involved in. More information about Ruby WAF can be found at <http://sourceforge.net/projects/ruby-waf/>### webby

 The webby web site describes webby as: > **Webby** is a super fantastic little website management system. It would be called a *content management system* if it were a bigger kid. But, it's just a runt with a special knack for transforming text. And that's really all it does, manages the legwork of turning text into something else, an **ASCII Alchemist** if you will.

 More information about webby can be found at <http://webby.rubyforge.org/>. I plan to publish future lists as new frameworks as I find out about new frameworks and have a chance to check them out. As you can see there are a large number of frameworks for writing Ruby web applications instead of using Rails. I think Rails is a great framework but it's always good to have other tools at our disposal, maybe a smaller job or certain features of any of these frameworks would be better suited to the task. I am sure I am missing some frameworks, please let me know any I missed in the comments and I will incorporate into future posts. Technorati Tags: [Ruby](http://technorati.com/tags/Ruby),[Web Frameworks](http://technorati.com/tags/Web%20Frameworks),[Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails)