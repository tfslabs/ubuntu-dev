#!/bin/bash

set -euo pipefail
trap 'echo "Error occurred at line ${LINENO} of ${BASH_SOURCE[0]}. Exiting..."; exit 1' ERR

# Get the arch
ARCH=$(uname -m)

#############################################
# Update and Upgrade the current instance
apt update
apt full-upgrade -y

# Core APT Package
apt install -y software-properties-common

#############################################
# Add .NET Core APT repository
add-apt-repository -y ppa:dotnet/backports

# Update APT after adding new repositories
apt update

#############################################
# Installing essential packages (grouped by category)

# Core utilities
apt install -y autotools-dev coreutils file locales tzdata \
    time tar xz-utils curl jq dbus xxd

# Compression & archiving
apt install -y p7zip-full p7zip-rar 7zip bzip2 lz4 unzip \
    upx xorriso zip zsync zstd

# Development tools & build dependencies
apt install -y autoconf automake binutils bison flex make \
    m4 pkg-config libtool swig

# Networking, SSH & network tools
apt install -y iproute2 iputils-ping dnsutils net-tools \
    netcat-openbsd openssh-client ssh sshpass rsync ftp \
    pollinate rpcsvc-proto publicsuffix

# Security & crypto
apt install -y gnupg2 haveged libnss3-tools pass openssl

# Version control & SCM
apt install -y git

# File & media processing
apt install -y ffmpeg imagemagick mediainfo \
    fonts-noto-color-emoji libwmf-bin 

# Scripting, tooling & QA
apt install -y shellcheck parallel

# Databases & search
apt install -y sqlite3 sphinxsearch

#############################################
# Installing General GNU compilers and build tools
apt install -y automake build-essential binutils-dev binutils-multiarch \
    gcc g++ gdb gdbserver lld cmake cmake-data ninja-build ccache clang \
    clang-format clang-tidy clang-tools gfortran cpp cpp-12 gdb-multiarch

# Installing compilers for MinGW (Windows x64 target)
apt install -y mingw-w64 mingw-w64-tools mingw-w64-common \
    binutils-mingw-w64 binutils-mingw-w64-x86-64 \
    gcc-mingw-w64 gcc-mingw-w64-* g++-mingw-w64 g++-mingw-w64

# Installing ARM toolchains
apt install -y gcc-arm-none-eabi gdb-arm-none-eabi binutils-arm-none-eabi

# Installing LLVM toolchain
apt install -y llvm llvm-dev llvm-runtime clangd lld lldb \
    libclang-dev libllvm14 llvm-14 llvm-14-dev llvm-14-runtime

# Installing Java Development Kit (OpenJDK 11, 17, and 21)
apt install -y default-jdk \
    openjdk-11-jdk openjdk-11-jre \
    openjdk-17-jdk openjdk-17-jre \

# Instaling .NET SDKs and runtimes
apt install -y \
    dotnet-sdk-8.0 aspnetcore-runtime-8.0 dotnet-runtime-8.0 \
    dotnet-sdk-9.0 aspnetcore-runtime-9.0 dotnet-runtime-9.0

# Installing Node.js and npm
apt install -y nodejs npm yarn

#############################################
# Clean up packages
apt autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
