---
layout:     post
title:      Installing Shoes (001)
date:       2016-11-29 19:50:00
summary:    In this first installment, we'll show you how to get Shoes 4 installed on your computer.
categories: coding
video_url:  https://youtu.be/ax3wF3HLnzI
embed_url:  https://www.youtube.com/embed/ax3wF3HLnzI
---

[In this first installment]({{ page.video_url }}), we'll show you how to get Shoes 4 installed on your computer.

<div class="video_container">
  <iframe src="{{ page.embed_url }}" frameborder="0" allowfullscreen></iframe>
</div>

## Transcript

Welcome to the very first Shoes Minute! I'm Jason Clark, one of the contributor on the Shoes project, and in this series I'll be showing you, in bite-sized chunks, all the things you can do with Shoes.

So what is Shoes? Shoes is a GUI development library for Ruby that's focused on providing a simple, pleasant DSL for writing desktop applications.

Let's take a look at how you get Shoes installed. A new release of Shoes, version 4.0, is under development, and there are two ways to get your hands on it.

First, you can install it as a gem via the command `gem install shoes --pre`. The --pre tells Rubygems to let you install pre-released software, which Shoes 4 is since we're not fully feature complete yet. Once that's installed, you can run it with the `shoes` command.

If you want to follow along with the latest and greatest being committed to Shoes 4, you can get the source code by cloning from [https://github.com/shoes/shoes4](https://github.com/shoes/shoes4). That'll create a shoes4 directory for us, so we `cd` into it, and run `bundle install`. Note that this requires you to be running JRuby, which you can get from [https://jruby.org](https://jruby.org), or your installed Ruby version manager. From the source code, you can run from `bin/shoes`.

That's all it takes to get Shoes. Next up, we'll look at writing the simplest possible Shoes application!
