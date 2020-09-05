# Next release 0.3.2

### Added
+ Store preferences in ~/.dotenv-editor
+ Create new variable
+ Makefile for (un)installing
+ Use current working directory to search for .env files

### Fixes
- Displaying menu with items with depth > 2
- Do not quote integer values

# Todo for future version

### Fixes
- Fix running the editor when there is not .env file in the current dir
- Cancel button for preferences resets the variables

### Improvements
- Add -e option to group enable variables (*_ENABLED). It display a checkbox
  list with items to select, which will be used to filter upon.
- Delete variable in case a variable is empty after asking input.
- Add meta description for each variable by appending a # at the end of each
  line OR use the previous line (depending on how dotenv readers have been
  implemented)

### Ideas
- Create debian package




