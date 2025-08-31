---
id: 68
title: 'RubyCLR - Ruby meets .NET'
date: '2006-03-30T16:26:00-05:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=68'
permalink: /net/rubyclr-ruby-meets-net/
dsq_thread_id:
    - '95928794'
categories:
    - .NET
---

My day job dictates most of my work be in .NET using C#, for the most part it works well. The usual drawbacks you hear are the costs of implementing a Microsoft solution using Windows 2003 and SQL Server. The platforms are complex but they do work. In my spare time I have had an interest in learning a new language, which is [Ruby](http://www.ruby-lang.org/en/). Ruby is a language written by a Japenese developer and has gotten very popular as of late. If you haven't gotten the chance to look at Ruby it was developed with other languages in mind and trying to better them, SmallTalk and Perl are a couple of those languages. It is well worth a look. Well it seems a developer named [John Lam](http://www.iunknown.com/) has created a Ruby to CLR bridge, known as [RubyCLR](http://www.iunknown.com/articles/2006/03/16/third-drop-of-rubyclr), so developers can create Ruby code under the .NET CLR. It sounds like a match made in heaven and it has been getting more attention as of late. I [downloaded the latest RubyCLR](http://www.iunknown.com/images/RubyCLR.zip) drop from John's web site and proceeded to install it. Install is a strong word since you simple unzip the contents of the file into a directory. All of the CLR bridge source code is included as well as a bunch of ruby code to handle the Ruby side of things and a bunch of Ruby files that exercises the bridge to the CLR. The code below is an example from the drop. It brings up a window running in Windows and databinds a drop down list. It's just works.

```
require 'winforms'
```

 ```
class MainForm def initialize form = Form.new form.Text = 'Ruby WinForms App' names = [] names << 'John' << 'Paul' << 'George' << 'Ringo' list = ListBox.new list.data_source = names.make_bindable form.controls.add(list) @form = form end end WinFormsApp.run(MainForm)
```

 I have installed and tested all of the samples that came with RubyCLR, all but one work and it may be a permission issue on my system I need to work out. John points out his samples were tested in Ruby 1.8.2, but I am running 1.8.4 so it may have something to do with the differing version numbers too. I plan to write my own .NET apps over the coming weeks using this tool. I report my progress and share the code I create. Update : 7/30/2007 - the RubyCLR project has moved to RubyForge.? The project can be found at [**<font color="#0b6d90">http://rubyforge.org/projects/rubyclr/</font>**](http://rubyforge.org/projects/rubyclr/). Technorati Tags : [Ruby](http://technorati.com/tag/Ruby), [Ruby on Rails](http://technorati.com/tag/Ruby%20on%Rails), [RubyCLR](http://technorati.com/tag/RubyCLR)