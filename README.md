# Dot Env Editor
Many project nowadays use a .env file for defining its configuration.
I guess it started with docker, but many other project adopt it as well.
Afterall it is a commonly used technique (https://en.wikipedia.org/wiki/Env)

This tools make it easier for users to setup and configure an application.

```
./dotenv-editor
```

It will display a list of all variables defined in the existing .env file (or
.env.sample file).

It tries to group elements by prefix to improve user experience in case of
larger or more complex .env files.

