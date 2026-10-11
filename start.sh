#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"
mkdir -p logs runtime artifacts
if [ ! -x .venv/bin/python ]; then echo 'Local environment missing. See MORNING.md.'; exit 1; fi
if [ ! -f data/atlas.sqlite ]; then .venv/bin/python -m atlas.data.generate --seed 42; fi
.venv/bin/python scripts/services.py launch
for ((i=0;i<120;i++)); do
  if curl --silent --fail http://127.0.0.1:8200/api/health >/dev/null; then
    echo 'Atlas ready: http://localhost:8200'; exit 0
  fi
  sleep 0.25
done
echo 'Atlas did not start. Read logs/ui.log'; exit 1
