---
id: 917
title: 'Dead Simple Model Diagrams for Your Rails Project'
date: '2013-05-09T16:25:51-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://accidentaltechnologist.com/?p=917'
permalink: /ruby-on-rails/dead-simple-model-diagrams-for-your-rails-project/
wpgplus_message:
    - ''
wpgplus_publish:
    - 'yes'
dsq_thread_id:
    - '1276162283'
categories:
    - 'Ruby on Rails'
tags:
    - diagrams
    - 'domain models'
    - erd
    - models
    - 'Ruby on Rails'
---

While working on Rails project I often find myself wanting a visual representation of my model classes. ?I usually grab a notebook and manually write them out. Depending on the project, it can take time.

I started searching for a diagramming tool that might be easier and faster than writing out by hand, there are a bunch of them out there. ?Most have a steep learning curve and are expensive.

A bit of searching around the web for a Ruby-specific tool lead me to a gem named [rails-erd](https://github.com/voormedia/rails-erd). ?Maybe you have heard of it, maybe I'm the last to know, but regardless it is a nice find.

## Installing

The gem relies on GraphViz to do it's drawing magic. ?There are a multitude of ways to install it, I used Homebrew:

```bash
brew install graphviz
```

Add the gem to your development group in your Gemfile:

```ruby
group :development do
  gem 'rails-erd'
end
```

Don't forget to run the bundle command.

When everything is install, from the root of your Rails project simple run:

```bash
rake erd
```

When the rake task runs, watch the output from the tool. It tells you items you won't find on the diagram either because it's not used or a relationship isn't right.

## The Output

The result will be a PDF file in the root of your project that looks something like this:?

![Erd](/assets/img/2013/05/erd1.png "erd.png")

As you can see, it gives a very nice model diagram with all the relations and properties. Just what I was looking for.

The tool is very customizable and the [web site outlines everything that can be changed](https://rails-erd.rubyforge.org/customise.html). ?I haven't looked very much at this aspect since it produced everything I needed the first time.