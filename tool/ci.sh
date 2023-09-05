#!/usr/bin/env bash

set -e -o pipefail

PACKAGES=(
  "hrk_nasa_apis"
  "hrk_nasa_apis_test"
)

for ((i=0; i < ${#PACKAGES[@]}; i++)); do
  pushd "${PACKAGES[i]}" &> /dev/null
  tool/ci.sh
  popd &> /dev/null
done

git diff --stat --exit-code
