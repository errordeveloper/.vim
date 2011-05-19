all: install upgrade helptags

install:
	git submodule init
	git submodule status | awk '/^-/ { print $$2 }' | xargs -r git submodule update

	# ignore all changes to submodules in `git status`
	for submodule in `git submodule status | awk '{print $$2}'`; \
	do \
		git config "submodule.$$submodule.ignore" all; \
	done

upgrade:
	git submodule foreach git pull origin master

	# resolve conflict between scrooloose's snippets and the official ones
	test -d bundle/0-snipMate/snippets/ && rm -rf bundle/snipMate/snippets/

helptags:
	vim -u NONE -c "\
	for dir in split(globpath(&runtimepath, 'bundle/*/doc/.'), '\n') | \
		execute 'helptags '. dir | \
	endfor" -c quit
