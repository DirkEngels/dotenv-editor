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
# Clean: Clean up stuff created during a build. (although it is just a single script)
###
clean:										# Clean build stuff
    @echo "$(COLOR_ORANGE)Removing tmp files$(COLOR_RESET)";
    @rm -f /tmp/dotenv-editor-*


###
# Install: Install the script (copy to /usr/bin)
###
install:										# Clean build stuff
    @echo "$(COLOR_ORANGE)Installing dotenv-editor into /usr/bin$(COLOR_RESET)";
    cp dotenv-editor $(DEST_DIR)$(BIN_DIR)

###
# Uninstall: Unnstall the script (remove /usr/bin/dotenv-editor)
###
uninstall:										# Clean build stuff
    @echo "$(COLOR_ORANGE)Un-installing dotenv-editor (removing from /usr/bin)$(COLOR_RESET)";
    rm $(DEST_DIR)$(BIN_DIR)/dotenv-editor
