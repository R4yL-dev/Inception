# Inception

## What it is?

This repo contains my `Inception` project from School 42

For the moment, the project only fulfills the mandatory part... the bonuses are coming soon!

## Prerequisites

`docker` and `docker compose` must be installed

## How to install it?

```text
$> git clone git@github.com:R4yL-dev/Inception.git && cd Inception
$> touch srcs/.env_db srcs/.env_wp
```

## How do I configure it?

Before launching the containers for the first time, you must add the configurations to the files `srcs/.env_db` and `srcs/.env_wp`

*srcs/.env_db*

```text
DB_ROOT_PWD=

DB_USER=
DB_USER_PWD=

DB_NAME=
DB_PREFIX=
```

*srcs/.env_wp*

```text
WP_URL=
WP_TITLE=

WP_ADMIN=
WP_ADMIN_PWD=
WP_ADMIN_EMAIL=

WP_USER=
WP_USER_PWD=
WP_USER_EMAIL=
WP_USER_ROLE=
```

You can configure these values as you wish, but they must all be present in the file and have a value.

## How does it work?

Once the initial configuration is done, simply run `make`. This will invoke `docker compose` to create all the containers and run them.

- `make up` : Creates and starts all containers
- `make down` : Stop and delete containers
- `make start` : Starts containers
- `make stop` : Stop containers
- `make clean` : Stops containers and removes all traces
