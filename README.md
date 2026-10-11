# Atlas GPT

A local voice assistant for synthetic enterprise and university analytics, with grounded numeric answers, exact-row knowledge provenance, and a constrained developer sandbox.

**Maturity:** Demo implementation. 24 unit/security/grounding tests pass. Synthetic datasets regenerate from seed 42. Physical audio, camera entry, cold model restart and live model golden routes were not rerun during preparation.

## How it works

Vanilla JS/WebGL UI → FastAPI → seeded SQLite analytics → deterministic router, grounded narration, decision client, STT/TTS and vision endpoints. Second Brain connects canonical row IDs and cited document passages. Developer execution uses a read-only database copy, Landlock filesystem restrictions, seccomp network/process restrictions and resource limits.

## Getting started

Read [installation, configuration and shutdown](docs/OPERATIONS.md) and [model/data retrieval](docs/MODELS.md). Review [dependency evidence](docs/DEPENDENCIES.md) before choosing an environment. The safe review launcher uses loopback and does not install services or load models.

## Security and data

Read [security and safe updates](SECURITY.md) and [ownership/license status](docs/LICENSE-STATUS.md). Runtime originals are preserved separately. This is a sanitized source snapshot with new history: no account state, business records, model weights, unknown media assets or original logs/history are distributed. Third-party notices included in this copy remain applicable.

## Verification

See [verification evidence and limitations](docs/VERIFICATION.md). Tests distinguish synthetic/mocked workflows from live integrations. Original demo screenshots and document recordings are excluded; use the synthetic workflow in the operations guide for your own reviewed demonstration.

## Roadmap

Turn recorded vendor/model receipts into a fully automated installer; validate physical audio/camera and disconnection on dedicated hardware; add structured API error/status tests across unavailable model services.

For route/source details see [architecture](docs/ARCHITECTURE.md).
