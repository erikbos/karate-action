#!/bin/bash

echo "- Karate testing"

IFS=';'
mapfile -t lines < <(echo "$INPUT_TESTS" | grep -v "^$")

exit_code=0
for line in "${lines[@]}"; do
  read -r -a args <<< "$line"
  cmd="/opa test ${args[@]} $INPUT_OPTIONS"
  echo " - Running: $cmd"
  printf "\n"
  eval "$cmd" || exit_code=1
  printf "\n\n"
done

exit $exit_code