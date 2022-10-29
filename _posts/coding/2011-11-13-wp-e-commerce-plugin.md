---
title: "WP e-Commerce Plugin"
categories: coding
categories: coding
date: "2011-11-13"
---

A friend needed to start [selling her products directly from her website](http://beesandbeans.com/where-to-buy/products-page/). I'd previously set her up with a basic Wordpress installation. It's easy editing of pages and theme options were the big selling points.

Given that, I started off searching for Wordpress plugins. I immediately ran across the [WP e-Commerce plugin](http://getshopped.org/). "That seems too easy," I thought. It had over a million downloads, though, so it didn't seem half-baked. Could you really do e-Commerce from a blog with just a free plugin?

**Out of the Box**
I haven't used Wordpress much, but installing WP e-Commerce was pretty standard--search, click, install. Actually, I had to upgrade the blog's software first, but that was also a button click away. Smooth and easy.

WP e-Commerce is well integrated into the Wordpress Dashboard. A new Products section showed up, along with a ton of settings under Settings > Store. Sales are available on a menu right under the main Dashboard item.

It installed default pages which weren't quite what I wanted. I also found the styling didn't jive well with my current (somewhat customized) theme. Thankfully all the changes could be done in CSS, without having to actually futz the page templates.

**Payments**
My friend wanted to use an existing PayPal account for payments. This was among the simplest bits of the whole setup. On the Payments tab under Settings > Store, I marked PayPal, told it the username... done. Did a simple test in which I gave my friend $0.02, and it flowed through fine.

**Shipping**
The road got rockier, though, around shipping. WP e-Commerce comes with shipping calculator options--flat rate, USPS and UPS (among others). Flat rate's features worked, but the whole concept didn't. Overcharging locals and undercharging folks far away doesn't seem like the best business choice.

The USPS settings in the plugin seemed clear, but correlating those to what keys and accounts the USPS site required was a nightmare of poor documentation. Never did get it to work.

UPS looked better, although it still wasn't as clear as I'd have liked. I was partway through that when we noticed a [FedEx add-on to purchase](http://getshopped.org/premium-upgrades/premium-plugin/fedex-shipping-module/) (which was actually my friend's preference.)

FedEx ended up being the simplest option. With all the right keys, accounts and passwords, it just worked great. (Sidenote, though--why don't the major shipping sites, when you search for "developer key" yield anything even vaguely like a page saying "Here's how you get a developer key." Seriously, it took half an hour on the best of them (FedEx) to find the right steps.)

**Deployment**
Finally the day came to go live. I upgrade Wordpress on the live site, FTP'd the various plugins and theme changes across, activated the plugins, and imported an XML dump from the testing site. It worked... partially.

My pages came over (minus some edits to existing ones that didn't quite take.) The products all came over just fine (with the exception of a couple images that chose the wrong sizing... huh.) Hurray for that.

The Settings, though, were nowhere to be seen. All the page after page of tweaking I'd done didn't move. Now I realize some of the settings are sensitive (passwords and dev keys for instance). But if I export a site that says "Yes, please use shipping", it'd be really nice if importing it on the other side, um, enabled shipping.

Only took about a half hour of screen-by-screen comparison to line things back up, but it's annoying to have to do it.

**And the Verdict...**
If I had it to do again, I would definitely consider this plugin. It seems like a great fit for someone who's already using Wordpress as their main platform, and it covers all the basics without too much fuss.
