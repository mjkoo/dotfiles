#! /usr/bin/env bash

set -euxo pipefail

if command -v wallust >/dev/null 2>&1; then
	mkdir -p ~/.cache/wallust
	wallust cs ~/.config/wal/colorschemes/cs.json
fi
