# How to contribute?

## Package Manager installation

For each package manager installation, each start with its name. For example, `apt` use `apt.sh` for most of the installation.

Each package manager has its own limitation, please review in each shell script file instead.

## Docker Compose

### Naming Docker Compose files

Each docker composing file start with the code name of Ubuntu LTS version. For example, `noble` is for Ubuntu 24.04 LTS (Noble Numbat)

More information, view on [Ubuntu Docs](https://documentation.ubuntu.com/project/release-team/list-of-releases/#list-of-current-releases)

### Order of installation

Currently, the dev container follow this order

1. `apt.sh`
2. `conda.sh`

Since the `apt` installs most base packages and toolchain, which then use for installing `conda`.

### Running locally

You can use the `docker build`, with

- `--platform` for platform specification (See on )
- `-f` for composing input (see for [Docker composing file naming](#naming-docker-compose-files) to use the correct file)
- `-t` for exporting image

> Note: The architecture must also be seperated.

For example, building a dev container Ubuntu 24.04 LTS on AMD64

```bash
docker build --platform "linux/amd64" -f ./dockerfiles/noble -t "theflightsims/ubuntu-dev:noble-amd64" .
```

## GitHub Actions

### Allowed workflows

```txt
actions/checkout@*,
docker/build-push-action@*,
docker/login-action@*,
docker/setup-buildx-action@*,
docker/setup-qemu-action@*,
jlumbroso/free-disk-space@*,
```

### Naming files

As same as [`dockerfiles` - Naming files](#naming-docker-compose-files)
