---
id: 274
title: 'Ruby on Rails and the VM of Your Choice'
date: '2008-05-22T10:15:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=274'
permalink: /ruby-on-rails/ruby-on-rails-and-the-vm-of-your-choice/
dsq_thread_id:
    - '95924769'
categories:
    - 'Ruby on Rails'
---

I think just about everyone in the software development community at least knows what [Ruby on Rails](http://www.rubyonrails.org/) is, so I won't do into it here. There is some real exciting things going on in the Ruby community and in particular, Ruby on Rails running on more than one implementation of Ruby. [![rails](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/RubyonRailsandtheVMofYourChoice_13CD9/rails_thumb.png)](http://www.accidentaltechnologist.com/files/media/image/WindowsLiveWriter/RubyonRailsandtheVMofYourChoice_13CD9/rails_2.png)

Rails has been running on the original Ruby, [Matz's Ruby Interpreter](http://www.ruby-lang.org) for a long time now and it runs pretty well. Recently, other organizations have created new Ruby implementations to compete with the original.

### JRuby

[JRuby](http://jruby.codehaus.org/Home) is the first of the new Ruby implementations to successfully get Rails running successfully. JRuby was an independent open-source project bought by Sun MicroSystems, leveraging the JRuby team and Sun's knowledge of Java. JRuby is an implementation of Ruby running on Sun's Java JVM.

- A 1.8.6 compatible [Ruby](http://www.ruby-lang.org/en/) interpreter written in 100% pure Java
- Most builtin Ruby classes provided
- Support for interacting with and defining java classes from within ruby
- Bean Scripting Framework ([BSF](http://jakarta.apache.org/bsf/)) support
- Distributed under a tri-license ([CPL](http://www.eclipse.org/legal/cpl-v10.html)/[GPL](http://www.gnu.org/copyleft/gpl.html)/[LGPL](http://www.gnu.org/copyleft/lgpl.html))

The importance of having a language such as Ruby running with Rails on top of the JVM is really important for the getting Ruby adoption in those organizations heavily invested in Java. The JRuby team has set a precedent for others to follow, which they have or are close.

### Rubinius

[Rubinius](http://rubini.us/) is a Ruby Virtual Machine written from the ground up from the folks at [Engine Yard](http://www.engineyard.com/). [Evan Phoenix](http://blog.fallingsnow.net/) is the lead developer for Rubinius.

The Rubinus site details what Rubinius means to developers:

> The Rubinius virtual machine is loosely based on the Smalltalk-80 architecture. The small virtual machine is presently implemented in C.
> 
> The Ruby core libraries are written in Ruby with some functionality provided by primitives written in C. There is also a foreign function interface (FFI) that enables describing and directly calling functions in system libraries. There is no need to use compiled bindings.
> 
> Rubinius has multiple concurrency primitives such as Channels, Actors, Tasks, and Threads. Rubinius is developed in the TDD/BDD style and we are concurrently writing a set of [RSpec](http://rspec.rubyforge.org) compatible specs for the Ruby core libraries. Rubinius is also an ideal platform to experiment with various cutting-edge technology like software transactional memory (STM).

The real news about Rubinius is not they are another Ruby interpreter but they recently announced the ability of running Ruby on Rails on Rubinius. [Evan gave the news on his blog](http://blog.fallingsnow.net/2008/05/17/rails-on-rubinius/):

> We hit a major milestone tonight. As most people know, we’ve been working to run Rails on Rubinius by RailsConf to have something to show off, even if it’s pretty slow.
> 
> Well, I’m super proud to say that tonight, rails served up both static and dynamic pages under Rubinius. Previous to tonight, we’d been blocked just trying to get Rails to even load. I decided to just try loading it up and bang on it enough to get it up and going.
> 
> In a scary way, it didn’t take very much code. Which meant we were very close already.
> 
> It’s pretty late, so I’m going to keep this short. Big thanks to everyone who’s contributed to Rubinius and had faith in us. Enormous thanks to Engine Yard, without whom I don’t know if we’d been able to reach this amazing height.
> 
> More updates to come…

This is really great news for the Ruby developers, showing there are and will be more options to where and when you can run your Ruby applications.

### IronRuby

The last of the Ruby implementations comes from Microsoft with [IronRuby](http://www.ironruby.net/). These project has been in development for quite some time now and takes the folks that made up the RubyCLR project and Ruby.NET projects. [John Lam](http://www.iunknown.com/) joined Microsoft as a Project Manager coming with his RubyCLR and [Wayne Kelly](http://sky.fit.qut.edu.au/~kellyw/) from the [Ruby.NET project is helping the team out](http://www.iunknown.com/2008/02/welcome-wayne-k.html). The team is small within Microsoft but makes up a good number of open source folks who help with the implementation.

Microsoft describes IronRuby as:

> IronRuby is a [.NET](http://msdn2.microsoft.com/en-us/netframework/default.aspx) implementation of the [Ruby](http://www.ruby-lang.org/en/) programming language. We are building a high-quality implementation of Ruby, with excellent performance and seamless integration with .NET libraries and infrastructure. We are targeting compatibility with the 1.8.x branch of Ruby modulo continuations.
> 
> IronRuby heavily leverages Microsoft's [Dynamic Language Runtime](http://blogs.msdn.com/hugunin/archive/2007/04/30/a-dynamic-language-runtime-dlr.aspx), and both are released with full source code under the [Microsoft Permissive License](http://www.microsoft.com/resources/sharedsource/licensingbasics/permissivelicense.mspx). The IronRuby source code is hosted on [Rubyforge](http://rubyforge.org/projects/ironruby), which is a home for open source Ruby projects. We're looking for contributions to the IronRuby libraries; our goal is to achieve parity with the Ruby standard libraries. If you love .NET and Ruby, then we need your help!

The key part of IronRuby, it runs on the .NET CLR and can take advantage of those large number of existing class libraries and the security of the .NET framework. This will allow developers to mix their C# and VB.NET code with Ruby take advantage of Ruby's dynamic features. Today most Windows servers and desktops have the .NET framework installed, making it an easy to run your Ruby applications.

We undoubtedly can expect great things here with respect to integration to the [Dynamic Language Runtime](http://blogs.msdn.com/hugunin/archive/2007/04/30/a-dynamic-language-runtime-dlr.aspx) (DLR) and [Silverlight](http://silverlight.net/), MVC Framework and who knows what else, I don't think the story here is complete.

As of today the IronRuby team is close to having Ruby on Rails running on the CLR. I am part of the IronRuby developer list and if I had to guess, I would say by [RailsConf 2008](http://en.oreilly.com/rails2008/public/content/home) you will see an announcement of Rails running on IronRuby.

### Finally

These three alternative implementation of Ruby are really important to the Ruby community. Each has it strengths and give developers both choice and leverage when trying to move a great dynamic language like Ruby into an organization which may already have a deep investment in Microsoft with .NET or in Sun with Java. These implementations certainly lower the barrier to entry.

Rubinius comes at Ruby from a different angle creating a Ruby VM written in Ruby. Why is this important you ask? It's important because it opens up the Ruby language to open source developers who may not be skilled in writing C (which is what Matz's Ruby is written in) but are skilled in Ruby and can help advance the language. I think most developers miss this point, maybe it is subtle, maybe not, but this is a critical point.

IronRuby has the benefit of being written in C# and developers can help shape that implementation with the abundance of C# developers.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:e5879621-a234-40f7-9f66-c2060aff1260" style="margin: 0px; padding: 0px; display: inline;">Technorati Tags: [Ruby](http://technorati.com/tags/Ruby),[Ruby on Rails](http://technorati.com/tags/Ruby%20on%20Rails),[IronRuby](http://technorati.com/tags/IronRuby),[Rubinius](http://technorati.com/tags/Rubinius),[JRuby](http://technorati.com/tags/JRuby)</div>