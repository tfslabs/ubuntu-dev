# Ubuntu Containers for Development

This project is intended to normalize the development process, by building a toolset of common development toolchains into a Docker container, with supported architectures.

The build images are based on [Ubuntu LTS images](https://ubuntu.com/containers).

## Available containers

DevOps users are recommended to use those available containers:

- `noble` (`linux/amd64` and `linux/arm64/v8`)

## Usage

Pulling image using the Ubuntu codename (see above for available codenames)

```bash
# Ubuntu 24.04 LTS (Noble, AMD64)
docker pull theflightsims/ubuntu-dev:noble-amd64

# Ubuntu 24.04 LTS (Noble, ARM64v8)
docker pull theflightsims/ubuntu-dev:noble-arm64v8
```

For Raspberry Pi, you can use this Dev Container - which is smaller for basic workloads.

```bash
docker pull theflightsims/ubuntu-dev:noble-rpi
```

## Packages installed

See in [PACKAGES.md](./PACKAGES.md)

## Contribute

See in [CONTRIBUTING.md](./CONTRIBUTING.md)
