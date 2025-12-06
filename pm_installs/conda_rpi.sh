#!/bin/bash

set -euo pipefail
trap 'echo "Error occurred at line ${LINENO} of ${BASH_SOURCE[0]}. Exiting..."; exit 1' ERR

# Detect architecture and map common names to Miniconda artifact names
ARCH=$(uname -m)

# Ensure installed conda is on PATH and make conda non-interactive
export PATH="/usr/local/bin:$PATH"

# Download Miniconda installer for the detected architecture
curl -SL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$ARCH.sh" -o /tmp/miniconda.sh
chmod +x /tmp/miniconda.sh

# Run the installer non-interactively (-b) and install to /usr/local
bash /tmp/miniconda.sh -bfp /usr/local

# Remove the installer
rm -rf /tmp/miniconda.sh

# Accept terms of service if supported (non-fatal if command is unavailable)
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# Configure conda channels and settings non-interactively
conda config --add channels conda-forge
conda config --set channel_priority strict

# Update and install packages non-interactively
conda update --all -y

# Installing packages for Conda (Global)
conda install -y python=3
for pkg in setuptools pip sqlite wheel numpy pytz six \
        matplotlib scipy yaml lxml snappy cffi pyyaml \
        click beautifulsoup4 idna charset-normalizer \
        attrs requests protobuf  urllib3 packaging; do
    conda install -y -c conda-forge "$pkg"
done

# Clean cache
conda clean --all -y
