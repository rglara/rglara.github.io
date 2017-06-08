---
layout: post
title: "WSL, git, and Beyond Compare"
tags: [sep, git, wsl]
---

## Back Story

As I was drafting some new blog posts, I was exploring some stuff on the technical side.  Part of that was using WSL (Windows Subsystem for Linux) to set up git. Since the Windows 10 Creators Update just dropped, it came with a WSL of Ubuntu 16.04. Not too shabby.

Since I'm a git command line kind of guy, being able to `sudo apt install git` was a slice of heaven on a Windows machine. Getting that up and running was pretty nice.  However, there is one area where I still like a GUI: visual diffs. Granted, I can read a `git diff`, but using something like Beyond Compare with `git difftool` speeds up my comprehension.

But WSL is not GUI friendly (at the moment). What's a guy to do?

Ah, but the Creators Update of WSL added the ability for WSL to call Windows executables. Let's get us some visual diffs going.

## Prerequisites

* Windows 10 Creators Update
* WSL (`lxrun /install`)
* Visual diff tool (I'm using Beyond Compare)
* git repo (to test your setup)

First, the easy part: install git on WSL.  In a Bash prompt:

```
sudo apt install git
```

## A Little Misdirection

Normally, `git difftool` will run `meld` or something that is GUI-based. But that won't work here. We also can't exactly have a Windows app read the WSL filesystem, because there can be some side effects that can ruin the WSL.

The TLDR of it is that we'll bridge the gap of generating and viewing the diff using your Windows temp folder.

Let's edit a couple files, and then we'll talk about what they're doing.

Edit your WSL `~/.bashrc` file to have these lines toward the bottom of the file (obviously replacing "greg" with your username):

```
export TMPDIR='/mnt/c/Users/greg/AppData/Local/Temp'
alias gdiff='git difftool -y --dir-diff --no-symlinks'
```

Edit your WSL `~/.gitconfig` file to have these configuration settings (adapting the EXE with your favorite diff tool):

```
[diff]
    guitool = BCompare
[difftool "BCompare"]
    path = /mnt/c/Program Files (x86)/Beyond Compare 3/BCompare.exe
    cmd = \"/mnt/c/Program Files (x86)/Beyond Compare 3/BCompare.exe\" -expandall \"`echo $LOCAL | sed 's_/mnt/c_C:_'`\" \"`echo $REMOTE | sed 's_/mnt/c_C:_'`\"
```

Now in WSL, instead of running:

```
git difftool <command args>
```

you run:

```
gdiff <command args>
```

<img src="/images/wsl_git_bc.png" />

## What did we just do?

`git difftool` generates a set of left and right files in a `/tmp` for use as `$LOCAL` and `$REMOTE` in the difftool cmd. We can override the location of `/tmp` by setting the `TMPDIR` environment variable. We want to see those files from the Windows file system, so we use the AppData Local Temp folder (accessible via `/mnt`).

The other important part of the alias in `.bashrc` is the `--no-symlinks` flag of `git difftool`. If this is not set, it will try to create symlinks for the right side. Normally, this is really handy because you could use the diff tool directly to change the right side to tweak something you missed. However, the GUI tool can't follow the symlink, so _the diff will be read-only_.

The `.gitconfig` looks about the same as you would expect, but there is a some extra `echo`ing and `sed`ing going on. If you just had $LOCAL and $REMOTE, the GUI tool doesn't understand that, since it is still running in the context of Windows. So, we're changing the `/mnt/c` into `C:`. With that change, Beyond Compare can read the temp folder in Windows.
