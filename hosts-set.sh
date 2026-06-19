#!/usr/bin/env bash
set -euo pipefail

HOSTS_FILE="/etc/hosts"
MARKER="#MARATONA-BLOCKS"

if grep -q "^${MARKER}$" "$HOSTS_FILE"; then
  echo "Block already installed."
  exit 0
fi

cat >>"$HOSTS_FILE" <<'EOF'

#MARATONA-BLOCKS
127.0.0.1 api.github.com
127.0.0.1 api.githubcopilot.com
127.0.0.1 api.individual.githubcopilot.com
127.0.0.1 githubcopilot.com
127.0.0.1 copilot-proxy.githubusercontent.com
127.0.0.1 copilot-telemetry.githubusercontent.com
127.0.0.1 default.exp-tas.com
127.0.0.1 origin-tracker.githubusercontent.com
127.0.0.1 chatgpt.com www.chatgpt.com api.chatgpt.com
127.0.0.1 openai.com www.openai.com api.openai.com platform.openai.com beta.openai.com chat.openai.com
127.0.0.1 claude.ai www.claude.ai api.claude.ai
127.0.0.1 anthropic.com www.anthropic.com api.anthropic.com console.anthropic.com
127.0.0.1 perplexity.ai www.perplexity.ai api.perplexity.ai
127.0.0.1 poe.com www.poe.com api.poe.com
127.0.0.1 you.com www.you.com api.you.com
127.0.0.1 mistral.ai www.mistral.ai api.mistral.ai console.mistral.ai
EOF

echo "Hosts block installed."
