# my-llm-api

自分用の LLM API プロキシ。[Bifrost](https://github.com/maximhq/bifrost) で各プロバイダを OpenAI 互換 API に集約する。

## 使い方

1. `.env.example` を `.env` にコピーして API キーを設定する
2. `config.json` の `providers` に利用したいモデルを記載する
3. `svs up my-llm-api` で起動する（[svs](https://github.com/310hz/svs) で管理）。単体で動かすときは下の `just` を使う

| コマンド | 内容 |
| --- | --- |
| `just start` | 起動 |
| `just stop` | 停止 |
| `just restart` | 再起動 |
| `just update` | イメージを pull して再起動 |
| `just logs` | ログ表示 |

## エンドポイント

- 管理画面: http://localhost:50012
- OpenAI 互換 API: `http://localhost:50012/v1`（`Authorization: Bearer <BIFROST_VK_MAIN>`）
- Docker コンテナから使う場合: `http://host.docker.internal:50012/v1`
