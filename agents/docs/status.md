# Status

## 現状

- Bifrost v2.2.4 を単体で起動する構成のみ。`data/bifrost/` は `../llm-webui` から移したもの
- プロバイダは OpenRouter と PLaMo（OpenAI 互換のカスタムプロバイダ）
- `../llm-webui` の Open WebUI は `http://host.docker.internal:50012/v1` 経由でこの API を使う

## 未解決

- `config.json` のモデル一覧と `data/bifrost/config.db`（管理画面で編集された実際の設定）がずれている。どちらを正とするか未決定
- `mem_limit: 128m` に対して使用量が 120MiB 前後で余裕がない
