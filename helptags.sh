#!/bin/sh
# index help documentation in bundles
vim -u NONE -c "for dir in split(globpath(&runtimepath, 'bundle/*/doc/.'), '\n') | execute 'helptags '. dir | endfor | quit"
