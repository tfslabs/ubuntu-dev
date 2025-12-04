#/bin/sh

set -euo pipefail

cd "$(cd "$(dirname "$0")" && pwd)"

for arch in amd64 arm64/v8; do
    docker build --platform "linux/$arch" -f ./build_noble -t "theflightsims/ubuntu-dev:noble" .
done