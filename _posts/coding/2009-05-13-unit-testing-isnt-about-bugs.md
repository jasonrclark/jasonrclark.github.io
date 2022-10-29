---
title: "Unit testing isn't about bugs"
categories: coding
categories: coding
date: "2009-05-13"
tags:
  - "unittesting"
---

For those already living the TDD lifestyle this will be old news. But a couple weeks back I overheard one of my coworkers say, "Unit testing doesn't find bugs because they're only checking what you already expect. That's not where the bugs are"



As sold as I am on unit tests, I agree. No amount of automated dev testing can replace good QA. But this comment also misses the major wins for unit testing.



**Unit tests force smaller classes and methods**

The largest impact to my coding from TDD is that my classes and methods have shrunk. It's well known that short and simple code is best, but it takes discipline to keep your code that way.



Unit tests backs you up on keeping things small. Tests get hard to write when things are large and complicated. You'll start to feel an itch (or worse) when that method does too much, or that class requires onerous initialization.



Yes, you still have to recognize the smell and do something about it, but the unit tests gives some nice pressure in the right direction.



**Unit tests highlight bad naming**

A good test reads like a description of what a method does. Are there required actions in the midst of your test that don't fit with the flow? Maybe you've got a bad name there.



Again, bad names crop up everywhere, but good, striped down unit test are often the first spot to highlight a name that needs work.



**Unit tests give you confidence**

With tests in place, I'm more likely to rename, extract methods, and otherwise clean things up. The more thorough the tests (and the simpler the code in question) the more comfortable I am with making changes.



Until you've got unit tests in place and make a large-scale change without breaking anything significant, I don't think you can entirely understand how valuable that confidence is.



**Unit tests do find bugs... later**

The tests you write won't find the bug you just checked in and didn't write a test for. But it will save you six months from now when you violate that subtle condition in a hurry to fix some other bug. They'll ensure over time that some aspects of the code haven't changed, no matter what chaos is swirling around them.



So there it is. Even if unit tests don't point out all your bugs straight off, they are still worth the effort.
