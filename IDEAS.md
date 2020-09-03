# Next release 0.3.2

### Added
+ Store preferences in ~/.dotenv-editor
- Displaying menu with items with depth > 2
- Do not quote integer values
+ Makefile for (un)installing

# Todo for future version

### Fixes
- Use current working directory to search for .env files

### Improvements
- Add -e option to group enable variables (*_ENABLED). It display a checkbox
  list with items to select, which will be used to filter upon.

### Ideas
- Create new variable
- Delete variable in case a variable is empty after asking input.
- Add meta description for each variable by appending a # at the end of each
  line OR use the previous line (depending on how dotenv readers have been
  implemented)


- Flag/ option to group *enabled* services together
- Extract comments before a variable to display.
- Create debian package

