# Ubuntu Containers for Development

This project is intended to normalize the development process, by building a toolset of common development toolchains into a Docker container, with supported architectures.

The build images are based on [Ubuntu LTS images](https://ubuntu.com/containers).

## Available containers

DevOps users are recommended to use those available containers:

- `noble`/`latest` (`amd64` and `arm64/v8`)

## Usage

Pulling image using the Ubuntu codename (see above for available codenames)

```bash
# Ubuntu 24.04 LTS (Noble)
docker pull theflightsims/ubuntu-dev:noble
```

Docker also support multi-arch, if the image support it. In this case, you can also specify the platform. For example

```bash
# Ubuntu 24.04 LTS (Noble, AMD64 image)
docker pull --platform "linux/amd64" theflightsims/ubuntu-dev:noble

# Ubuntu 24.04 LTS (Noble, ARM64v8 image)
docker pull --platform "linux/arm64/v8" theflightsims/ubuntu-dev:noble
```

## Contribute

See in [CONTRIBUTING.md](./CONTRIBUTING.md)
