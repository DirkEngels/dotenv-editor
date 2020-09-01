# Next release 0.3.1

### Added
+ Add main menu with options to change / save preferences, create new item, view diff.
+ Copy .env file to tmp file and ask before saving.
+ Ask to save changes before exiting
+ Show differences in a textbox


### Fixes
+ Bug selecting variable in simple (non-group) mode


# Todo for future version

### Fixes
- Displaying menu with items with depth > 2
- Use current working directory to search for .env files

### Improvements
- Add -e option to group enable variables (*_ENABLED). It display a checkbox
  list with items to select, which will be used to filter upon.

### Ideas
- Delete variable in case a variable is empty after asking input.

