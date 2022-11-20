---
title: "Charting Woes"
date: "2005-04-14"
categories:
  - coding
---

I spent the bulk of yesterday generating bug trend graphs from our defect tracking software (which will go unnamed... lucky for them). It doesn't seem like it should take that long -- the app even has built-in charting functionality. All I wanted was two simple lines: total open bugs, and bugs developers have resolved that QA hasn't closed yet. However, as best I and my lead developer could tell, you couldn't do it with the software's reporting.

Every trend chart has three built-in lines (which you can hide, but can't delete entirely). One gives the total open count-- this is good, since it's half of what I wanted. One gives the change in closed bugs, the third change in submitted... not quite there but at least I can hide them. These options provide no means to alter them.

You can add other field trends to the chart, but setting criteria on them has severe limitations. Fields can be unassigned in this software, but you can't pick field=<\> as a trend. Other non-charting portions of the software provide a pretty solid way to query information (with it's own quirks, but you can typically get what you need there). Why can't the charting do the same? The one saving grace for it was that you could create the report in a table view, copy-paste the data into Excel, add a few formulas and get the graph I wanted.

I can't imagine that the developers for this package purposefully thought, "You know, this'll really infuriate our users... let's do it that way!" But in the end, they don't seem to have noticed the frustrating limits they built in.

This puts me in mind of the software I write. How am I making sure that I'm not boxing my users in? How do you make sure that your users aren't cursing your name every time they try to print a report?
