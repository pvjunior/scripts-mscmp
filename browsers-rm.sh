#!/usr/bin/env bash
set -euo pipefail

rm -f /etc/firefox/policies/policies.json
rm -f /etc/opt/chrome/policies/managed/contest-blocklist.json
rm -f /etc/chromium/policies/managed/contest-blocklist.json
rm -f /etc/chromium-browser/policies/managed/contest-blocklist.json

echo "Removed Firefox policy."
echo "Removed Chrome policy."
echo "Removed Chromium policy"
