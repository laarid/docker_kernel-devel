#!/bin/sh

# set -x
SUITES="sid"

for f in $(find ${SUITES} -type f -name Dockerfile); do
  [ -n "$(head -n 1 $f | grep '^#.*GENERATED ')" ] || continue;

  suite=$(echo "$f" | cut -d/ -f1)
  arch=$(echo "$f" | cut -d/ -f2)
  cat Dockerfile.template | \
    sed -e "s,@SUITE@,${suite},g" \
      -e "s,@ARCH@,${arch},g" > "$f"
done
