# Architecture

Vanilla JS/WebGL UI → FastAPI → seeded SQLite analytics → deterministic router, grounded narration, decision client, STT/TTS and vision endpoints. Second Brain connects canonical row IDs and cited document passages. Developer execution uses a read-only database copy, Landlock filesystem restrictions, seccomp network/process restrictions and resource limits.

## Implemented endpoints inspected from source

| Method | Route | Source |
| --- | --- | --- |
| GET | `/health` | `atlas/tts_server.py` |
| GET | `/v1/models` | `atlas/tts_server.py` |
| POST | `/v1/audio/speech` | `atlas/tts_server.py` |
| GET | `/health` | `atlas/vision_server.py` |
| POST | `/detect` | `atlas/vision_server.py` |
| GET | `/` | `atlas/server.py` |
| GET | `/api/config` | `atlas/server.py` |
| GET | `/api/health` | `atlas/server.py` |
| GET | `/api/stages/{trace}` | `atlas/server.py` |
| POST | `/api/query` | `atlas/server.py` |
| GET | `/api/knowledge/{persona}` | `atlas/server.py` |
| POST | `/api/knowledge/initialize` | `atlas/server.py` |
| POST | `/api/knowledge/feed` | `atlas/server.py` |
| POST | `/api/developer/run` | `atlas/server.py` |
| GET | `/api/developer/connection` | `atlas/server.py` |
| GET | `/api/telemetry` | `atlas/server.py` |
| POST | `/api/transcribe` | `atlas/server.py` |
| POST | `/api/speech` | `atlas/server.py` |
| WEBSOCKET | `/api/listen` | `atlas/server.py` |
| POST | `/api/brief` | `atlas/server.py` |
| POST | `/api/metrics` | `atlas/server.py` |
| GET | `/api/source/{table}` | `atlas/server.py` |
| POST | `/api/detect` | `atlas/server.py` |
| GET | `/health` | `atlas/embed_server.py` |
| POST | `/embed` | `atlas/embed_server.py` |

These routes establish implementation shape. They do not establish successful provider integration or model quality. Generated state and data stores are excluded from the repository.
