#!/usr/bin/env sh
set -eu

ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"

deployment_bucket_name="$(tflocal -chdir="$ROOT_DIR/terraform" output -raw deployment_bucket_name)"
http_listener_arn="$(tflocal -chdir="$ROOT_DIR/terraform" output -raw http_listener_arn)"

cat > "$ROOT_DIR/.env.network" <<EOF
SERVERLESS_DEPLOYMENT_BUCKET=$deployment_bucket_name
HTTP_LISTENER_ARN=$http_listener_arn
EOF

printf 'Wrote .env.network\n'
