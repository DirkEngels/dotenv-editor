# Changelog
All notable changes to this project will be documented in this file.


## 0.5.0 (2020-10-04)
Enable features by default and can be disabled using one of the 
--disable-<feature> flags./

### Changed
+ Rename option --checkbox => --services
+ Options enabled by default; disable using --disable-<feature> flag.


## 0.4.4 (2020-10-04)
More command line options for tweaking behaviour.

### Added
- Option (--depth=2) to define the group depth level.
- Option (--modify) for enabling/disabling added/deleting variables.


## 0.4.3 (2020-09-28)
Show a progress bar loading a larger files.

### Added
+ Show progress bar when progressing files (improve performance later)

### Fixed
+ Ignore files starting with a space (fixes loading laradock example)


## 0.4.2 (2020-09-27)
Various bugfixes and improvements.

### Fixed
+ Description/value not set when adding a new variable.
+ List is empty after VIEW_DIFF (depth level too high?)
+ View changes after enabling/disabling services


## 0.4.1 (2020-09-27)
Descriptions for grouped items

### Added
+ Extract a description for the group. (default: 'More options')

### Improvements
+ Improved README (& added github pages)


## 0.4.0 (2020-09-19)
Supports description of variables using comments.

### Improvements
+ Extract variable comment by getting the previous lines in the .env file which
  start with a #. The comment is used to give more information how a variable
  is used and changes the applications behaviour.

### Fixes
+ Go back to previous depth level after editing a variable
+ Hide ENABLED fields when the services checkbox feature is enabled


## 0.3.5 (2020-09-13)
Various small fixes and code clean up

### Fixes
+ Do not quote integer values

### Removed
+ Welcome message


## 0.3.4 (2020-09-10)
Some small fixes and improvements to the README file.

### Added
+ Ask user to create a new file if no .env file can be found

### Fixed
+ Fix running the editor when there is not .env file in the current dir


## 0.3.3 (2020-09-06)
Menu for enable/disable services. Also various fixes and improvements.

### Added
+ Add -e option to group enable variables (*_ENABLED). It display a checkbox
  list with items to select, which will be used to filter upon.
+ Parameter --depth to limit the depth for grouping (enables group mode)
+ Create debian package

### Fixes
+ Cancel button for preferences resets the variables
+ Only make variable name uppercase when creating a new variable
+ Go back to previous menu after using settings, save, reset or new variable
+ Improve log messages (make it more human readable)
+ Displaying menu with items with depth > 2


## 0.3.2 (2020-09-05)
Create and delete variables.

### Added
+ Create new variable
+ Delete variable in case a variable is empty after asking input
+ Makefile for (un)installing
+ Store preferences in ~/.dotenv-editor
+ Use current working directory to search for .env files


## 0.3.1 (2020-09-01)
Main menu for common tasks (reset, save, view changes) and ask before saving changes.

### Added
+ Add main menu with options to change / save preferences, create new item, view diff.
+ Copy .env file to tmp file and ask before saving.
+ Ask to save changes before exiting
+ Show differences in a textbox

### Fixed
+ Bug selecting variable in simple (non-group) mode


## 0.3.0 (2020-08-31)
Group variables by prefix in menus.

### Added
+ Flag to group variables (like the previous version did already). This could
  also be implemented as a maximum depth level to group upon.

### Fixed
+ Do not create a file called 1 (a bug)
+ After asking for input return to the previous menu, not the main menu.


## 0.2.3 (2020-08-30)
Various UI Fixed

### Added
+ Compatibility mode to quote string variables

### Removed
+ Removed screenshot image from the git repo (moved to github pages).

### Fixed
+ Error when variable value contains spaces
+ Improve layout for menu list (more space)


## 0.2.2 (2020-08-25)
Support multiple libraries and various Fixed.

### Added
+ Support multiple libraries (dialog/whiptail/zenity/whatever)
+ Specify log output (to file or use /dev/null by default)
+ Option to specify .env file to use

### Removed
+ Unrelevant log messages
+ Clean up comments


## 0.2.1 (2020-08-24)
Various bugFixed and improvements.

### Added
+ Check if required dependencies (sed, awk, dialog, whiptail, etc) exists.
+ Help option to display the command arguments and options
+ Version flag

### Improvements
+ Show current value in menu for variables

### Removed
+ Drop dependency: bin/dotenv.sh
+ Old proof of concepts scripts (poc/)


## 0.2 (2020-08-23)
Working proof of concept which will update a configuration setting in a dotenv
file.

### Added
- Welcome screen
- Use underscores to split variables to create sub menus
- Updating .env file after asking user input
- Dotenv file selection if there is .env in the current directory


## 0.1 (2020-08-18)
Some first executable prototype. It will display the found variables in a menu
using the dialog/whiptail command.

### Added
- Proof of concept menu using dialog/whiptail
