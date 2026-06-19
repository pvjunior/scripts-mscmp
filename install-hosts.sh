#!/usr/bin/env bash
set -euo pipefail

HOSTS_FILE="/etc/hosts"
MARKER="#MARATONA-BLOCKS"

if grep -q "^${MARKER}$" "$HOSTS_FILE"; then
    echo "Block already installed."
    exit 0
fi

cat >> "$HOSTS_FILE" <<'EOF'

#MARATONA-BLOCKS
127.0.0.1 api.github.com
127.0.0.1 api.githubcopilot.com
127.0.0.1 api.individual.githubcopilot.com
127.0.0.1 githubcopilot.com
127.0.0.1 copilot-proxy.githubusercontent.com
127.0.0.1 copilot-telemetry.githubusercontent.com
127.0.0.1 default.exp-tas.com
127.0.0.1 origin-tracker.githubusercontent.com
EOF

echo "Hosts block installed."
