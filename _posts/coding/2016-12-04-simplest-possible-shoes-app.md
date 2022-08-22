---
layout:     post
title:      Simplest Possible Shoes App (002)
date:       2016-12-04 19:55:00
summary:    In this installment, we'll see the smallest Shoes app you can start from.
categories: coding
video_url:  https://youtu.be/FESxSzsOscU
embed_url:  https://www.youtube.com/embed/FESxSzsOscU
tags:
  - "shoes"
---

[In this installment]({{ page.video_url }}), we'll see the smallest Shoes app you can start from.

<div class="video_container">
  <iframe src="{{ page.embed_url }}" frameborder="0" allowfullscreen></iframe>
</div>

## Transcript

Welcome back to the Shoes Minute. I'm Jason Clark, and today I'm going to show you the smallest possible Shoes application... with one addition. Let's get started!

We've already installed Shoes in our prior installment, so let's write a Ruby file called `myapp.rb`. You can use your editor of choice, anything works fine. I'll be using vim.

In this file, we write the following:

```
Shoes.app do
end
```

That's it. Save that file, and return to the terminal. There we'll enter `shoes myapp.rb` and sure enough, we see a window pop up on screen. Your first Shoes app is live!

I mentioned an addition? Well, let's see what happens if we add a width and height as an optional hash to that `Shoes.app` method call at the beginning. Sure enough, our window when we run is a different size.

```
Shoes.app width: 100, height: 100 do
end
```

This style of method call, with lots of optional tweaking available but very little required, will show up throughout Shoes.

Join us next time when we start putting something cool inside our new window.
