# Dotenv Editor
Many project nowadays use a .env file for defining its configuration.
I guess it started with docker, but many other project adopt it as well.
Afterall it is a commonly used technique (https://en.wikipedia.org/wiki/Env)
This tools make it easier for users to setup and configure an application.

[![solarized dualmode](https://github.com/DirkEngels/dotenv-editor/raw/master/img/dotenv-editor-screenshot.png)](#screenshot)

### Usage
Start the application by running the script:
```
./dotenv-editor
```

It will display a list of all variables defined in the existing .env file (or
.env.sample file). It tries to group elements by prefix to improve user
experience in case of larger or more complex .env files.

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
