# docker_ottdstats

This repository simply builds a container for [ottdstats](https://dev.openttdcoop.org/projects/ottdstats), a statistic collection backend for OpenTTD.

## Usage

Mount your config.json at `/app/config.json`.

Alternatively, you can mount it wherever you want, and launch with something like the following:

```
docker run -it --rm -v /home/duck/my_ottdstats_config.json:/config/config.json redditopenttd/ottdstats --config /config/config.json
```
