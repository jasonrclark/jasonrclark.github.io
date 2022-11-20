---
title: "WM_NCACTIVATE and the edit control"
date: "2005-04-11"
categories:
  - coding
tags:
  - windows
  - mcf
---

I ran into an interesting bug the other day. I noticed that in one of our grids, the edit control that pops up to allow you to modify values was not accepting single mouse-clicks to change where the cursor was. Uh-oh, I thought. I'd recently made a change related to capturing the mouse input, and this seemed like a side-effect I'd missed. So I fired up our bug-tracking software, entered a defect and got down to work.

Then a strange thing happened. The mouse-capture work that seemed likely to have been interfering wasn't doing anything of the sort -- all the clicks were going exactly where they belonged, to the edit control.

Since this edit control had an override for `OnLButtonDown()`, it was pretty simple to see that the click was getting to the control. It included some code like the following (sans the comment, which I've added):

```
int oldSelStart, oldSelEnd;
int newSelStart, newSelEnd;
GetSel(oldSelStart, oldSelEnd);

// Base class actually moves cursor for the click
CEdit::OnLButtonDown(nFlags, point);

GetSel(newSelStart, newSelEnd);
```

So the called to `CEdit::OnLButtonDown()` seemed like it should be changing the cursor position for us. Ran the test on a different grid, which didn't have the problem, and sure enough, the call to the base-class for that edit control updates the cursor.

What's the deal? I thought. I started stepping down into the CEdit code, but it's a really thin wrapper over top of the core EDIT control in Windows, so that didn't tell me much. After a few minutes, I did something I don't often have the chance to do: bust over into disassembly view and take a look at what's really going on.

After a few false starts, I found my way down into the function `user32.dll!\_ECIsAncestorActive`. As I stepped through that function, I noticed that it was returning FALSE.

A little light went on in my head.

The grid that I was working with was part of a window that was docked into a view frame window. I had recently addressed a bug about both the docked window and the view window drawing their caption bars as having focus, rather than just one of them to indicate where the user really was. The fix had been to send an `WM_NCACTIVATE` to the view frame, causing it to draw as disabled when focus wasn't in the docked window.

Bingo!

From there it was a simple matter to cause the grid to reactivate its parent frame when we entered an edit control. Once the parent frame was live again, the `CEdit::OnLButtonDown()` acted as expected, and all was well with the world.
