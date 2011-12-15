all: update

update:
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
	git commit -m 'add $(to) bundle' bundle/$(to) .gitmodules


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
	git submodule add git://github.com/vim-scripts/$(basename $(from)).git bundle/$(to)
	git commit -m 'add $(to) bundle' bundle/$(to) .gitmodules

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
	git rebase HEAD # ensure that there are no uncommitted changes
	git rm --cached bundle/$(from)
	# TODO: replace this with `git config` trick (see my SO answer)
	sed -i '/^\[submodule "bundle\/$(from)"\]$$/,+2d' .gitmodules
	git commit -am 'remove $(from) bundle'
	rm -rf bundle/$(from)

#-----------------------------------------------------------------------------

rebase:
	git rebase HEAD # ensure that there are no uncommitted changes
	git remote show upstream || git remote add upstream git://github.com/sunaku/.vim.git
	git fetch upstream
	git rebase upstream/master

commit-amend:
	git commit -a --amend

commit:
	git status && \
		printf "Commit? (Enter/Cancel): " && read && \
		git commit -a --edit && \
		printf "Push? (Enter/Cancel): " && read && \
		git push github.com

SEARCH ?= "https://github.com/search?type=Everything&language=VimL&q=$(for)"
BROWSE ?= /usr/bin/surf
search:
ifndef for
	#
	# Search for Vim scripts on GitHub.com
	#
	# Usage: make search for=SEARCH_TERM [BROWSE=$(BROWSER)]
	@false
endif
	@$(BROWSE) $(SEARCH) > /dev/null 2> /dev/null
