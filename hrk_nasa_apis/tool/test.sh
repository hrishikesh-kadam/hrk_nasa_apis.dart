#!/usr/bin/env bash

set -e -o pipefail

dart pub global activate coverage

# Looses --reporter=compact feature
# dart pub global run coverage:test_with_coverage

rm -rf coverage
dart test --coverage coverage
dart pub global run coverage:format_coverage \
  --in coverage/test/ \
  --out coverage/lcov.info \
  --report-on lib \
  --base-directory . \
  --lcov \
  --check-ignore

lcov --list coverage/lcov.info \
  | grep -v ".*|.*100%.*|.*"

./tool/coverage/check-coverage-ignored.sh
