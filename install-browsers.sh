#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p /etc/firefox/policies
mkdir -p /etc/opt/chrome/policies/managed
mkdir -p /etc/chromium/policies/managed
mkdir -p /etc/chromium-browser/policies/managed

cp "$SCRIPT_DIR/firefox-policies.json" \
  /etc/firefox/policies/policies.json

cp "$SCRIPT_DIR/chrome-policies.json" \
  /etc/opt/chrome/policies/managed/contest-blocklist.json

cp "$SCRIPT_DIR/chrome-policies.json" \
  /etc/chromium/policies/managed/contest-blocklist.json

cp "$SCRIPT_DIR/chrome-policies.json" \
  /etc/chromium-browser/policies/managed/contest-blocklist.json

echo "Installed Firefox policy."
echo "Installed Chrome and Chromium policy."
