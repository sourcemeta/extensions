#!/bin/sh

set -o errexit
set -o nounset

ERRORS=""

error() {
  ERRORS="${ERRORS}ERROR: $1\n"
}

for spec in specs/*/*.markdown; do
  [ -f "$spec" ] || continue
  name=$(dirname "$spec" | xargs basename)
  version=$(basename "$spec" .markdown)

  schema_file="schemas/extension/${name}/${version}.json"
  [ -f "$schema_file" ] || error "Missing $schema_file for $spec"

  vocab_test="test/${name}/${version}.test.json"
  [ -f "$vocab_test" ] || error "Missing $vocab_test for $spec"
done

for schema in schemas/extension/*/*.json; do
  [ -f "$schema" ] || continue
  name=$(dirname "$schema" | xargs basename)
  version=$(basename "$schema" .json)
  spec_file="specs/${name}/${version}.markdown"
  [ -f "$spec_file" ] || error "Missing $spec_file for $schema"
done

for test_dir in test/*/*; do
  [ -d "$test_dir" ] || continue
  name=$(dirname "$test_dir" | xargs basename)
  version=$(basename "$test_dir")
  spec_file="specs/${name}/${version}.markdown"
  [ -f "$spec_file" ] || error "Missing $spec_file for tests in $test_dir"
done

if [ -n "$ERRORS" ]; then
  printf '%b' "$ERRORS"
  exit 1
fi
