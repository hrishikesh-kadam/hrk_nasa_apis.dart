#!/usr/bin/env bash

set -e -o pipefail

dart pub upgrade

dart run build_runner build --delete-conflicting-outputs

# TODO(hrishikesh-kadam): Issue in mockito 5.4.5
# Check if the issue is resolved in the next versions
dart format \
  lib/src/dio/response.mocks.dart \
  lib/src/services/ssd_cneos/sbdb_cad_api/sbdb_cad_api.mocks.dart

dart format --output none --set-exit-if-changed .

dart analyze --fatal-infos

tool/test.sh

dart pub global activate pana
dart pub global run pana --no-warning

dart pub publish --dry-run
