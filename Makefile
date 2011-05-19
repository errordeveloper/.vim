all: pull

#-----------------------------------------------------------------------------

pull:
	git submodule init
	git submodule status | awk '/^-/ { print $$2 }' | xargs -r git submodule update
	git submodule foreach git pull origin master

	# resolve conflict between scrooloose's snippets and the official ones
	test -d bundle/0-snipMate/snippets/ && rm -rf bundle/snipMate/snippets/

	$(MAKE) helptags

helptags:
	vim -u NONE -c "\
	for dir in split(globpath(&runtimepath, 'bundle/*/doc/.'), '\n') | \
		execute 'helptags '. dir | \
	endfor" -c quit

#-----------------------------------------------------------------------------

to ?= $(notdir $(basename $(from)))

add:
ifndef from
	#
	# Adds a bundle from any Git repository.
	#
	# * GIT_REPO_URL is the URL of the Git repository.
	# * BUNDLE_NAME is the name of the bundle subdirectory.
	#
	# Usage: make add from=GIT_REPO_URL [to=BUNDLE_NAME]
	#
	@false
endif
	git submodule add $(from) bundle/$(to)
	git commit -m 'add $(to) bundle' bundle/$(to)


add-script:
ifndef from
	#
	# Adds a bundle from the http://vim-scripts.org Git mirror.
	#
	# * MIRROR_NAME is the basename of the Git repository.
	# * BUNDLE_NAME is the name of the bundle subdirectory.
	#
	# Usage: make add-script from=MIRROR_NAME [to=BUNDLE_NAME]
	#
	@false
endif
	git submodule add git://github.com/vim-scripts/$(from).git bundle/$(to)
	git commit -m 'add $(to) bundle' bundle/YYY

remove: .gitmodules
ifndef from
	#
	# Removes a bundle.
	#
	# * BUNDLE_NAME is the name of the bundle subdirectory.
	#
	# Usage: make remove from=BUNDLE_NAME
	#
	@false
endif
	git stash save 'going to remove $(from) bundle...'
	git rm --cached bundle/$(from)
	sed -i '/^\[submodule "bundle\/$(from)"\]$$/,+2d' .gitmodules
	git commit -am 'remove $(from) bundle'
	rm -rf bundle/$(from)
	git stash pop
