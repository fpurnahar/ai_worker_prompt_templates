#!/usr/bin/env bash
set -euo pipefail

ROLE="${1:-}"

if [ -z "$ROLE" ]; then
  echo "Usage: ./.codex/use-role.sh ARCHITECT|UIUX|CODER|DEVOPS|REVIEWER|QUICKFIX|PROJECT"
  exit 1
fi

case "$ROLE" in
  ARCHITECT|UIUX|CODER|DEVOPS|REVIEWER|QUICKFIX|PROJECT)
    ;;
  *)
    echo "Unknown role/model combo: $ROLE"
    echo "Allowed: ARCHITECT UIUX CODER DEVOPS REVIEWER QUICKFIX PROJECT"
    exit 1
    ;;
esac

cat > .codex/config.toml <<CONFIG
model = "$ROLE"
model_provider = "9router"

approval_policy = "on-request"
sandbox_mode = "workspace-write"
model_reasoning_effort = "medium"

[windows]
sandbox = "unelevated"

[model_providers."9router"]
name = "9Router"
base_url = "http://127.0.0.1:20128/v1"
wire_api = "responses"
experimental_bearer_token = "NINE_ROUTER_API_KEY"
request_max_retries = 1
stream_max_retries = 1
stream_idle_timeout_ms = 300000
CONFIG

echo "✅ Codex model switched to: $ROLE"
echo "📄 Updated: .codex/config.toml"
