# docker-volta

Docker image for development in Node.js using [Volta](https://volta.sh/), a JavaScript tool manager

Provided image repository: [s3igo/volta](https://hub.docker.com/r/s3igo/volta)

## Description

Volta is a tool manager written in Rust.
It provides a fixed version of the node runtime and package manager by property of package.json.
Please refer to the [official guide](https://docs.volta.sh/guide/) for detailed instructions.

### Base image

[debian:bullseye-slim](https://hub.docker.com/_/debian)

### Additional packages

- git
- git-lfs
- make
- curl
- volta

> **Note**
> In addition, [my dotfiles](https://github.com/s3igo/dotfiles) are included in the layers of the image.

## Usage

```shell
docker run --rm -it s3igo/volta
```

## Example

```shell
cd example && docker compose run --rm --service-ports volta
```

## License

[BSD 2-Clause License](LICENSE)
