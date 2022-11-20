---
title: "Application_Start and ASP.NET identity impersonation"
date: "2006-07-29"
categories:
  - coding
tags:
  - asp.net
---

Now if that isn't a gripping title, I don't know what is!

Found out an interesting bit of trivia about ASP.NET and its processing life-cycle. The code I was working with has a per-application cache that was being loaded during the first web request that came in. There was an immediate problem with it reloading the cache multiple times under sufficient load, so I just put a locking solution into place to get around the problem. For a longer term fix, I thought the right solution would be moving the cache load from `Application_BeginRequest` out to `Application_Start`.

That's when I ran headlong into the trivia. The system was using ASP.NET's built in identity impersonation to pass credentials to our SQL Server backend. As soon as a moved the code to `Application_Start`, though, I got failures to connect to the database because the user wasn't identified.

A little digging turned up [this reference](http://odetocode.com/Blogs/scott/archive/2006/07/12/4900.aspx) which explained it pretty well. ASP.NET doesn't start impersonating a Windows identity until after `Application_Start` has finished. That meant that when my code was running, it was as the local ASPNET identity, which didn't have the rights to access the database. Given our setup, that wasn't about to change, so the code remains, healthy and happy in `Application_BeginRequest`.
