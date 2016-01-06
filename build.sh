#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

for file in "**/Dockerfile"; do
  dir=$(dirname $file)
  title=$(dirname $file)

	docker build -t $title $dir
done
