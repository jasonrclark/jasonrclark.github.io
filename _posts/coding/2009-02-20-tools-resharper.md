---
title: "Tools: ReSharper"
categories: coding
categories: coding
date: "2009-02-20"
tags:
  - "resharper"
  - "tools"
---

I've long been skeptical of Visual Studio add-ins. This goes back to the VS6 days when I fell in love with an add-in, but eventually removed it because it did such horrific things to my machine's performance. I felt so betrayed, bereft and I'm sure some other suitable words that start with "b."



Well, times change. WebMD's been buzzing about [ReSharper](http://www.jetbrains.com/resharper/). It's been quite a while since I took the plunge, but I'm never looking back.



Enumerating ReSharper features could keep someone blogging for months at the least, but I thought I'd call out a few of my favorites. Seems like half the time someone talks about ReSharper, I find some widget or keystroke I hadn't noticed before. Maybe you'll notice something new.



**Go to Definition isn't busted anymore**

This one's kind of a no-brainer, but sometime around VS 2005, I started finding that "Go to Definition" wasn't working like it used to. It'd bring up strange files with "\[from metadata\]" in the title, and only give function signatures.



Turns out, as best we can tell, this is because VS doesn't properly handle the pdb's on our assembly references. For various reasons we don't use project references, so for a long time I suffered without my beloved F12.



Well, ReSharper restores this functionality, and it actually works. Now if I could just persuade it to go to code files for projects I don't have in the solution...



**Run unit tests in-context**

Prior to ReSharper, I used [TestDriven.Net](http://testdriven.net/) to run my NUnit tests directly from Visual Studio. I can't tell you how much of a game-changer that was for my unit testing. Good habits often come from reducing the friction of doing the right thing, and having a single keystroke run tests was a massive step forward.



ReSharper provides the same abilities as TestDriven.Net and more. The only caveat is that sometimes it has trouble running large sets of heavy-weight tests (which we have quite a few of around here). For those, I'll still crack open NUnit itself so I don't take my IDE down on a long test run.



But for the small tests that drive my design? "Ctrl+R, O" baby, all the way.



**Refactoring**

I've got a confession to make--as big a fan of refactoring as I am, I never quite got up on Visual Studio's refactoring support. I didn't have enough time between using VS 2005 and when I started using ReSharper, so I really don't know what ReSharper's got that VS doesn't.



But if you haven't had the change to work with a refactoring IDE tool, get one, whatever it is. Just the basic rename is worth the price of entry. Again, it's all about friction, and the refactoring tool makes it easy to revise names when I find later on (sometimes just minutes) that it isn't quite right.



Move and renamespace are now dear friends of mine. While good naming is important, it doesn't help if your namespaces are crap, or worse if they don't align with where to find the code. Not that many years ago this was a difficult problem for us, but now there's no excuse.



**Find Dependent Code**

A recent find for me is ReSharper's brilliant "Find Dependent Code". This works at a variety of different levels, from individual files, folders and class names, to referenced dlls.



That last one was a huge time-saver as I've been winnowing out dependencies from one of our projects before we start some major work on it. Previously, I've relied on the grep + break the local compile method to find where a particular assembly was used within a project. No longer. Now all that beautiful information is just a mouse-click away, with line-numbers and double-click-goto support right there.



What else can I say, I loves me some ReSharper!
