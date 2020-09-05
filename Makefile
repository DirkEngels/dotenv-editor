.RECIPEPREFIX +=
.DEFAULT_GOAL := help
.PHONY: $(filter-out install vendor node_modules,$(MAKECMDGOALS))

BIN_DIR=/usr/bin

### CLI COLORS
COLOR_RESET=\033[0m
COLOR_RED=\033[31m
COLOR_GREEN=\033[32m
COLOR_ORANGE=\033[33m
COLOR_BLUE=\033[34m



###
# Help: Show a basic help message and list all public available commands.
###
help:                                                                           # Show Help
        @echo "$(COLOR_ORANGE)Usage:$(COLOR_RESET)\n  make [target] [arg=\"val\"...]"
        @echo "";
        @echo "$(COLOR_ORANGE)Targets:$(COLOR_RESET)"
        @echo "  $(COLOR_GREEN)install$(COLOR_RESET)         Install package"
        @echo "  $(COLOR_GREEN)uninstall$(COLOR_RESET)       Uninstall this package"
        @echo "";
        @echo "$(COLOR_ORANGE)Developer:$(COLOR_RESET)"
        @echo "  $(COLOR_GREEN)deb$(COLOR_RESET)             Build debian/ubuntu package"
        @echo "  $(COLOR_GREEN)clean$(COLOR_RESET)           Clean up stuff created during build process"
        @echo "";


###
# Install: Install the script (copy to /usr/bin)
###
install:										# Clean build stuff
    @echo "$(COLOR_ORANGE)Installing dotenv-editor into /usr/bin$(COLOR_RESET)";
    cp dotenv-editor $(DEST_DIR)$(BIN_DIR)

###
# Uninstall: Unnstall the script (remove /usr/bin/dotenv-editor)
###
uninstall: $(DEST_DIR)$(BIN_DIR)/dotenv-editor  					# Clean build stuff
    @echo "$(COLOR_ORANGE)Un-installing dotenv-editor (removing from /usr/bin)$(COLOR_RESET)";
    rm $(DEST_DIR)$(BIN_DIR)/dotenv-editor


###
# Deb: Create a debian package
###
VERSION ?= ""
deb:                                                                                    # Build debian package
    @echo "$(COLOR_ORANGE)Building a debian package$(COLOR_RESET)";

ifeq ($(VERSION),"")
    @echo "ERROR: Specify the deb package version\n\n    VERSION=0.3.1 make deb\n"
endif

ifneq ($(VERSION),"")
    mkdir -p build/DEBIAN
    echo "Package: dotenv-editor\nVersion: ${VERSION}\nArchitecture: all\nMaintainer: Dirk Engels <d.engels@dirkengels.com>\nDepends:\nDescription: Dotenv Editor" > build/DEBIAN/control

    mkdir -p build/usr/bin
    cp dotenv-editor build/usr/bin

    mkdir -p dist
    dpkg-deb -b build dist/dotenv-editor-${VERSION}.deb
    echo "\nPackage build: dist/dotenv-editor-${VERSION}.deb\n"
endif


###
# Clean: Clean up stuff created during a build. (although it is just a single script)
###
clean:										# Clean build stuff
    @echo "$(COLOR_ORANGE)Removing tmp files$(COLOR_RESET)";
    @rm -f /tmp/dotenv-editor-*
    rm -fr build/
    rm -fr dist/


