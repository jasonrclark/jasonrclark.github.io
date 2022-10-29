---
title: "Spreading Straw"
categories: coding
categories: coding
date: "2009-02-24"
tags:
  - "unittesting"
---

Last weekend, I did one of my "favorite" chores--cleaning up after our two retired greyhounds in the backyard. What does this have to do with programming? Well, shovel in hand, for some reason I started thinking about unit testing. An analogy bubbled and percolated, refusing to let me focus on spotting dog crap.



Our backyard isn't large, and greyhounds like to run. They've devestated any semblence of grass back there, and during Oregon's wet season (read "nine months of the year"), it's muddy. Real muddy. To combat the mess, we get bails of straw from the local feed store and spread it all over. Ugly to look at perhaps, but it keeps life an order of magnitude cleaner.



How does this relate to testing? Well, a lot of people talk about getting good code coverage. But even if you get 100% coverage of every path, that doesn't necessary mean you've tested everything.



Imagine each individual bit of straw is a test, while the mud is the codebase. I guess the dogs would be developers then, churning it up, while the rain would be product showering you with requests that threaten to ruin all your beautiful architecture. Hold on, went too far there. Back up to the straw and mud, that's the important bit.



If I spread my entire yard with straw exactly one piece deep, how well do you think that'd work? We'd have a pit in seconds once the greys got going. Not all parts of the yard are equal. The pit at the corner where water comes down the sideyard and the dogs make a hard turn? That needs some extra covering. How about the main track the dogs have dug down below the walnut tree? The whole length gets more.



I see unit testing the same way. Yes, you should shoot to covering everything, but if you stop at "Tests hit every line of code," you could be missing something. Where are the more complicated sections? Where should your tests be communicating more of the code's purpose? Where have your bugs been coming in frequently?



Maybe those spots need a little extra straw.
