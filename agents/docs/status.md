# Status

## 現状

- Bifrost を単体で起動する構成のみ。`data/bifrost/` は `../llm-webui` から移したもの
- プロバイダは OpenRouter、PLaMo、Sakana AI、Sarashina、OpenCode Zen。PLaMo / Sakana / Sarashina は OpenAI 互換のカスタムプロバイダ
- `../llm-webui` の Open WebUI は `http://host.docker.internal:50012/v1` 経由でこの API を使う

## 未解決

- `mem_limit: 128m` では起動直後に OOM で落ちることがある（exit 137）
- Sarashina は API ドキュメントにないリクエストパラメータ（`max_tokens`、`stream_options` など）を 400 で拒否する。Bifrost 経由で通るかは未確認
