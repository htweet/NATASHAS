#!/bin/bash
# NATASHAS — Local preview server
# Usage: bash serve.sh
# Opens: http://localhost:8877

PORT=${1:-8877}
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "NATASHAS preview server"
echo "  Directory : $DIR"
echo "  Port      : $PORT"
echo "  URL       : http://localhost:$PORT"
echo ""
echo "  natashas-character-lab.html  → http://localhost:$PORT/natashas-character-lab.html"
echo "  natashas-dayinlife.html      → http://localhost:$PORT/natashas-dayinlife.html"
echo ""
echo "Press Ctrl+C to stop."
cd "$DIR" && python3 -m http.server "$PORT" --bind 0.0.0.0
