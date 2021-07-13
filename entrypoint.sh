#!/bin/bash

echo "- Karate testing\n"

IFS=';'
mapfile -t lines < <(echo "$INPUT_TESTS" | grep -v "^$")

JAVA_OPTS='-Dkarate.config.dir=./config'

exit_code=0
for line in "${lines[@]}"; do
  read -r -a args <<< "$line"
  cmd="/opt/openjdk-13/bin/java $JAVA_OPTS -jar /karate.jar ${args[@]} $INPUT_OPTIONS"
  echo "- Running: $cmd\n"
  eval "$cmd" || exit_code=1
  echo "\n\n"
done

exit $exit_code