---
title: "From VS to Vim"
categories: coding
categories: coding
date: "2012-11-06"
tags:
  - "tools"
  - "vim"
---

Given my background as a Windows developer, it's no surprise most of my editing needs were met by the venerable Visual Studio. While at times a bit large and overloaded, VS was a familiar space. With Resharper and a judicious collection of keyboard shortcuts, I was quite happy with my world.

Of course, that all had to change.

**Why Vim?**

Since taking some grad classes, I've picked up vim when not on Windows. It never made the leap to day-to-day use, though. Notepad++ filled the gap when I didn't need VS, but moving to New Relic and a Mac finally pushed me to vim full time.

There are other contenders--Emacs in the text editor world, and Sublime Text 2 if you're looking for something more GUI-centric. Sublime falls down, though, since I really want to be able to work across ssh easily. With Emacs I figured I already have one new operating system, why take on another :)


Here are some of my favorite tweaks and tidbits regarding vim so far. I've posted my .vimrc at [https://github.com/jasonrclark/dotfiles/blob/master/home/.vimrc](https://github.com/jasonrclark/dotfiles/blob/master/home/.vimrc) for posterity and sharing. Much of this was learned from the screencasts at [https://www.destroyallsoftware.com/screencasts](https://www.destroyallsoftware.com/screencasts) and [http://vimcasts.org](http://vimcasts.org/).

**Know the Basics**

I claim no mastery, but I'm constantly pleased with the little features that I'm finding built into vim. Examples I've found in the last month of work:

- When using `:e` to open a file, tab completion works perfectly
- When using `:b` to change buffers, typing part of a filename will cycle through matches of that exact string anywhere in the path
- `<<` and `>>` will do indentation for you, per your current settings, without leaving normal mode. This works great with the multi-line visual block selections.

Anyone who's been using vim a while probably wouldn't think twice about these, but when you're starting out they aren't immediately obvious. Read up, watch screencasts, play around. There's a lot of buried treasure there.

**Love your Leader**

To effectively edit, whatever the system, you need to learn the shortcuts. And when a critical shortcut isn't available out of the box, you should define it. Wire those key presses into your muscles until you can do it in your sleep... or more to the point, while your brain is occupied with other things, like the problem at hand.

In vim, many shortcuts work off the so-called "leader" key. Following Bernhardt's advice, I've remapped my leader to `,` which is super-accessible--lots easier than the default.

Most of my personal shortcuts follow with the leader key, from `,+r` to run
tests on the current file, `,,` to go back to the last file. **Command-T** I've
tried to minimize the number of full-on vim plugins I use. I figure being able
to do most of your work on an un/lightly optimized version of the software
isn't a bad thing.

But Command-T is indispensible. Coming from Resharper, with it's CamelCase type/file search, for the first few days file navigation was a struggle, especially unfamiliar with the code base as I was. Then I saw [this screencast on Command-T](https://www.destroyallsoftware.com/screencasts/catalog/file-navigation-in-vim), and everything changed. (Sorry for the paywalled link, but Destroy All Software is totally worth it).

While Command-T doesn't have type-level information, with sanely named class -> file mappings things act pretty similarly. I love typing any parts of the filename and having the list winnow down to all potential matches of that sequence.

While it has it's quirks, I couldn't live without Command-T anymore. I set my current directory just above my whole code-base so I can easily slip between files in any of the main projects.

**Running Tests**

This one's pretty simple, but this command lets me quickly run unit tests for the current file that I'm on. While I've seen more complex setups for this--mostly around remembering the last file run--this works pretty well for now:

```
map <leader>r :w|:!~/.rbenv/versions/1.9.3/bin/ruby %<cr>
```

**CTags**

CTags fill some gaps in type information. Getting those generated properly is a topic for another time, though.

Once you have your tags files, you can easily integrate them into vim like this:

```
:set tags\=ruby\_agent/tags,multiverse/tags,rpm\_test\_app/tags
```

While I keep my current directory above all my code for Command-T access, I actually only want CTags from part of my tree. This line sets includes just the apps I want.

I also remapped some of the previous/next tag keys to `<leader>+\[ and <leader>+\]. While I try to abide by the built-ins, these keys were just too badly spaced for me to live with.

**Conclusion**

Plenty of other things I'm learning day to day, but that'll do for now. I've missed the full IDE experience less than I expected, though. Although refactoring and navigation aren't identical, there's been less struggle to fill the gaps--and more options opened by the deep customization possible--working with a basic text editor.
