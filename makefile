

all_directories       := $(wildcard */)
directories_to_ignore := homebrew/
directories_to_stow   := $(filter-out $(directories_to_ignore), $(all_directories))


all: install

install: $(directories_to_stow)
	@for directory in $^; do stow $${directory}; done

uninstall: $(directories_to_stow)
	@for directory in $^; do stow -D $${directory}; done
