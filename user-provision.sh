#!/bin/bash

# Installation steps for vagrant user (not root)

echo '------------------------------------------------------'
echo '- Installing rbenv for ruby support, as vagrant user -'
echo '------------------------------------------------------'
# (https://github.com/rbenv/rbenv#basic-github-checkout)
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
