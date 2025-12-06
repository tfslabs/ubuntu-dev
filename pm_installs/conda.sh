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
        python-dateutil pandas scikit-learn matplotlib \
        scipy yaml lxml snappy hdf5 cffi pyyaml click \
        requests beautifulsoup4 attrs charset-normalizer \
        protobuf idna urllib3 packaging r-base qiskit; do
    conda install -y -c conda-forge "$pkg"
done

# Specify platform for ARM64v8
if [[ "$ARCH" == "x86_64" ]]; then
    conda install -y -c conda-forge "julia"
else
    echo "Package 'julia' is not available on ARM64v8"
fi

# Clean cache
conda clean --all -y
