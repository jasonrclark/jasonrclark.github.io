---
title: "How to fix a disabled monitor driver"
categories: coding
categories: coding
date: "2010-01-10"
tags:
  - "monitor"
  - "troubleshooting"
---

My cousin called with an interesting problem. Someone in her office had a laptop that previously used multiple monitors. They started digging around in display properties trying to get rid of an error message on startup ([MultiMon](http://www.mediachance.com/free/multimon.htm), which I love, was just warning there wasn't another monitor). Lo and behold, they disabled the driver for the primary monitor, and the second monitor support was already long gone. After a reboot, the screen was blank. It would show the BIOS and OS startup, but login was all black.



I had her bring over that and a similar laptop, and tried to step through by keystrokes to re-enable. That wasn't getting anywhere. As I later determined, the buttons I was trying to access via the Display properties were disabled, so even when I nailed the sequence, it wouldn't have helped.



Then I had a bright idea--Windows comes with a rudimentary screen reader. I figured out how to launch it via keystrokes, and after a long time listening to the terrible computerized voice, fixed the problem (sidenote: never thought I'd say something nice about JAWS, but its reading voice is much easier on the ears than Narrator)



This was on Windows XP, but something similar should be possible on Vista or Windows 7, although the interface will vary.



Here's what I did:

1. Log in (helps if you had a startup noise so you know you've actually made it)
2. Type Win+R
3. Type "narrator" and hit Enter. The computer should start reading off the Narrator introduction.
4. Hit Start key, then move through list with arrows to My Computer
5. Hit the right-click key, then use arrows to get to Manage
6. In the Computer Management window, move through list to Device Manager.
7. Tab should move you to the list of devices in a tree by type. Move with arrows to "Display adapters" and/or "Monitors" and hit the right arrow to open them, down to select the particular entry in the list.
8. Use the right-click key on each entry under those categories, choosing Properties and pressing Enter.
9. On the first page of the Properties, tabbing through should reach a dropdown that'll read "Don't use..." Change that to "Use this device (enabled)" with the up/down arrow keys.
10. Tab again to the OK button, and hit Enter
11. Reboot computer. At this point, the login screen was visible again.

First time I've actually gotten direct utility from a screen reader, but it sure was a life saver. Hope the write-up might help someone else too.
