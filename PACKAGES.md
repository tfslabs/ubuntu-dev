# Package supported

## 1. Core utilities

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| coreutils | GNU core utilities | `coreutils` | Basic file, shell and text manipulation utilities |
| curl | curl (download tool) | `curl` | CLI download tool used by scripts |
| jq | JSON processor | `jq` | JSON parsing CLI |
| time | time | `time` | Measure execution time |
| locales, tzdata | Locale & timezone data | `locales`, `tzdata` | System locale/timezone configuration |

## 2. Compression & archiving

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| p7zip-full / p7zip-rar | 7zip (full) | `p7zip-full`, `p7zip-rar` | 7z compression and rar support |
| 7zip-standalone | 7zip standalone | `7zip-standalone` | Additional 7zip binary package |
| bzip2 | bzip2 | `bzip2` | Compression utility |
| lz4 | LZ4 | `lz4` | Fast compression algorithm |
| unzip | unzip | `unzip` | Extract ZIP files |
| zip | zip | `zip` | Create ZIP files |
| zstd | Zstandard | `zstd` | Modern compression algorithm |
| xz-utils | XZ / LZMA utilities | `xz-utils` | xz compression tools |
| upx | UPX (executable packer) | `upx` | Pack/unpack executables |
| xorriso | ISO manipulation | `xorriso` | Create and modify ISO images |

## 3. Development tools & build dependencies

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| build-essential | Build essentials (gcc, make, etc.) | `build-essential` | Meta package (gcc, g++, make) |
| autoconf / automake / libtool | Autotools | `autoconf`, `automake`, `libtool` | GNU autotools for building C/C++ projects |
| make | make | `make` | Build automation tool |
| cmake / ninja-build | CMake & Ninja | `cmake`, `ninja-build` | Modern build systems |
| pkg-config | pkg-config | `pkg-config` | Library discovery for build scripts |
| swig | SWIG | `swig` | Interface generator for scripting languages |
| m4 | M4 macro processor | `m4` | Required by autotools |
| binutils | Binutils | `binutils` | Linker/assembler toolchain |
| ccache | ccache | `ccache` | Compiler cache |

## 4. Libraries & development headers (selected)

> Updated to reflect both `apt.sh` and `apt_mini.sh`.

| Tool / library | Friendly name | Package name | Notes |
|---|---|---|---|
| libc6, libc6-dev | GNU C Library | `libc6`, `libc6-dev` | Core C runtime and headers |
| libssl3, libssl-dev | OpenSSL libraries | `libssl3`, `libssl-dev` | TLS / crypto libraries and headers |
| libcurl4 | libcurl | `libcurl4` | HTTP client library |
| libpng16-16 | libpng | `libpng16-16` | PNG image support |
| libxml2 | libxml2 | `libxml2` | XML parsing library |
| libfreetype6 | FreeType | `libfreetype6` | Font rasterization |
| libwebp7 | WebP codec | `libwebp7` | WebP image support |
| libgmp-dev | GMP (bignum) | `libgmp-dev` | Multiprecision arithmetic headers |
| libmpfr-dev / libmpc-dev | MPFR / MPC | `libmpfr-dev`, `libmpc-dev` | Floating-point arithmetic libraries |
| zlib1g | zlib | `zlib1g` | Compression library |
| libuv1 | libuv | `libuv1` | Asynchronous I/O library |

## 5. Networking, SSH & network tools

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| iproute2 | iproute2 | `iproute2` | Advanced IP routing utilities |
| iputils-ping | ping | `iputils-ping` | ICMP ping utility |
| dnsutils | DNS tools | `dnsutils` | dig, nslookup, etc. |
| net-tools | legacy networking | `net-tools` | ifconfig, netstat (legacy) |
| netcat-openbsd | netcat | `netcat-openbsd` | TCP/UDP debugging tool |
| openssh-client | OpenSSH client | `openssh-client`, `ssh` | SSH client |
| rsync | rsync | `rsync` | File sync/transfer utility |
| sshpass | sshpass | `sshpass` | Non-interactive SSH password supply (use cautiously) |
| ftp | ftp client | `ftp` | Classic FTP client |

## 6. Security & crypto

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| gnupg2 | GnuPG | `gnupg2` | OpenPGP implementation |
| haveged | haveged | `haveged` | Entropy daemon for RNG |
| libnss3-tools | NSS tools | `libnss3-tools` | NSS crypto utilities |
| pass | pass (password manager) | `pass` | Simple password manager |
| openssl | OpenSSL CLI | `openssl` | Command-line crypto toolkit |

## 7. Version control & SCM

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| git | Git | `git` | Distributed version control |

## 8. File & media processing

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| ffmpeg | FFmpeg | `ffmpeg` | Audio/video processing |

## 9. Additional tools for mini containers

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| sqlite3 | SQLite | `sqlite3` | Lightweight database |
| sphinxsearch | SphinxSearch | `sphinxsearch` | Full-text search engine |
| nodejs, npm, yarn | Node.js & npm | `nodejs`, `npm`, `yarn` | JavaScript runtime and package manager |
| dotnet-sdk | .NET SDK | `dotnet-sdk-{8.0,10.0}` | .NET development tools |
| openjdk | OpenJDK | `openjdk-{11,17,21,25}-jdk` | Java development kit |

> This table reflects the minimal set of tools for lightweight containers.

## 10. Conda & Python ecosystem

> Installed by `conda.sh` (Miniconda installer + conda-forge channel).

| Tool / package | Friendly name | Package name | Notes |
|---|---|---|---|
| Miniconda | Miniconda installer | (installed to `/usr/local`) | Miniconda3 (latest for detected arch) |
| python | Python | `python=3` | Conda-managed Python installation |
| pip / setuptools / wheel | Python packaging | `pip`, `setuptools`, `wheel` | Packaging tools |
| numpy | NumPy | `numpy` | Not available on Mini Dev Containers |
| pandas | Pandas | `pandas` | Not available on Mini Dev Containers |
| scikit-learn | scikit-learn | `scikit-learn` | Not available on Mini Dev Containers |
| matplotlib | Matplotlib | `matplotlib` | Not available on Mini Dev Containers |
| scipy | SciPy | `scipy` | Not available on Mini Dev Containers |
| hdf5 | HDF5 | `hdf5` | Not available on Mini Dev Containers |
| pyyaml / yaml | YAML | `pyyaml`, `yaml` | Not available on Mini Dev Containers |
| requests | Requests | `requests` | Not available on Mini Dev Containers |
| beautifulsoup4 | Beautiful Soup | `beautifulsoup4` | Not available on Mini Dev Containers |
| R Programming Language | R | `r-base` | Not available on Mini Dev Containers |
| Julia Programming Language | Julia | `julia` | Not available on ARM64v8, Not available on Mini Dev Containers |
| Qiskit | Qiskit | `qiskit` | Not available on Mini Dev Containers |
