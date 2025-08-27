---
id: 291
title: 'Book Review : Foundations of Programming by Karl Seguin'
date: '2008-08-13T09:00:02-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'http://localhost/~rbazinet/?p=291'
permalink: /book-reviews/book-review-foundations-of-programming-by-karl-seguin/
dsq_thread_id:
    - '95913300'
categories:
    - 'Book Reviews'
---

I [blogged recently](http://accidentaltechnologist.com/programming/karl-seguin-giving-away-foundations-of-programming-ebook/) about [Karl Seguin's](http://codebetter.com/blogs/karlseguin/default.aspx) free eBook titled [Foundations of Programming](http://codebetter.com/blogs/karlseguin/archive/2008/06/24/foundations-of-programming-ebook.aspx). I took some time recently to give it a read and wanted to share a few thoughts about this fundamental book. [![cover](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/BookReviewFoundationofProgrammbyKarlSegu_BFD6/cover_thumb.jpg)](http://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/BookReviewFoundationofProgrammbyKarlSegu_BFD6/cover_2.jpg)

I have to say it was well worth the time, I was pleasantly surprised how well laid out each chapter was and the depth of the content. This book is perfectly suited toward those developers curious what ALT.NET is, the tools used by the ALT.NET crowd or just simply a solid foundation for software development today. The first chapter goes into what ALT.NET is, the goals and the future which should clear up any confusion by people first hearing the term.

Readers learn definitions of many words tossed about by ALT.NET folks such as:

- DRY (Don't Repeat Yourself)
- Explicitness and Cohesion
- Coupling
- Unit Tests and Continuous Integration

### Organization

Each chapter hits on each hot topic in software engineering and the ALT.NET crowd:

- Domain Driven Design
- Persistence
- Dependency Injection
- Unit Testing
- Object Relational Mappers

Other chapters include:

- Back to Basics : Memory
- Back to Basics : Exception Handling
- Back to Basics : Proxy This and Proxy That

The "Back to Basics" chapters do a great job on topics we often take for granted or as an afterthought.

#### Domain Driven Design

A very concise definition and clear examples are included to give readers an understanding of what Domain Driven Design is and how to relate it to a real world example. The example used is for a car dealership which we can all relate to and understand.

The examples used are simple but really get the points across as Domain Modeling principles are explained. Karl also contrasts the differing approaches design by Microsoft which is a very Data Driven approach to the ALT.NET way, which is Domain Driven. It is interesting to see this put in writing.

Also pointed out are the key roles in a successful domain driven project, the users, clients and stakeholders. This is often left out of too many text and a great point to make to make us understand who this is really for in the end.

Key topics covered:

- Factory Pattern
- Access Modifiers
- Interfaces
- Information Hiding and Encapsulation

#### Persistence 

As the book progresses from this point the topics get more into the technical side of the discussion with particular development tools chosen. Karl points out specific tools he recommends but others are perfectly acceptable substitutions.

Persistence is demonstrated by the use of a manual set of data mapped classes and goes through the process to show how it all works. As various problems arise they are addressed and fixed. In the end a manual approach is advised against because the developer spends too much time writing code which is useless to the client.

Key topics covered:

- Data Mapper
- Object-Relational Impedance Mismatch

#### Dependency Injection

A very healthy discussion of Dependency Injection (DI) is covered in this book, from the very basic concepts of DI to a handcrafted implementation. The author points out that DI can be done manually in simple situations but can get unruly in complex situations. The DI framework, StructureMap is discussed and used in examples to help solidify the ideas.

It is really great to see recommendations for frameworks and tools that already exist and leveraging those tools. The examples in this chapter which start out with creating a manual DI implementation build on the car example from previous chapters. The car example is use also to show integration of StructureMap into the project.

Key topics covered:

- Coupling
- Constructor Injection

#### Unit Testing 

Unit Testing is a part of software development which is very important today. Karl talks about all the reasons companies and individuals do not create unit tests. It is pointed out just how important unit testing your code really is and the savings in the long run to the overall project cost.

A good job is done explaining why we need to unit test and the tools needed to start testing. More than one framework is discussed but the examples use nUnit.

A sufficient level of detail is given to describe how granular to make tests including proper naming and the scope of your tests. This chapter seems to have the most opinion and passion about any topic in the book, it's clear Karl cares very much about the subject.

Key topics covered:

- What is a Unit Test
- Mocking
- Test Driven Development (TDD)

#### Object Relational Mappers

The topic of Object Relational Mapping (OR/M) was covered a bit in the Persistence section but it is not until this chapter we see what tools to use. Karl chooses NHibernate as the framework used to explain these concepts.

The ideas many developers use for a Data Access Layer (DAL) are often hard to throw out, as he explains his own doubts with using an OR/M instead of something that has worked so well. I think this is often the case with anyone adopting an OR/M and tossing aside those manually created DAL libraries using stored procedures. I know this is the case for me as I start using NHibernate, with concerns of inline SQL performance and scalability.

Karl does a really good job of explaining how to get NHibernate up and running and putting it into use in the ongoing code sample. NHibernate is exercised nicely in this chapter showing examples of querying, relationships, lazy loading.

Key topics covered:

- Inline SQL vs. Stored Procedures
- NHibernate
- Lazy Loading

#### Back to Basics : Memory

Developers today writing code for .NET should feel privileged to not have to worry about memory allocation and de-allocation we C/C++ programmers had to deal with on a daily basis. Although .NET developers don't have to keep memory allocation in the front of their mind Karl does cover the basics of Stack and Heap, how each is used and why they are important to be aware of while writing your applications. To me this was one of the best chapters to help out a developer to fine-tune their knowledge which will help them go a very long way when trying to understand when something goes wrong.

Key topics covered:

- The Stack
- The Heap
- Pointers
- Boxing/Unboxing
- Passing by Reference
- Passing by Value
- Pinning

#### Back to Basics : Exception Handling

I have seen a lot of code written by other developers, both newbie and experienced, and one thing that I always find interesting is the way they implement their exception handling. I have seen such stark contrasts as catching all exceptions, regardless, to catching no exceptions.

In my opinion, the most important piece of information from this chapter is:

> Your strategy for handling exceptions should consist of two golden rules:
> 
> 1. Only handle exceptions that y ou can actually do something about, and
> 2. You can't do anything about the vast majority of exceptions

Key topics covered:

- Cleanup using Try/Finally
- The mechanics of catching and throwing exceptions
- When to throw exceptions
- Creating custom exceptions

The topics were very basic but very essential. All of the golden rules of when to catch exceptions, acting on them and rethrowing them is covered. Each topic is covered in enough detail to give good understanding of the general use of exceptions and their power.

#### Back to Basics : Proxy This and Proxy That

This topic sort of confused me at first, wondering were the topic of proxies and using examples of proxy servers fit into the subject of software development but Karl was right on with the topic discussing what a proxy is, it's use and power.

Much of the topic included examples of proxies for both lazy loading using NHibernate and object proxies in RhinoMocks.

### Conclusion

I found a couple mistakes in the code presented in the book, but nothing any reader should not be able to work around. I highly recommend this book for anyone trying to come up to speed on the popular topics in today's software engineering or anyone just wanting to understand the main points clearer. Keep in mind though, this is not meant to be an all-inclusive text on these subjects but a good starting point as a springboard to look further with a good starting point.

This is a great book focusing on the fundamental aspects of writing software today. To me it seemed much more than that, it reads more like an ALT.NET how-to guide. Much of the contents covers topics .NET developers hear about but may not get a chance to dive into each application. I think this applies to any developer wanting to get a better view of what "else" is out there.

I cannot say enough good things about what Karl has put into his ebook. I don't know if it's because I didn't have to wade through 800 pages of rambling to get out the key pieces of information that was important to me or because Karl just knows what is important. Either way, it is worth a read regardless of your level of expertise.

I hope Karl continues to write some additional ebooks, maybe a few with more details of NHibernate, Unit Testing and Dependency Injection frameworks.

<div class="wlWriterSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:d748d4e4-856d-4ac1-b3b0-134830fea249" style="padding-right: 0px; display: inline; padding-left: 0px; float: none; padding-bottom: 0px; margin: 0px; padding-top: 0px">Technorati Tags: [ALT.NET](http://technorati.com/tags/ALT.NET),[Book Review](http://technorati.com/tags/Book%20Review),[.NET](http://technorati.com/tags/.NET),[NHiberate](http://technorati.com/tags/NHiberate),[StructureMap](http://technorati.com/tags/StructureMap)</div>