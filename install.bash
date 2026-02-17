#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

cd $SCRIPT_DIR/home || exit
find . -type d -exec mkdir -p -v ~/{} \;
find . -type f -exec ln -f -v -s "$PWD"/{} ~/{} \;
