all:
	mkdir build
	fakeroot -u cp -r --no-preserve=ownership src rpicustomiser
	dpkg-deb --build rpicustomiser
	fakeroot -u rm -r rpicustomiser build

clean:
	fakeroot -u rm -r build rpicustomiser*.deb
