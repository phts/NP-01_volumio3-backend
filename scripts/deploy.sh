#/usr/bin/env bash
set -e

CURRENT_COMMIT=$(git rev-parse HEAD)

ssh volumio <<EOF
  cd /volumio
  git fetch np-01
  git checkout ${CURRENT_COMMIT}
EOF
