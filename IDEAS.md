# Next release 0.3.0

### Fixes
- Displaying menu with items with depth > 2

### Added
- Flag to group variables (like the previous version did already). This could
  also be implemented as a maximum depth level to group upon.


# Todo for future version

### Fixes
- Displaying menu with items with depth > 2
- Use current working directory to search for .env files

### Improvements
- After asking for input return to the previous menu, not the main menu.
- Add -e option to group enable variables (*_ENABLED). It display a checkbox
  list with items to select, which will be used to filter upon.

### Added
- Flag to group variables (like the current version does)
- Flag to hide intro

### Changes
- Copy .env file to tmp file and ask before saving.

### Fixes
- Do not create a file called 1 (a bug)

### Improvements
- After asking for input return to the previous menu, not the main menu.
