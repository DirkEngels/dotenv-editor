# Next release 0.3.3

### Added
+ Create debian package
+ Parameter to limit the depth for grouping (enables group mode)

### Fixes
+ Cancel button for preferences resets the variables
+ Only make variable name uppercase when creating a new variable
+ Go back to previous menu after using settings, save, reset or new variable
+ Improve log messages (make it more human readable)
+ Displaying menu with items with depth > 2


# Todo for future version

### Fixes
- Do not quote integer values
- Fix running the editor when there is not .env file in the current dir

### Improvements
- Add -e option to group enable variables (*_ENABLED). It display a checkbox
  list with items to select, which will be used to filter upon.
- Add meta description for each variable by appending a # at the end of each
  line OR use the previous line (depending on how dotenv readers have been
  implemented)



