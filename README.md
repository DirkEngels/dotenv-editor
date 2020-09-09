# Dotenv Editor
Many project nowadays use a .env file for defining its configuration.
I guess it started with docker, but many other project adopt it as well.
Afterall it is a commonly used technique (https://en.wikipedia.org/wiki/Env)
This tools make it easier for users to setup and configure an application.

![dotenv-editor-screenshot](https://user-images.githubusercontent.com/503929/91663533-bd27c080-eae9-11ea-9d1d-9e2196b23b11.png)

### Usage
Start the application by running the script:
```
./dotenv-editor
```

It will display a list of all variables defined in the existing .env file (or
.env.sample file). It tries to group elements by prefix to improve user
experience in case of larger or more complex .env files.


### Options
```
Usage: dotenv-editor [FILE]

Command options:
  -f, --file=FILE            use this dotenv configuration file (default: .env)
  -l, --log=FILE             use this file for (debug) logging (default: /dev/null)
  -v, --version              print program version
  -h, --help                 print help info (this screen)

Compatibility modes:
  -q, --quote                quote variables with a '"'

UI features:
  -g, --group                enable grouping variables by separator

Specify UI library:
  --dialog                   Use the original dialog library
  --whiptail                 Use the newer whiptail library
```

If no file parameter (-f) is provided it wil look like for the .env file. In
case the .env does not exists it wil check for any .env-* file to use as an
example to start from after which it will be copied to the .env file.


### Requirements
The dotenv-editor has a couple of dependencies for rendering the interface
besides the generally available cli tools (bash, grep, awk)

* dialog
* whiptail

One of these libraries is required. The script will detect which library is
available or ask you to install one.
