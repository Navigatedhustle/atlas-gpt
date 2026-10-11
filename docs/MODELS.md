# Models, data and asset retrieval

Language: NVIDIA Nemotron 3.5 Lightning 30B-A3B; recognition: Nemotron 3.5 ASR; decision: Kev-4B / Qwen3.5-4B-Base; speech: active Kokoro fallback with Magpie alternative; vision: RF-DETR Nano; document embedding: NVIDIA Llama Nemotron embed. See `LICENSES.md`, `config/model-manifests/` and `docs/MODELS.md`. Existing MIT source license is preserved.

Runtime downloads and external account connections are not automatic. Review the upstream model card/license, acquire assets using its official instructions, pin repository revision and record SHA-256 before use. Large binary assets stay outside Git, including Git LFS. The local operator map records already-installed paths for recovery; those paths are not uploaded.

Atlas synthetic data: run its seed-42 generator. CampusCompass fixtures and Beat the Guard missions contain fictional records. Genesis creates a fresh simulated world. Other missing input datasets/media must be supplied only with confirmed rights and synthetic/approved contents.

License references: [Meta Llama 3.1](https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct/blob/main/LICENSE), [Ultralytics licensing](https://www.ultralytics.com/license), [llama.cpp](https://github.com/ggml-org/llama.cpp), and model manifests where supplied. Downloaded upstream model cards remain only in local recovery storage. Model terms are distinct from application source rights.
