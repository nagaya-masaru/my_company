# 2026-05-27 セッションサマリ — summaries/playbooks ディレクトリ再編

## 議題
- 既存の `company/summaries/` と `company/playbooks/` をフラット構造から **事業部別サブディレクトリ構造** に再編したい

## 主な結論
- **構造軸**: 事業部別 dir (Recommended) を採用 — keiei / sales / marketing / branding / ma / product
- **命名規則**: `yyyymmdd_{topic-slug}.md` に短縮 (旧 `yyyymmdd_summary_{slug}.md` から `summary_` を削除)
- 既存ファイル 10件すべてを `git mv` で新パスに移動・改名 (git は rename として認識し履歴を保持)
- Stop フック `.claude/hooks/stop-summary-check.sh` を再帰 find に書き換え、雑談時のプレースホルダパスを `_trivial/${yyyymmdd}.md` に変更
- CLAUDE.md セクション4・5・7-2 を新構造に対応
- `summaries/README.md` / `playbooks/README.md` を全面書き換え
- クロス参照 (board-minutes / decisions / 各 playbook) の旧パス参照を一括 sed で新パスに更新

## 参加した事業部長エージェント
- なし (メインClaudeのみで実行 — 単純な構造変更のため部長召喚不要と判断)

## アクションアイテム
- [x] 事業部別 サブディレクトリ作成 (keiei/sales/marketing/branding/ma/product)
- [x] `git mv` で全10ファイルを移動・改名
- [x] Stop フックを新構造対応 (smoke test exit=0 確認済み)
- [x] CLAUDE.md セクション4・5・7-2 更新
- [x] summaries/README, playbooks/README 全面書き換え
- [x] クロス参照8ファイルの旧パスを sed で一括置換

## Decision Log項目
- 取締役会決議の有無: **なし** (内部運用ファイル整理のみ、軽微)
- `company/decisions/` への記録要否: **不要**
- 影響範囲: 内部運用のみ、外部公開なし、CLAUDE.md と Stop フックは整合性保持
