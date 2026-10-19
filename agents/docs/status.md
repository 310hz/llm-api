# Status

## 現状

- Bifrost v2.2.4 を単体で起動する構成のみ。設定は `../llm-webui` からそのまま移植
- プロバイダは OpenRouter と PLaMo（OpenAI 互換のカスタムプロバイダ）

## 未完了

- `../llm-webui` 側の Bifrost を削除し、Open WebUI の接続先を `http://host.docker.internal:50012/v1` に切り替える
- `../llm-webui/data/bifrost`（設定 DB・ログ DB）の移行要否は未決定
