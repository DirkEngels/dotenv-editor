# Next release 0.2.2

### Added
+ Support multiple libraries (dialog/whiptail/zenity/whatever)
- Option to specify .env file to use
- Flag to write directly in stead of temp file




# Todo for future version

### Added
- Specify log output (to file or use /dev/null by default)
- Flag to group variables (like the current version does)
- Flag to hide intro

### Changes
- Copy .env file to tmp file and ask before saving.

### Fixes
- Displaying menu with items with depth > 2
- Do not create a file called 1 (a bug)
- Error when variable value containt spaces

### Improvements
- Improve layout for menu list (more space)
- After asking for input return to the previous menu, not the main menu.


