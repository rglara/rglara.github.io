---
layout: post
title: "git, WSL, and GUI Diffs"
tags: [sep, git, wsl]
---
I'm a fan of git and a new fan of the WSL (or Linux on Windows 10).

How do you get a GUI diff (I used Beyond Compare) if you have git installed on WSL?

Bridge the gap using your Windows temp folder.

.bashrc
export TMPDIR='/mnt/c/Users/greg/AppData/Local/Temp'
alias gdiff='git difftool -y --dir-diff --no-symlinks'

.gitconfig
[diff]
        guitool = BCompare
[difftool "BCompare"]
        path = /mnt/c/Program Files (x86)/Beyond Compare 3/BCompare.exe
        cmd = \"/mnt/c/Program Files (x86)/Beyond Compare 3/BCompare.exe\" -expandall \"`echo $LOCAL | sed 's_/mnt/c_C:_'`\" \"`echo $REMOTE | sed 's_/mnt/c_C:_'`\"
