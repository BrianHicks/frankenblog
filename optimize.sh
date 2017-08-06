#!/usr/bin/env bash
set -euo pipefail
FILENAME="${1:-}"
if test "$FILENAME" = ""; then
    echo "one argument (a source filename) is required"
    exit 1
fi

if echo "$FILENAME" | grep -qe ".html$"; then
    ./node_modules/.bin/phantomjs scrape.js "$FILENAME"
elif echo "$FILENAME" | grep -qe ".json$"; then
    python -c "import json, sys; json.dump(json.load(sys.stdin), sys.stdout)" < "$FILENAME"
else
    cat "$FILENAME"
fi
