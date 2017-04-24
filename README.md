# My Blog

This repo was established to contain my blog writings.  It also has some technical stuff in order to test it locally.

# Local Development Environment Setup

This repo should document the process of getting a development environment configured for authoring and previewing the blog.

## Prerequisites

* VirtualBox
  * https://www.virtualbox.org/
  * Version 5.1.18 at time of writing
* Vagrant
  * https://www.vagrantup.com/
  * Version 1.9.3 at time of writing

## Setup

1. Clone this repo
1. Open a terminal for running Vagrant (PowerShell, on Windows):
  1. `cd <repo path>`
  1. `vagrant up`
1. When that is complete, open a terminal in the newly created virtual machine:
  1. `cd /vagrant/`
  1. `rbenv install` (uses `.ruby-version` in repo)
  1. `gem install bundler`
  1. `bundle install` (or `bundle update`, if this isn't your first time)
  1. `bundle exec jekyll serve`

# License
The blog content (posts, drafts) are copyright Greg Lara. You may not reuse anything therein without my permission (all rights reserved).

Images or other resources included from outside sources are attributed to their respective owners.

Other content generated here (for development or infrastructure purposes) are licensed under the MIT license (http://opensource.org/licenses/MIT).
