---
title: "Diving into Ruby"
date: "2006-07-24"
categories:
  - coding
tags:
  - ruby
---

If you're involved in web development, or even software in general, you've probably heard about [Ruby](http://www.ruby-lang.org/) lately. It's a programming language out of Japan, with a reputation for elegant simplicity, expressive power and just plain being fun to use. The [Ruby on Rails](http://www.rubyonrails.org/) web development framework has catapulted the language into the public eye.

I've been dabbling with Ruby for the past week, but it wasn't in fact Rails that drew me to it. The fact that currently Rails doesn't run easily under the web server I use at home (IIS 5.1) and I have a very limited amount of time for extra-curricular development have so far ruled that out (although I'm quite interested).

It was actually reading through the articles on [Stevey's Drunken Blog Rants](http://www.cabochon.com/~stevey/blog-rants/) that tipped the balance. Contrary to the name, it's a collection of blog posts from Steve Yegge (who now has a [more typical blog](http://steve-yegge.blogspot.com/)) that I found to be quite insightful and entertaining. They do often qualify as rants, but he goes on at some length about the weakness of modern programming languages, how in many cases they hamper our ability to get work done, rather than smoothing the way. He's got me seriously thinking about going back and really learning Lisp, since I didn't get it that well in college (although he clearly recognizes that it isn't too useful in production today).

Anyway, this post is supposed to be about Ruby, though. Yegge's current favorite language is Ruby, and he has a lot of persuasive reasons why he likes it--mostly revolving around how the language doesn't get in the way.

I've experienced (on a small scale) some pains around my current default language, C#, in my home development. I've built a clean, sharp OOP'd up system with nice classes to represent my database storage, elements in the database, units tests for the whole thing. Then I went to add a field. Now maybe there's some obvious deficiency to my design, but it's quite in the mainstream from what I've seen. Anyway, adding a field required changes across multiple files, broke unit tests (well, I guess that's what they're there for, but anyway) forced me to make choices about how to restructure method params--do I want a new constructor, or add the parameter to the old one and change all the call sites? Long story short, something that seems like it should be fairly natural was a pain in the butt.

So I finally set out to actually try out Ruby. I can't use it for production code at my current workplace, but there's a lot of repetitive scripting tasks that I think it might work perfectly for once I get the language well fixed in my mind. And Yegge's right--it's just a pleasure to work with. The syntax, the classes, the interactive shell, it all just works together really well.

Here's some great places to start if you're wanting to dabble with Ruby as well:

- [http://tryruby.hobix.com/](http://tryruby.hobix.com/) -- Try Ruby online in an interactive shell and tutorial, right in your browser. No install, plenty of good humor and a great way to get a feel for the language.
- [http://rubyforge.org/projects/rubyinstaller/](http://rubyforge.org/projects/rubyinstaller/) -- Ruby installer for Win32. Has a basic IDE and all the core stuff--including irb, the interactive shell which is fabulous for just meddling around.
- [http://www.rubycentral.com/book/index.html](http://www.rubycentral.com/book/index.html) -- The Pragmatic Programmers: Programming in Ruby. Excellent book that I'm partway through for learning the whole language. Again, lots of character and good writing.

Don't know exactly how this'll all be useful in the future, but another takeaway from Stevey's Drunken Blog Rants is that learning new languages isn't a bad thing whether you use the language or not. It's been too long since I've looked at code (apart from VB) that doesn't have curly braces and semi-colons all over it, so I'm taking the plunge.
