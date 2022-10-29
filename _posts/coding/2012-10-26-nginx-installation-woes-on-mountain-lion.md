---
title: "Nginx Installation Woes on Mountain Lion"
categories: coding
categories: coding
date: "2012-10-26"
tags:
  - "nginx"
  - "os-x"
  - "troubleshooting"
---

I needed to run the beta version of Passenger (3.9.1.beta) to see how New Relic's Ruby agent fares against it, but hit a problem when installing Nginx for the first time.

Installing via `passenger-install-nginx-module` was resulting in this error:

```
Undefined symbols for architecture x86\_64:
  "\_pcre\_free\_study", referenced from:
      \_ngx\_pcre\_free\_studies in ngx\_regex.o
ld: symbol(s) not found for architecture x86\_64
```

Luckily, I found a solution via at [http://trac.nginx.org/nginx/ticket/94](http://trac.nginx.org/nginx/ticket/94). The problem was an incompatible version of PCRE that ships with OS X. Once I removed the libpcre\* files from /usr/lib, everything worked like a charm.

I'm finding that the \*nix'y files that ship with OS X are often the root of a lot of issues if you're trying to use newer versions of other software that depends on it. At least I didn't have to double-click an MSI to get it done...
