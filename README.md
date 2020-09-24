# Dotenv Editor
This tool makes it easier for users to setup and configure an application
which uses a dotenv file for its configuration.

![dotenv-editor-screenshot](https://user-images.githubusercontent.com/503929/91663533-bd27c080-eae9-11ea-9d1d-9e2196b23b11.png)

Dotenv files (https://en.wikipedia.org/wiki/Env) are used by docker (compose).
A lot of programming languages have libraries to handle .env files:
* [Node.js](https://github.com/motdotla/dotenv)
* [Go](https://github.com/joho/godotenv)
* [Python](https://github.com/theskumar/python-dotenv)
* [Ruby](https://github.com/bkeepers/dotenv)
* [Java](https://github.com/cdimascio/java-dotenv)
* [PHP](https://github.com/vlucas/phpdotenv)


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
  -c, --checkbox             enable checkboxes for variables called *ENABLED* or
                             have a 0 or 1 value

Specify UI library:
  --dialog                   Use the original dialog library
  --whiptail                 Use the newer whiptail library
```

If no file parameter (-f) is provided it wil look like for the .env file. In
case the .env does not exists it wil check for any .env-* file to use as an
example to start from after which it will be copied to the .env file.


### Examples
The examples directory contains a couple of example .env files to show the
features of the dotenv-editor script.

#### Simple example
The most basic example contains of a (small) list of key/value pairs. This
works good if the amount of variables to configure is not too large.
```
./dotenv-editor -f=example/simple
```

#### Grouped example
To configure a large list of variables (key/value pairs) the menu items can be
grouped using the *-g option*. This option will split the variables on an
underscore. (Leave out the -g option to see the difference)
```
./dotenv-editor -f=example/grouped -g
```

#### Checkboxes example
Enable/disable a group of variables can be used with the *-c option*. A service
is a variabled ending with "$NAME_ENABLED". In case the value of this variable will
be set to 0 all variables starting with $NAME will be hidden.
```
./dotenv-editor -f=example/checked -c
```

### Install
The script can easily be installed globally by running:
```
make install
```
Run *make* to see a list of all possible targets.


### Requirements
The dotenv-editor is a stand-alone tool and only uses basic unix tools (such as
bash, grep, awk). The only requirement it to have at least one CLI UI rendering
tool installed (such as dialog or whiptail). The script will detect which
library is available or ask you to install one if none found.

### Configuration
The default options can be changed by creating a ~/.dotenv-editor file. This
file contains variable defaults.
```
MODE_GROUP="ON"
MODE_CHECKBOX="OFF"
COMPAT_QUOTE="ON"
LOG_FILE=/tmp/dotenv-editor.log
```

### Contributing
In case you experience a bug or have an improvement please fork the git repository and push a git merge requests.

In case you have an idea but you are unable to implement it, then add your idea in the bottom section (future versions) of the [TODO.md](TODO.md) file.

Once a feature/bug has been implemented/fixed it can be merged/pushed into the master branch. Once a release is made the implemented items from the [TODO](TODO.md) list will be moved to the [CHANGELOG](CHANGELOG.md) file.


### Vision
The goal for this project is to be a
* simple tool (user-friendly)
* using common unix tools (no other dependencies)
* follow the .env file specification (use standard specs)


### Credits
The following people get a free beer next time I see them in a bar as they contributed to this project:
* [Eric Herman](https://github.com/ericherman)


### License
Licensed under the terms of the MIT License.

See [LICENSE](LICENSE) for details.
