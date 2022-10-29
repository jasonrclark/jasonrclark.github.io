---
title: "UserControl + Repeater = Pain"
categories: coding
categories: coding
date: "2011-04-01"
tags:
  - "asp-net"
---

I tripped over a seriously annoying thing in ASP.NET late yesterday, and continued tripping much of this morning. I had a user control that contained a repeater. On initial load of the control, I did my `DataBind()` protected by an `!IsPostBack`. I didn't disable ViewState (though it grates on me to leave that bloated beast in place). Everything rendered like you'd expect.

Then the postback came, my repeater's `Items` were empty.

I beat my head against this. I validated my repeater wrote to ViewState. I changed where I was data binding. I debugged into the Framework code, but never managed found why I wasn't getting my controls created again.

To make sure I wasn't crazy, I pulled the `Repeater` to the page, out of my user control, and everything worked as expected--Repeater.Items was present on the postback.

I mentioned the struggle in stand-up, and a coworker kindly showed me the solution:

```
protected override void OnInit(EventArgs e)
{
 base.OnInit(e);
 EnsureChildControls();
}
```

Bing. Suddenly all of my repeater controls were there when I looked for them.

Why there's this difference between repeaters in a `Page` or `UserControl`, I don't know, but it did the trick.
