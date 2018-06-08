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
	@fakeroot -u cp -r --no-preserve=ownership support/debian build/DEBIAN
	@fakeroot -u chown -R root:root build
	@dpkg-deb --build build
	@mv build.deb rpicustomiser.deb

clean:
	@fakeroot -u rm -r build rpicustomiser.deb

help:
	@echo "Read 'README.md' for info on building."

