#!/usr/bin/env bash
set -e

echo "Deploy alive: starting"
BASE_DIR="/srv/punk-records/hosting/songbook-sheet"
cd "$BASE_DIR"

echo "Files in site/:"
ls -la site/

echo "Reloading Caddy"
cd /srv/punk-records/infra
docker compose exec caddy caddy reload --config /etc/caddy/Caddyfile

echo "Deploy alive: finished successfully"
