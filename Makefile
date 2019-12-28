all: install clean

.PHONY: clean
clean:
	@echo "Cleaning build files..."
	@rm -rf *.pkg.tar.xz
	@rm -rf pkg src
	@echo "Done."

.PHONY: build
build:
	@updpkgsums ./PKGBUILD
	@makepkg -fp ./PKGBUILD

.PHONY: install
install:
	@makepkg -ip ./PKGBUILD