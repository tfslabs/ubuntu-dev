#!/bin/bash

set -euo pipefail
trap 'echo "Error occurred at line ${LINENO} of ${BASH_SOURCE[0]}. Exiting..."; exit 1' ERR

# Get the arch
ARCH=$(uname -m)

#############################################
# Update and Upgrade the current instance
apt update && apt full-upgrade -y

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
apt install -y p7zip-full p7zip-rar 7zip 7zip-standalone \
    bzip2 lz4 unzip upx xorriso zip zsync zstd

# Development tools & build dependencies
apt install -y autoconf automake binutils bison flex make \
    m4 pkg-config libtool swig

# Libraries & dev headers (organized alphabetically by category)
apt install -y \
    libaom3 libalgorithm-diff-perl libalgorithm-diff-xs-perl \
    libalgorithm-merge-perl libbrotli1 libdeflate0 liblzma5 \
    libarchive13 libfile-fcntllock-perl libmagic-dev libzip4 \
    libc6 libc6-dev libc-dev-bin libc-devtools libgcc-12-dev \
    libgcc-s1 libstdc++6 libstdc++-12-dev \
    libcrypt-dev libssl3 libgssapi-krb5-2 \
    libfreetype6 libheif1 libjpeg-turbo8 libpng16-16 libwebp7 \
    libx265-199 libxml2 libyuv0 \
    libgmp-dev libgmpxx4ldbl libmpc-dev libmpfr-dev libgsl-dev \
    libnghttp2-14 libpsl5 librtmp1 \
    libexpat1 libicu74 libjsoncpp25 libnuma1 libnsl-dev libnsl2 \
    libtirpc-dev libtsan2 libubsan1 \
    libx11-6 libx11-data libxcb1 libxau6 libxdmcp6 libxkbfile-dev \
    libxpm4 libxss1 \
    libfl2 libfontconfig1 libgd3 libgtk-3-0 libmagic-dev \
    libsecret-1-dev libyaml-dev zlib1g

# Networking, SSH & network tools
apt install -y iputils-ping dnsutils net-tools ssh \
    netcat-openbsd openssh-client sshpass rsync ftp \
    pollinate rpcsvc-proto publicsuffix

# Security & crypto
apt install -y gnupg2 haveged libnss3-tools pass openssl

# Version control & SCM
apt install -y git

# Databases & search
apt install -y sqlite3 sphinxsearch

#############################################
# Installing General GNU compilers and build tools
apt install -y automake build-essential binutils-dev binutils-multiarch \
    gcc g++ gdb gdbserver lld cmake cmake-data ninja-build ccache clang \
    clang-format clang-tidy clang-tools gfortran cpp gdb-multiarch

# Installing compilers for MinGW (Windows x64 target)
apt install -y mingw-w64 mingw-w64-tools mingw-w64-common \
    binutils-mingw-w64 binutils-mingw-w64-x86-64 \
    gcc-mingw-w64 gcc-mingw-w64-* g++-mingw-w64 g++-mingw-w64

# Installing ARM toolchains
apt install -y gcc-arm-none-eabi gdb-arm-none-eabi binutils-arm-none-eabi

# Additional tools for building Linux kernels and modules
apt install -y libncurses5-dev libncursesw5-dev flex bison libssl-dev \
    libelf-dev dwarves bc fakeroot libcap-dev libnuma-dev libudev-dev \
    libpci-dev libiberty-dev libmnl-dev libbpf-dev

if [[ "$ARCH" == "x86_64" ]]; then
    apt install -y libc6-dev-i386 libc6-dev-x32
fi

# Installing Java Development Kit (OpenJDK 11, 17, and 21)
apt install -y default-jdk

# Instaling .NET SDKs and runtimes
apt install -y \
    dotnet-sdk-{8.0,10.0} \
    dotnet-sdk-dbg-{8.0,10.0}

# Installing Node.js and npm
apt install -y nodejs npm yarn

#############################################
# Clean up packages
apt autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
