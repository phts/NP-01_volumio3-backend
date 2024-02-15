#/usr/bin/env bash
set -e

HOST=volumio-dev
REMOTE=dev
CURRENT_COMMIT=$(git rev-parse HEAD)

ssh "${HOST}" <<EOF
  cd /volumio
  git fetch ${REMOTE}
  git checkout ${CURRENT_COMMIT}
EOF

for arg in "$@"; do
  if [ "$arg" == "--restart" ]; then
    ssh ${HOST} 'sudo systemctl restart volumio'
    echo "Restarting..."
  fi
done
