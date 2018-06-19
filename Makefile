PREFIX ?= /usr
COMPLETIONDIR ?= $(PREFIX)/share/bash-completion/completions

all: help

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(COMPLETIONDIR)
	@cp -p rpicustomiser $(DESTDIR)$(PREFIX)/bin
	@cp -p rpicustomiser.completion $(DESTDIR)$(COMPLETIONDIR)/rpicustomiser
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/rpicustomiser
	@chmod 755 $(DESTDIR)$(COMPLETIONDIR)/rpicustomiser

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/rpicustomiser
	@rm -rf $(DESTDIR)$(COMPLETIONDIR)/rpicustomiser

deb:
	@mkdir build
	@make DESTDIR=build install
	@cp -r support/debian build/DEBIAN
	@sudo chown -R root:root build
	@dpkg-deb --build build
	@sudo chown -R $$(whoami):$$(whoami) build
	@mv build.deb rpicustomiser.deb

clean:
	@rm -r build rpicustomiser.deb

help:
	@echo "Read 'README.md' for info on building."

