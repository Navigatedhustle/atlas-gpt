#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"
.venv/bin/python - <<'PY'
import os,signal,time
from pathlib import Path
root=Path.cwd()
for service in ['startup','ui','speech','brain','decisions','vision','tts','embed']:
 f=root/'runtime'/f'{service}.server.pid'
 if not f.exists():continue
 try:
  pid=int(f.read_text());p=Path(f'/proc/{pid}')
  record=root/'runtime'/f'{service}.server.json'
  import json
  owned=not record.exists() or json.loads(record.read_text())['start_ticks']==(p/'stat').read_text().split()[21]
  if owned and (p/'cwd').resolve()==root and (p/'stat').read_text().split()[2]!='Z':
   group=os.getpgid(pid)
   # Every service is detached into its own session. Refuse shared groups.
   if group==pid:os.killpg(group,signal.SIGTERM)
   else:os.kill(pid,signal.SIGTERM)
   for _ in range(30):
    if not p.exists() or (p/'stat').read_text().split()[2]=='Z':break
    time.sleep(.1)
   if p.exists() and (p/'stat').read_text().split()[2]!='Z':
    if group==pid:os.killpg(group,signal.SIGKILL)
    else:os.kill(pid,signal.SIGKILL)
 except (OSError,ValueError):pass
 f.unlink(missing_ok=True)
 (root/'runtime'/f'{service}.server.json').unlink(missing_ok=True)
print('Atlas stopped. Existing system services were left running.')
PY
