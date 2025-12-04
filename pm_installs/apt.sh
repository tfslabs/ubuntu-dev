#!/bin/bash

set -euo pipefail
trap 'echo "Error occurred at line ${LINENO} of ${BASH_SOURCE[0]}. Exiting..."; exit 1' ERR

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
apt install -y p7zip-full p7zip-rar 7zip 7zip-standalone \
    bzip2 lz4 unzip upx xorriso zip zsync zstd

# Development tools & build dependencies
apt install -y autoconf automake binutils bison flex make \
    m4 pkg-config libtool swig

# Libraries & dev headers (sorted, duplicates removed)
apt install -y lib32z1 libaom3 libalgorithm-diff-perl \
    libalgorithm-diff-xs-perl libalgorithm-merge-perl \
    libarchive13 libasan8 libatomic1 libbinutils libbrotli1 \
    libcc1-0 libc-dev-bin libc-devtools libc6 libc6-dev \
    libc6-dev-*-cross libcurl4 libde265-0 libdeflate0 \
    libdpkg-perl libexpat1 libfakeroot libfile-fcntllock-perl \
    libfl2 libfontconfig1 libfreetype6 libgbm-dev libgmp-dev \
    libgmpxx4ldbl libgcc-12-dev libgcc-s1 libgomp1 libgd3 \
    libgsl-dev libgssapi-krb5-2 libgtk-3-0 libheif1 libitm1 \
    libicu74 libjbig0 libjsoncpp25 liblsan0 libmagic-dev \
    libmpc-dev libmpfr-dev libnghttp2-14 libnsl-dev libnsl2 \
    libnuma1 libpng16-16 libpsl5 libquadmath0 librhash0 \
    librtmp1 libsecret-1-dev libssh2-1 libssl3t64 libstdc++6 \
    libstdc++-10-dev libstdc++-11-dev libstdc++-12-dev \
    libtirpc-dev libtsan2 libubsan1 libuv1 libwebp7 \
    libwmf-bin libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 \
    libxkbfile-dev libxpm4 libx265-199 libxml2 libxss1 libyuv0 \
    libyaml-dev zlib1g

# Networking, SSH & network tools
apt install -y iproute2 iputils-ping dnsutils net-tools \
    netcat-openbsd openssh-client ssh sshpass rsync ftp \
    pollinate rpcsvc-proto publicsuffix

# Security & crypto
apt install -y gnupg2 haveged libnss3-tools pass openssl

# Version control & SCM
apt install -y mercurial subversion

# File & media processing
apt install -y ffmpeg imagemagick mediainfo \
    fonts-noto-color-emoji libwmf-bin git

# Scripting, tooling & QA
apt install -y shellcheck parallel sudo

# Databases & search
apt install -y sqlite3 sphinxsearch

# TeX & documentation tooling
apt install -y fontconfig-config fonts-dejavu-core \
    texinfo texlive-base texlive-base-bin \
    texlive-latex-base texlive-plain-generic \
    texlive-fonts-recommended

# Misc utilities
apt install -y telnet systemd-coredump tk zsh

#############################################
# Installing General GNU compilers and build tools
apt install -y automake build-essential binutils-dev binutils-multiarch \
    gcc g++ gdb gdbserver lld cmake cmake-data ninja-build ccache clang \
    clang-format clang-tidy clang-tools gfortran cpp gdb-multiarch

# Installing cross-compilation tools (AMD64)
apt install -y binutils-x86-64-gnu binutils-x86-64-linux-gnu \
    binutils-x86-64-linux-gnu-dbg gcc-*-x86-64-linux-gnu \
    g++-*-x86-64-linux-gnu cpp-*-x86-64-linux-gnu

# Installing cross-compilation tools (ARM64)
apt install -y binutils-aarch64-linux-gnu \
    binutils-aarch64-linux-gnu-dbg gcc-*-aarch64-linux-gnu \
    g++-*-aarch64-linux-gnu cpp-*-aarch64-linux-gnu

# Installing compilers for MinGW (Windows x64 target)
apt install -y mingw-w64 mingw-w64-tools mingw-w64-common \
    binutils-mingw-w64 binutils-mingw-w64-x86-64 \
    gcc-mingw-w64 gcc-mingw-w64-* g++-mingw-w64 g++-mingw-w64

# Installing ARM toolchains
apt install -y gcc-arm-none-eabi gdb-arm-none-eabi binutils-arm-none-eabi

# Installing Fortran compilers for cross-compilation
apt install -y gfortran-aarch64-linux-gnu gfortran-arm-linux-gnueabihf

# Installing LLVM toolchain
apt install -y llvm llvm-dev llvm-runtime clangd lld lldb \
    libclang-dev libllvm14 llvm-14 llvm-14-dev llvm-14-runtime

# Additional tools for building Linux kernels and modules
apt install -y libncurses5-dev libncursesw5-dev flex bison libssl-dev \
    libelf-dev dwarves bc git fakeroot libcap-dev \
    libc6-dev-i386 libc6-dev-x32 libnuma-dev libudev-dev libpci-dev \
    libiberty-dev libmnl-dev libbpf-dev

# Installing Java Development Kit (OpenJDK 11, 17, and 21)
apt install -y default-jdk openjdk-11-jdk openjdk-11-jre \
    openjdk-17-jdk openjdk-17-jre \
    openjdk-21-jdk openjdk-21-jre

# Installing Rust programming language and toolchain
apt install -y rustc cargo rust-doc rust-src rust-gdb rust-clippy rustfmt

# Instaling .NET SDKs and runtimes
apt install -y \
    dotnet-sdk-8.0 aspnetcore-runtime-8.0 dotnet-runtime-8.0 \
    dotnet-sdk-9.0 aspnetcore-runtime-9.0 dotnet-runtime-9.0

# Installing Android SDK command-line tools
apt install -y adb android-sdk-platform-tools android-sdk-build-tools \
    android-sdk-platform-tools-common fastboot

# Installing Go programming language
apt install -y golang golang-go golang-src

# Installing Node.js and npm
apt install -y nodejs npm yarn

# Install PHP and Composer
apt install -y php php-cli php-common php-mbstring php-xml php-curl \
    php-mysql php-zip php-bcmath php-gd php-soap composer php-intl \
    php-imagick php-dev php-pear php-psr-http-message php-psr-log \
    php-sqlite3

# Installing SQL tools
ACCEPT_EULA=Y apt install -y mysql-client postgresql-client mssql-tools*

#############################################
# Clean up packages
apt autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
