# Status

## 現状

- Bifrost v2.2.4 を単体で起動する構成のみ。`data/bifrost/` は `../llm-webui` から移したもの
- プロバイダは OpenRouter のみ
- `../llm-webui` の Open WebUI は `http://host.docker.internal:50012/v1` 経由でこの API を使う

## 未解決

- `mem_limit: 128m` に対して使用量が 120MiB 前後で余裕がない
