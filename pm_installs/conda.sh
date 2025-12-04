#!/bin/bash

set -euo pipefail
trap 'echo "Error occurred at line ${LINENO} of ${BASH_SOURCE[0]}. Exiting..."; exit 1' ERR

ARCH=$(uname -m)

# Get the Miniconda
curl -SL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$ARCH.sh -o /tmp/miniconda.sh

chmod +x /tmp/miniconda.sh

# Run the installer
bash /tmp/miniconda.sh -bfp /usr/local

rm -rf /tmp/miniconda.sh

conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda config --add channels conda-forge
conda config --set channel_priority strict

conda update --all -y

conda install -y python=3

conda install -y -c conda-forge setuptools pip sqlite \
    wheel tk numpy pytz six python-dateutil \
    freetype pandas scikit-learn ipython jupyter \
    tensorflow pytorch matplotlib scipy yaml \
    lxml snappy hdf5 cffi pyyaml click requests \
    beautifulsoup4 attrs protobuf charset-normalizer \
    idna urllib3 packaging opencv geopandas pyscf openpulse \
    qiskit PyMySQL SQLAlchemy onetimepass

conda clean --all -y
