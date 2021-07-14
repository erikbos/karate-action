#!/bin/bash

JAVA_OPTS='-Dkarate.config.dir=./config'

IFS=';'
mapfile -t lines < <(echo "$INPUT_TESTS" | grep -v "^$")
exit_code=0
for line in "${lines[@]}"; do
  read -r -a args <<< "$line"
  cmd="/opt/openjdk-13/bin/java $JAVA_OPTS -jar /karate.jar ${args[@]} $INPUT_OPTIONS"
  echo "- Running: $cmd"
  eval "$cmd" || exit_code=1
done

exit $exit_code