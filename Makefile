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

prep-deb:
	@mkdir -p build/rpicustomiser
	@cp -p -r support/debian build/rpicustomiser/debian
	@mkdir build/rpicustomiser/debian/rpicustomiser
	@make DESTDIR=build/rpicustomiser/debian/rpicustomiser install

deb-pkg: prep-deb
	@cd build/rpicustomiser/debian && debuild -b

deb-src: prep-deb
	@cd build/rpicustomiser/debian && debuild -S

build-zip:
	@mkdir -p build/rpicustomiser
	@make DESTDIR=build/rpicustomiser install
	@cd build/rpicustomiser && zip -r ../rpicustomiser.zip .

clean:
	@rm -r build

help:
	@echo "Read 'README.md' for info on building."

