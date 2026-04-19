#!/usr/bin/env bash

set -euo pipefail

expected_line="테스트"

if ! grep -Fxq "$expected_line" app.txt; then
  echo "Expected line not found in app.txt: $expected_line" >&2
  exit 1
fi

echo "app.txt contains the expected test line."
