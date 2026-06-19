#!/usr/bin/env bash
set -euo pipefail

HOSTS_FILE="/etc/hosts"
MARKER="#MARATONA-BLOCKS"

TMP="$(mktemp)"

sed "/^${MARKER}$/,\$d" "$HOSTS_FILE" > "$TMP"

cat "$TMP" > "$HOSTS_FILE"
rm -f "$TMP"

echo "Hosts block removed."

