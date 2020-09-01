# Changelog
All notable changes to this project will be documented in this file.


## 0.3.1 (2020-09-01)
Main menu for common tasks (reset, save, view changes) and ask before saving changes.

### Added
+ Add main menu with options to change / save preferences, create new item, view diff.
+ Copy .env file to tmp file and ask before saving.
+ Ask to save changes before exiting
+ Show differences in a textbox

### Fixes
+ Bug selecting variable in simple (non-group) mode


## 0.3.0 (2020-08-31)
Group variables by prefix in menus.

### Fixes
+ Do not create a file called 1 (a bug)
+ After asking for input return to the previous menu, not the main menu.

### Added
+ Flag to group variables (like the previous version did already). This could
  also be implemented as a maximum depth level to group upon.


## 0.2.3 (2020-08-30)
Various UI fixes

### Fixes
+ Error when variable value contains spaces
+ Improve layout for menu list (more space)

### Added
+ Compatibility mode to quote string variables

### Removed
+ Removed screenshot image from the git repo (moved to github pages).


## 0.2.2 (2020-08-25)
Support multiple libraries and various fixes.

### Added
+ Support multiple libraries (dialog/whiptail/zenity/whatever)
+ Specify log output (to file or use /dev/null by default)
+ Option to specify .env file to use

### Removed
+ Unrelevant log messages
+ Clean up comments


## 0.2.1 (2020-08-24)
Various bugfixes and improvements.

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
