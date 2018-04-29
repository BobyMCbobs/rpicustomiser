all:
	mkdir src
	cp -r DEBIAN usr src
	sudo cp -r --no-preserve=ownership src rpicustomiser
	dpkg-deb --build rpicustomiser
	sudo rm -r rpicustomiser src

clean:
	sudo rm -r rpicustomiser*
