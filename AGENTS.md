# AGENTS.md

自分用の LLM API プロキシ。元は `../llm-webui`（Open WebUI）に同梱していた Bifrost を、他のクライアントからも使えるよう独立させたもの。

## 前提

- 利用者は自分 1 人、ローカルマシン上で動かす
- クライアント（Open WebUI など）は OpenAI 互換 API として接続する
- 推論 API は Virtual Key（`BIFROST_VK_MAIN`）必須。管理画面は認証なしのため、ポートは `127.0.0.1` にのみ公開する
- Bifrost のイメージタグは固定する。上げるときは `config.json` のスキーマ変更を確認する
- 起動・停止は `../svs` で管理する。ホスト側のポートは svs の `services.toml` で上書きされうる
