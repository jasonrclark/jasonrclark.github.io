---
title: "SoapExtension and debugging"
date: "2005-12-09"
categories:
  - coding
tags:
  - asp.net
---

On with the technical arcana!

Today I was working on adding e-mail notification to one of our web services when an exception is thrown. We have plenty of other examples of this in our system, but they all involve the global.asax file's `Application_Error()`. This is a problem because as is clearly indicated in [this MSDN article](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpguide/html/cpconHandlingRaisingExceptionsInXMLWebServices.asp):

> A Web application can be comprised of multiple XML Web services, however the `Application_Error` event within the Global.asax file cannot be used for global exception handling.

The recommended alternative is to write `SoapExtension`. The instructions are pretty decent for how to get it set up, but once I'd created the class and made the necessary `web.config` changes, I couldn't hit a breakpoint in the `ProcessMessage()`. Then I stumbled across [this article](http://msdn.microsoft.com/msdnmag/issues/04/03/ASPColumn/), which buried near the end had my answer:

> Debugging a SOAP extension can be a bit different from how you might normally debug a Web service hosted in ASP.NET. ASP.NET uses the `DefaultWsdlHelpGenerator.aspx` page as configured in machine.config to display test pages for your Web services. These test pages can be used to invoke your WebMethods, but the test harness does this by making HTTP POST requests to the server rather than HTTP SOAP requests. SoapExtensions only work with SOAP requests, and thus any requests to your Web service made using the default test page will result in your extensions not being used.

I had been using the test pages, and as soon as I changed over to hitting the web service through a SOAP call, all was well with the world.
