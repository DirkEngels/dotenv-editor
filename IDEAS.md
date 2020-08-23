# Todo for next version (version 0.2.1)
Various bugfixes and improvements.

### Removed
+ Drop dependency: bin/dotenv.sh
+ Old proof of concepts scripts (poc/)

### Added
+ Check if required dependencies (sed, awk, dialog, whiptail, etc) exists.

### Changes
- Copy .env file to tmp file and ask before saving.

### Fixes
- Displaying menu with items with depth > 2
- Do not create a file called 1 (a bug)

### Improvements
+ Show current value in menu for variables
- Improve layout for menu list (more space)
- After asking for input return to the previous menu, not the main menu.


# Todo for future version

### Added
- Support multiple libraries (dialog/whiptail/zenity/whatever)
- Specify log output (to file or use /dev/null by default)
- Help option to display the command arguments and options
- Version flag
- Option to specify .env file to use
- Flag to write directly in stead of temp file
