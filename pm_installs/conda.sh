#!/bin/bash

set -euo pipefail
trap 'echo "Error occurred at line ${LINENO} of ${BASH_SOURCE[0]}. Exiting..."; exit 1' ERR

# Detect architecture and map common names to Miniconda artifact names
ARCH=$(uname -m)
case "$ARCH" in
    x86_64) ARCH="x86_64" ;;
    aarch64|arm64) ARCH="aarch64" ;;
    *) ARCH="$ARCH" ;;
esac

# Ensure installed conda is on PATH and make conda non-interactive
export PATH="/usr/local/bin:$PATH"
export CONDA_ALWAYS_YES=true
export PYTHONUNBUFFERED=1
export PYTHONDONTWRITEBYTECODE=1

# Download Miniconda installer for the detected architecture
curl -SL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-$ARCH.sh" -o /tmp/miniconda.sh
chmod +x /tmp/miniconda.sh

# Run the installer non-interactively (-b) and install to /usr/local
# Use -p (prefix) instead of combined -fp to keep flags explicit
bash /tmp/miniconda.sh -b -p /usr/local

rm -rf /tmp/miniconda.sh

# Use explicit conda binary path to avoid PATH related surprises
CONDA_BIN="/usr/local/bin/conda"
if [ ! -x "$CONDA_BIN" ]; then
    # Try hashing to refresh shell command cache; fall back to generic `conda`
    hash -r || true
    CONDA_BIN="$(command -v conda || echo conda)"
fi

# Accept terms of service if supported (non-fatal if command is unavailable)
"$CONDA_BIN" tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main || true
"$CONDA_BIN" tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r || true

# Configure conda channels and settings non-interactively
"$CONDA_BIN" config --add channels conda-forge
"$CONDA_BIN" config --set channel_priority strict
"$CONDA_BIN" config --set always_yes true || true

# Update and install packages non-interactively
"$CONDA_BIN" update --all -y

"$CONDA_BIN" install -y python=3

"$CONDA_BIN" install -y -c conda-forge \
    setuptools pip sqlite wheel tk numpy pytz six \
    python-dateutil pandas scikit-learn matplotlib \
    scipy yaml lxml snappy hdf5 cffi pyyaml click \
    requests beautifulsoup4 attrs charset-normalizer \
    protobuf idna urllib3 packaging opencv geopandas \
    pyscf openpulse || true

"$CONDA_BIN" clean --all -y || true
