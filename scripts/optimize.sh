#!/usr/bin/env bash
set -euo pipefail
FILENAME="${1:-}"
DESTINATION="${2:-}"
if test "$FILENAME" = "" || test "$DESTINATION" = ""; then
    echo "two argument (a source and destination filename) are required"
    exit 1
fi

if echo "$FILENAME" | grep -qe ".html$"; then
    node scripts/render-elm.js "$FILENAME" "$DESTINATION"
elif echo "$FILENAME" | grep -qe ".json$"; then
    python -c "import json, sys; json.dump(json.load(sys.stdin), sys.stdout)" < "$FILENAME" > "$DESTINATION"
else
    cp "$FILENAME" "$DESTINATION"
fi
