---
title: "Taming Asynchronous Testing"
categories: coding
categories: coding
date: "2012-12-04"
tags:
  - "ruby"
  - "unittesting"
---

Ok, the title's a bit overblown, but I encountered a fun bit of Ruby in working with threaded code.

My class's primary responsibility was starting/stopping a loop on another polling thread. The basic shape of things ended up something like this:

```
  def start
    Thread.new do
      ... interesting work here
    end
  end
```


... which left a dilemma around testing. We forged down a path of setting the loop with timeouts and known counts, well knowing the perils. While these ran consistently enough locally, the time wasn't always "enough" when we ran on our CI servers. We didn't want to add tons of waiting in the unit tests, but cutting it too fine led to spurious failures on fussy VM's.

I set out to revise the tests to be more deterministic. One prong of my attack was to provide functional/acceptance tests which could happily run with significant time buffers that would be cripplingly long in a unit test.

Unit tests, though, we remained a question. I toyed with passing in a stub to wrap the thread interactions, but because of the interactions that stub actually had to be plumbed through two separate classes to get where it was going. Ugly.

Could I use Ruby's much vaunted openness to solve this? Of course! Instead of passing some other dependency, what if the Thread code was just replaced to work synchronously?

The statically-typed, C# side of my brain lurched at the thought, but it worked great. I created a `FakeThread` class that simply runs the block it's given during `initialize()`. Other thread calls needed basic implementation in the `FakeThread`, but that was simple to accomplish.

With the fake class in hand, we needed to swap it in. However the naive approach:


```
  def setup
    Thread = FakeThread
  end
```

... causes Ruby to gripe mightily:

```
  warning: already initialized constant Thread
```

But luckily we can "fix" that by removing the Thread constant from the module, then redefining it with our own implementation:

```
  def setup
    Object.send(:remove\_const, "Thread") if Object.const\_defined?("Thread")
    Object.const\_set("Thread", FakeThread)
  end
```

Gnarly? Perhaps. I'd never consider this in production code. But the simplicity of splicing in the right dependencies into a test? It's exactly what drew me to Ruby in the first place.

My coworker, when looking over the result, and hearing my bashfulness at having overridden a core class as `Thread`, concluded "Today, you are a Ruby programmer."
