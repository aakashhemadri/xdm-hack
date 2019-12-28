BINARY:=xdm-hack

all: uninstall install clean

.PHONY: clean
clean:
	@echo "Cleaning build files..."
	@rm -f *.pkg.tar.xz
	@rm -rf pkg src
	@echo "Done."

.PHONY: build
build:
	@updpkgsums ./PKGBUILD
	@makepkg -fpL ./PKGBUILD --noconfirm

.PHONY: install
install:
	@updpkgsums ./PKGBUILD
	@makepkg -Ccip ./PKGBUILD --noconfirm

.PHONY: uninstall
uninstall:
	@sudo pacman -R $(BINARY) --noconfirm 