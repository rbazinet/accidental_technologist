---
id: 363
title: 'Kicking Your Coding into High Gear'
date: '2009-07-07T10:49:00-04:00'
author: 'Rob Bazinet'
layout: post
guid: 'https://localhost/~rbazinet/?p=363'
permalink: /programming/kicking-your-coding-into-high-gear/
dsq_thread_id:
    - '95926303'
categories:
    - Programming
---

[![kicking](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/KickingYourCodingintoHighGear_9625/kicking_thumb.jpg "kicking")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/KickingYourCodingintoHighGear_9625/kicking_2.jpg) I finished reading the great book by [Chad Fowler](https://chadfowler.com/), [The Passionate Programmer](https://www.pragprog.com/titles/cfcar2/the-passionate-programmer). This is a fantastic read and got me thinking about various aspects of my professional life. One of the best pieces of advice in the book which too few developers actually follow is from **Chapter 15: Practice, Practice, Practice**. The premise of the chapter is that developers should always be practicing their craft and honing it into a fine instrument. We don?t become a professional simply because we have a job, but by the attention we pay to our individual skills.

It is common for a developer to go out and buy a book on a new programming language they want to learn and go through the book?s examples, only to come away feeling a bit empty. We as developers do not learn best this way, we learn by doing. When professionals are asked what they recommend in order for people to become proficient in a new programming language, they say create ?something?. Go out and pick an idea and create that application.

This was how college courses teach programming; concepts and language constructs are shown and then a problem is given to be solved. This is the perfect example that we learn best by doing.

What if you don?t have any ideas which seem reasonable to start? The idea of just setting out to create ?something? can be a barrier to entry in itself.

Thankfully, there are several great web sites with the sole purpose of exercising our minds and helping us become better programmers. The web sites present the reader with problems to solve with a range of difficulty.

### Ruby Quiz

[Ruby Quiz](https://rubyquiz.com) has been around for a while and includes 156 puzzles with at least one but often multiple solutions for each problem. Although it appears RubyQuiz has not published a new problem since February 2008, it is still a great source of problems to solve. RubyQuiz is designed to provide solutions in Ruby but the problems are solvable with any language which might make a good exercise to see which language creates the most elegant or beautiful solution.

Some of my personal favorites are:

- [Yahtzee](https://rubyquiz.com/quiz19.html)
- [Sodoku Solver](https://rubyquiz.com/quiz43.html)
- [Math Captcha](https://rubyquiz.com/quiz48.html)
- [Scheduling](https://rubyquiz.com/quiz42.html)
- [Word Search](https://rubyquiz.com/quiz107.html)
- [IP to Country](https://rubyquiz.com/quiz139.html)
 
I like these because the provide some practical value and are interesting. Thanks to [Srdjan Pejic](https://twitter.com/batasrki/) for pointing out that Ruby Quiz is [still alive and continuing to be updated](https://rubyquiz.strd6.com/). The current count is at 212 quizzes.

### Code Kata

Chad recommends [Code Kata](https://codekata.pragprog.com/2007/01/code_kata_backg.html) which was done by [Dave Thomas](https://pragdave.pragprog.com/) of the Pragmatic Programmers and is explained as:

> Code Kata is an attempt to bring this element of practice to software development. A *kata* is an exercise in karate where you repeat a form many, many times, making little improvements in each. The intent behind code kata is similar. Each is a short exercise (perhaps 30 minutes to an hour long). Some involve programming, and can be coded in many different ways. Some are open ended, and involve thinking about the issues behind programming. These are unlikely to have a single correct answer. I add a new kata every week or so. Invest some time in your craft and try them.

The Code Kata series, consisting of twenty-one problems of varying complexity, addresses problems we might face in our daily lives as developers.

One interesting example and clever approach to presenting a problem is [Kata Nine: Back to the Checkout](https://codekata.pragprog.com/2007/01/kata_nine_back_.html). This Kata requires the developer to create a checkout that might be used in a grocery store. Dave gives the reader what the input data might look like:

> ```
> Item   Unit      Special
> Price     Price
> --------------------------
> A     50       3 for 130
> B     30       2 for 45
> C     20
> D     15
> ```

What the interface needs to be:

> The interface to the checkout should look like:
> 
> ```
>    co = CheckOut.new(pricing_rules)
> co.scan(item)
> co.scan(item)
> :    :
> price = co.total
> ```

And a set of unit tests so the developer knows what the code should do:

> ```
> class TestPrice < Test::Unit::TestCase
> def price(goods)
> co = CheckOut.new(RULES)
> goods.split(//).each { |item| co.scan(item) }
> co.total
> end
> def test_totals
> assert_equal(  0, price(""))
> assert_equal( 50, price("A"))
> assert_equal( 80, price("AB"))
> assert_equal(115, price("CDBA"))
> assert_equal(100, price("AA"))
> assert_equal(130, price("AAA"))
> assert_equal(180, price("AAAA"))
> assert_equal(230, price("AAAAA"))
> assert_equal(260, price("AAAAAA"))
> assert_equal(160, price("AAAB"))
> assert_equal(175, price("AAABB"))
> assert_equal(190, price("AAABBD"))
> assert_equal(190, price("DABABA"))
> end
> def test_incremental
> co = CheckOut.new(RULES)
> assert_equal(  0, co.total)
> co.scan("A");  assert_equal( 50, co.total)
> co.scan("B");  assert_equal( 80, co.total)
> co.scan("A");  assert_equal(130, co.total)
> co.scan("A");  assert_equal(160, co.total)
> co.scan("B");  assert_equal(175, co.total)
> end
> end
> ```

Each Kata is not only a different problem but each also teaches different aspects of real-world programming whether it be unit tests, decoupling or multiple approaches to a problem.

### Project Euler

[Project Euler](https://projecteuler.net) is yet another set of problems for developers to solve with code. The web site describes Project Euler as:

> Project Euler is a series of challenging mathematical/computer programming problems that will require more than just mathematical insights to solve. Although mathematics will help you arrive at elegant and efficient methods, the use of a computer and programming skills will be required to solve most problems.

There are a total of 252 problems with a range of difficulty with all being mathematical or computer science in nature. These types of problems exercise our math skills along with our abilities to create algorithms. Each problem lists now many people solved each problem:

[![ProjectEuler](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/KickingYourCodingintoHighGear_9625/ProjectEuler_thumb.jpg "ProjectEuler")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/KickingYourCodingintoHighGear_9625/ProjectEuler_2.jpg)

Each problem has a very brief description or requirement, Problem #7 ? Find the 10001st prime:

[![EulerProblem7](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/KickingYourCodingintoHighGear_9625/EulerProblem7_thumb.jpg "EulerProblem7")](https://accidentaltechnologist.com/files/media/image/WindowsLiveWriter/KickingYourCodingintoHighGear_9625/EulerProblem7_2.jpg)

As you can see, you won?t be mired in requirements but only a simple and brief description of the problem at hand. These problems seem to take longer than the others as they are more involved but worth it.

### Top Coder

Another way to flex your coding muscle is by competing against others while learning from others. [Top Coder](https://www.topcoder.com/) has been around for a while and offer many types of competitions open to the public or customized for a company.

One of their contests is the annual TopCoder Open which is already over for 2009 but you can an idea of what is all about from the [contest web site](https://www.topcoder.com/tco09).

### Rails Rumble

An additional coder competition is [Rails Rumble](https://r09.railsrumble.com/) which you probably guessed uses [Ruby on Rails](https://rubyonrails.org).

> The Rails Rumble is a 48 hour web application development competition. As a **contestant**, your team gets one weekend to design, develop, and deploy the best web property that you can, using the awesome power of [Ruby](https://ruby-lang.org) and [Rails](https://rubyonrails.com).

Contestants, as they are called, enter from varying skill levels and can come as a team to compete by creating a web application over a two-day period. This is a great way to learn from others who are more experienced as well as meet many great developers which could result in a long-term relationship.

Rails Rumble 2009 is in August so get going on entering.

### Source Code

Although coding problems are great for sharpening the skills you have there are other ways to build skills. I think the single best way to improve ones code is by looking at the code of other people. There is virtually an unlimited supply of code out in the open source world just free for educating yourself. Just go to [GitHub](https://github.com) and start searching and poking around what?s there, pull down some projects and see what others are doing. You will learn a lot doing this very simple exercise.

[Dan Pickett](https://www.enlightsolutions.com/) points out that a great way of improving ones coding skills would be to get involved in an open source project. Fellow contributors make great reviewers who can help improve your code. I could not agree more.

### Finally

I think the best way to learn is by doing, and these are some good places to start. I am sure there are plenty of other sources of challenge like this on the web, please pass them along in comments and I will update the post.

My personal preference is the coding problems like those in Ruby Quiz, Code Kata and Project Euler. They give a wide selection of problems that can be solved right at home when the time is available.

I have been doing some of these problems in my spare time but being reminded how important the exercise is from [The Passionate Programmer](https://www.pragprog.com/titles/cfcar2/the-passionate-programmer) made me want to write this post. This is an important book and every developer should read it to give ideas about your careers or reinforce the ideas you have already.

<div class="wlWriterEditableSmartContent" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:e1458369-d84f-4b28-a2b6-7aab92f31af3" style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px">Technorati Tags: [Programming](https://technorati.com/tags/Programming),[Top Coder](https://technorati.com/tags/Top+Coder),[Project Euler](https://technorati.com/tags/Project+Euler),[Code Kata](https://technorati.com/tags/Code+Kata),[Ruby Quiz](https://technorati.com/tags/Ruby+Quiz)</div>