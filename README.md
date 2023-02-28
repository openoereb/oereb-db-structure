# OEREB-DB-STRUCTURE

This is a simple mirror of the [repo from canton Solothurn](https://github.com/oereb/oereb-db). The advantage of this repo is the build
of the structure already contained in the image. This prevents long boot times and makes the DB adressable via standard docker tool.

In addition this repo contains the ili2db tools (ili2pg) to offer easy use for importing all data directly in the database as subsequent
docker layers.

## MENTION

Since the original folder of postgres is defined as a VOLUME which you can see [here](https://github.com/docker-library/postgres/blob/master/Dockerfile-debian.template#L184)
it is ignored for the `docker commit ...` command. This we can circumnavigate by defining a different
data directory inside the container by the ENV `PGDATA`.
