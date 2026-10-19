# AGENTS.md

自分用の LLM API プロキシ。元は `../llm-webui`（Open WebUI）に同梱していた Bifrost を、他のクライアントからも使えるよう独立させたもの。

## 前提

- 利用者は自分 1 人、ローカルマシン上で動かす
- クライアント（Open WebUI など）は OpenAI 互換 API として接続する
- 推論 API は Virtual Key（`BIFROST_VK_MAIN`）必須。管理画面は認証なしのため、ポートは `127.0.0.1` にのみ公開する
- Bifrost のイメージは `latest` を使う。更新後に起動しなくなったら `config.json` のスキーマ変更を疑う
- 起動・停止は `../svs` で管理する。ホスト側のポートは svs の `services.toml` で上書きされうる
- コンテナ起動中は `data/bifrost/*.db` をホストの `sqlite3` で開かない。Docker Desktop のバインドマウント越しではロックが共有されず、読むだけでも DB が壊れる。中を見るときは停止してから
