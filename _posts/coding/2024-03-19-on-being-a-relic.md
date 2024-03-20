---
layout:     post
title:      On Being a Relic
date:       2024-03-19 19:45:00
summary:    After 11 years I recently left New Relic. Here are my thoughts on the occasion.
categories: coding
tags:
  - "job"
---

So I posted this internally, but I feel like a (lightly edited) flavor of it is
worth keeping publicly for posterity. Here goes!

On leaving a company many folks write long notes mentioning all the lovely
people who have made their life better along the way. After more than eleven
years at New Relic, I can't even begin drawing up that list. There are just too
many freaking awesome people, past and present, who have made New Relic the
best place I've ever worked.

But if you know me, it'll come as no surprise that I couldn't go out without
writing SOME page full of words! So instead of a laundry list of colleagues and
in-jokes, here are the biggest positive lessons from my years at New Relic.

## Cultivate curiosity every day

In technology, constant learning is fundamental. Our systems are always
changing and evolving. This is often overwhelming, especially in the big
picture. Will my language still be useful in five years? Should I spend time
learning this new framework? So many huge things are lurking out there that it
can feel like you ought to be digging into.

New Relic has taught me, though, that cultivating curiosity day to day pays
dividends. Yes, taking a big course on Kubernetes or AWS or React may be
worthwhile. But right now you can go see how your framework implements that
method you're calling. You can browse the configuration for an unfamiliar but
critical system. You can smooth rough edges in your development environment
with aliases or macros or shortcuts.

Will these small excursions make you an expert overnight? No. But always prying
further into your tech stack than is strictly necessary builds muscles that
will accelerate growing expertise. Plus you never know when that random side
quest today will actually prove practical in the future, it happens!

And New Relic is a playground for engineering curiosity. Want to know more
about Kafka? There are literally hundreds of services to peek at. Wonder how a
distributed database is built? Clone NRDB and get reading! Want to see how we
instrument applications? All our agents are literally public on GitHub.

Take some time to appreciate the breadth of systems at your fingertips in this
organization and start digging.

## Dig deep into our data

My second point may seem like an extension on the curiosity call-out, but it's
important enough to call out separately – building familiarity with the data
New Relic gathers will pay off.

Partially we should do this because it's our job as a data company. Knowing
what data we have and how to query it helps us make better products for our
users.

But these benefits are magnified because of how much we use our own tools. A
little extra poking around to see what's available before an incident can save
tons of stress. That vague memory "Oh, I saw an event named X that might tell
us more" is way easier than starting from a blank canvas. I've often seen
people looking in all sorts of places for information that APM or Infra already
gathered for you!

My two favorite tricks in this space start from NRQL's own introspection. Want
to see what's around in an account?

```
SHOW EVENT TYPES
```

Boom, there's a list of things to start querying. Then for any given event type
you can figure out what's in it with this little gem.

```
SELECT keyset() FROM MyNewFavoriteEvent
```

Beyond exploring what's measured, I'll also give a shout out for deeply
grasping the shape of the data – what's the difference between an event and a
metric and a log, and when should you use each of them? These basics are
critical to know to get the best visibility without hitting unnecessary
performance and cardinality snags.

## Big things can change

I'm lookin' at you rpm_site.

For those who haven't been at New Relic too long, you might not even have heard
mention of rpm_site, the sprawling monolith that pretty recently was New Relic
to our users. A huge Ruby on Rails codebase, it was messy, complicated, and
slower than anybody wanted. But it was also utterly critical to the product.

Looking back, it's amazing the progress that's been made. We've gotten further
than I ever would have imagined from where we started!

I don't know what we'd consider our "rpm_site of today" – there are probably
several across the org. But rest assured that if it should change, we can
change it.


Well, that's what I had on my mind. Thanks to those who've read this far, and
thanks to all those who've made this journey an excellent one. I hope that many
of our paths cross again in the future!
