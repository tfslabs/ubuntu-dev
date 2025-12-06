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

> (Large list in the original script; this table highlights key runtime & dev libraries.)

| Tool / library | Friendly name | Package name | Notes |
|---|---|---|---|
| libc6, libc6-dev | GNU C Library | `libc6`, `libc6-dev` | Core C runtime and headers |
| libssl3t64, libssl-dev | OpenSSL libraries | `libssl3t64`, `libssl-dev` | TLS / crypto libraries and headers |
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
| mercurial | Mercurial | `mercurial` | DVCS alternative |
| subversion | Subversion | `subversion` | Centralized VCS |

## 8. File & media processing

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| ffmpeg | FFmpeg | `ffmpeg` | Audio/video processing |
| imagemagick | ImageMagick | `imagemagick` | Image manipulation CLI |
| mediainfo | MediaInfo | `mediainfo` | Media file metadata extractor |
| fonts-noto-color-emoji | Noto emoji | `fonts-noto-color-emoji` | Emoji font support |
| libwmf-bin | WMF tools | `libwmf-bin` | Convert Windows Metafile formats |

## 9. Scripting, tooling & QA

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| shellcheck | ShellCheck | `shellcheck` | Shell script linter |
| parallel | GNU Parallel | `parallel` | Run jobs in parallel |
| sudo | sudo | `sudo` | Privilege escalation utility |

## 10. Databases & search

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| sqlite3 | SQLite CLI | `sqlite3` | Embedded SQL database CLI |
| sphinxsearch | Sphinx Search | `sphinxsearch` | Full-text search engine |

## 11. Font configuration

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| fontconfig-config | Fontconfig config | `fontconfig-config` | Fontconfig system files |
| fonts-dejavu-core | DejaVu fonts | `fonts-dejavu-core` | Common TTF fonts |

## 12. Compilers & toolchains (GNU, LLVM, cross)

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| gcc / g++ | GNU C/C++ compilers | `gcc`, `g++` | Standard system compilers |
| gdb / gdbserver / gdb-multiarch | GNU Debugger | `gdb`, `gdbserver`, `gdb-multiarch` | Debugging tools |
| clang / clang-format / clang-tidy | Clang toolchain | `clang`, `clang-format`, `clang-tidy` | LLVM C/C++ toolchain |
| lld / lldb | LLVM linker & debugger | `lld`, `lldb` | LLVM tooling |
| cmake / ninja-build | Build systems | `cmake`, `ninja-build` | Build orchestration |
| build-essential | Build meta-package | `build-essential` | Includes make, gcc, g++ |
| binutils-x86-64-linux-gnu | Binutils x86_64 | `binutils-x86-64-linux-gnu` | Cross linker for AMD64 |
| mingw-w64 | MinGW-w64 cross compilers | `mingw-w64`, `gcc-mingw-w64` | Windows cross compilation |
| gcc-arm-none-eabi | ARM bare-metal cross compiler | `gcc-arm-none-eabi` | Cortex-M toolchain |
| binutils-arm-none-eabi | ARM binutils | `binutils-arm-none-eabi` | ARM assembler/linker |
| llvm-14 / libclang-dev | LLVM 14 dev | `llvm-14`, `libclang-dev`, `llvm-14-dev` | Specific LLVM 14 packages installed |

## 13. Kernel build & low-level development

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| libncurses5-dev / libncursesw5-dev | ncurses dev | `libncurses5-dev`, `libncursesw5-dev` | Required to build kernel menuconfig |
| libelf-dev | libelf dev | `libelf-dev` | ELF utilities / headers |
| bc | bc | `bc` | Calculator used in kernel builds |
| dwarves | dwarves | `dwarves` | Kernel symbol tools (e.g., pahole) |
| libbpf-dev | libbpf dev | `libbpf-dev` | eBPF helper library headers |

## 14. Java & JVM ecosystem

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| default-jdk | Default JDK | `default-jdk` | System default JDK (usually latest stable) |
| openjdk-11-jdk / 17 / 21 | OpenJDK versions | `openjdk-11-jdk`, `openjdk-17-jdk`, `openjdk-21-jdk` | Multiple JDK versions installed |

## 15. .NET SDKs & runtimes

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| dotnet-sdk-8.0 / 9.0 | .NET SDK | `dotnet-sdk-8.0`, `dotnet-sdk-9.0` | SDKs for .NET 8 and 9 |
| aspnetcore-runtime-8.0 | ASP.NET Core runtime | `aspnetcore-runtime-8.0` | Runtime for ASP.NET Core apps |
| dotnet-runtime-8.0 / 9.0 | .NET runtime | `dotnet-runtime-8.0`, `dotnet-runtime-9.0` | Runtimes for .NET apps |

## 16. Rust toolchain

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| rustc / cargo | Rust compiler & package manager | `rustc`, `cargo` | Rust language toolchain |
| rust-doc / rust-src | Rust docs & sources | `rust-doc`, `rust-src` | Documentation and sources |
| rust-gdb / rust-clippy / rustfmt | Rust tooling | `rust-gdb`, `rust-clippy`, `rustfmt` | Debugger helpers, lints, formatter |

## 17. Android SDK / platform tools

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| adb / fastboot | ADB & Fastboot | `adb`, `fastboot` | Android device tools |
| android-sdk-platform-tools / android-sdk-build-tools | Android SDK CLI | `android-sdk-platform-tools`, `android-sdk-build-tools` | Command-line SDK components |

## 18. Go

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| golang / golang-go | Go language | `golang`, `golang-go` | Go compiler and tooling |

## 19. Node.js / npm / yarn

| Tool | Friendly name | Package name | Notes |
|---|---|---|---|
| nodejs | Node.js | `nodejs` | JavaScript runtime |
| npm | npm | `npm` | Node package manager |
| yarn | Yarn | `yarn` | Alternative JS package manager |

## 20. Ruby on Rails

| Package | Friendly Name | Package Name | Notes |
|---|---|---|---|
| Ruby | Ruby Full Package | `ruby-full` | Ruby Programming Language |

## 21. Conda & Python ecosystem

> Installed by `conda.sh` (Miniconda installer + conda-forge channel).

| Tool / package | Friendly name | Package name | Notes |
|---|---|---|---|
| Miniconda | Miniconda installer | (installed to `/usr/local`) | Miniconda3 (latest for detected arch) |
| python | Python | `python=3` | Conda-managed Python installation |
| pip / setuptools / wheel | Python packaging | `pip`, `setuptools`, `wheel` | Packaging tools |
| numpy | NumPy | `numpy` | Numeric arrays library |
| pandas | Pandas | `pandas` | Data analysis library |
| scikit-learn | scikit-learn | `scikit-learn` | ML library |
| matplotlib | Matplotlib | `matplotlib` | Plotting library |
| scipy | SciPy | `scipy` | Scientific computing |
| hdf5 | HDF5 | `hdf5` | Hierarchical data format support |
| pyyaml / yaml | YAML | `pyyaml`, `yaml` | YAML parsing |
| requests | Requests | `requests` | HTTP client for Python |
| beautifulsoup4 | Beautiful Soup | `beautifulsoup4` | HTML parsing |
| R Programming Language | R | `r-base` | R Programming Language |
| Julia Programming Language | Julia | `julia` | Not available on ARM64v8 |
| Qiskit | Qiskit | `qiskit` | Qiskit for Quantum Computers |
