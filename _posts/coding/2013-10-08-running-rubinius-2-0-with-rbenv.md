---
title: "Running Rubinius 2.0 with rbenv"
categories: coding
categories: coding
date: "2013-10-08"
tags:
  - "installation"
  - "rbenv"
  - "rubinius"
  - "ruby"
---

With the [release of Rubinius 2.0](http://rubini.us/2013/10/04/rubinius-2-0-released/), I was keen to take a look at how hard it would be to get [newrelic\_rpm](https://rubygems.org/gems/newrelic_rpm)'s tests passing against it. We make extensive use of [rbenv](https://github.com/sstephenson/rbenv) on the Ruby agent team at New Relic, so I did the natural thing:


```
✔ ♥♥♥♥~: cd ~/.rbenv/plugins/ruby-build/
✔ ♥♥♥♥~/.rbenv/plugins/ruby-build: git pull 
✔ ♥♥♥♥~/.rbenv/plugins/ruby-build: rbenv install rbx-2.0.0
```


... but no joy. I ended up with an error that didn't spell out the command it was running, but dropped this in the log:


```
/var/folders/\_m/87xpgngn6d3\_zpqh89dsdwxc0000gp/T/ruby-build.20131007124229.95689/rubinius-2.0.0 /var/folders/\_m/87xpgngn6d3\_zpqh89dsdwxc0000gp/T/ruby-build.20131007124229.95689 ~rbenv: bundle: command not found 

The \`bundle' command exists in these Ruby versions: 

1.8.6 
1.8.6-p420-syckfix 
1.8.7 

...
```


Huh. Not exactly what I was looking for. At this point I was (and remain) a bit confused what's trying to bundle during the installation, but clearly it isn't finding what they need.

Luckily it wasn't hard to work around and just build Rubinius directly. Inspired by [this post](http://blog.stwrt.ca/2013/09/06/installing-rubinius-with-rbenv), I ran:


```
✔ ♥♥♥♥~: git clone https://github.com/rubinius/rubinius.git && cd rubinius 
✔ ♥♥♥♥~/rubinius: ./configure --prefix=~/.rbenv/versions/rbx-2.0.0 
✔ ♥♥♥♥~/rubinius: rake install
```

With that done, rbenv happily let me switch to rbx-2.0.0.

Although I didn't run without it, I also use of the [rbenv-rbx](https://github.com/rmm5t/rbenv-rbx) plugin for rbenv. At the moment there's a [pull request sitting](https://github.com/rmm5t/rbenv-rbx/pull/5) to update the paths for Rubinius. I'm using that locally, and everything seems good.

I'm very curious if anyone has a good explanation of what went wrong with my initial rbenv install, since I need to install elsewhere and I'm not relishing building from source directly throughout our testing infrastructure.
