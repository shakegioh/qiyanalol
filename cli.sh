#!/bin/bash

if [ "$1" = "install" ]; then
  ./tools/scripts/install.sh
elif [ "$1" = "doctor" ]; then
  ./tools/scripts/doctor.sh
elif [ "$1" = "run" ]; then
  ./tools/scripts/run.sh
elif [ "$1" = "dev" ]; then
  ./tools/scripts/dev.sh
elif [ "$1" = "stop" ]; then
  ./tools/scripts/stop.sh
elif [ "$1" = "backup" ]; then
  ./tools/scripts/backup.sh
elif [ "$1" = "backup-restore" ]; then
  ./tools/scripts/backup-restore.sh
elif [ "$1" = "dangerous-uninstall" ]; then
  ./tools/scripts/dangerous-uninstall.sh
elif [ "$1" = "crawler:run" ]; then
  bash -e 'cd tools/lol-crawler && yarn crawl'
elif [ "$1" = "docker-compose" ]; then
  docker-compose \
    --env-file .env \
    -f docker/wordpress/docker-compose.yml \
    -f docker/database/docker-compose.yml \
    ${@: 2}
else
  echo "Invalid command: '$1'"
fi
