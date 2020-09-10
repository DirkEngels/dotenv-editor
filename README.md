# Dotenv Editor
This tools make it easier for users to setup and configure an application
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


### Contributing
In case you experience a bug or have an improvement please fork the git repository and push a git merge requests. 

In case you have an idea but you are unable to implement it, then add your idea in the bottom section (future versions) of the [TODO.md](TODO.md) file. 

Once a feature/bug has been implemented/fixed it can be merged/pushed into the master branch. Once a release is made the implemented items from the [TODO](TODO.md) list will be moved to the [CHANGELOG](CHANGELOG.md) file.

UPDATE: Most of the ideas have now been implemented. The next following versions will be used for fix any bugs after which there will be a 1.0 version. Please provide feedback and report your bugs!

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
