#!/bin/sh
# install and upgrade git submodules
git submodule sync
git submodule init
git submodule status | awk '/^-/ { print $2 }' | xargs -r git submodule update
git submodule foreach git pull origin master

# ignore all changes in submodules in `git status`
for submodule in $(git submodule status | awk '{print $2}'); do
  git config "submodule.$submodule.ignore" all
done
