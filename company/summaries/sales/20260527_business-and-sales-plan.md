# 2026-05-27 セッションサマリ — CEO決裁2件確定 + 事業計画書/営業計画書 起草

## 議題
1. CEO決裁待ちだった2件の確定
   - 1億の定義
   - 長屋CEOのメディア露出スタンス
2. 朝までに事業計画書と営業計画書を作成

## 主な結論

### CEO決裁 (2026-05-27)
- **1億の定義 = 売上 (税引前トップライン)**
- **メディア露出 = 基本NGなし** (顔出し・実名・取材・登壇すべて可)
- 含意: オピニオンリーダー化を全面採用。Bezos の Working Backwards プレスリリース / Jobs のキーノート登壇 / Kotler のオウンドメディア / Threads・X・LinkedIn 実名発信をすべて解禁

### 作成完了したドキュメント
- `company/playbooks/keiei/2026-business-plan.md` — 事業計画書 (342行)
  - Executive Summary / 市場分析 (TAM/SAM/SOM) / STP / オファー詳細 (A/B) / 製品ロードマップ / メディア戦略 / 財務P&L / KPI / リスク管理 / 検証マイルストーン
  - **6ヶ月着地予想: 売上 1.2億 (バッファ込み)、営業利益 約1億**
- `company/playbooks/sales/2026-sales-plan.md` — 営業計画書 (390行)
  - ICP / パイプライン設計 / 7段階スクリプト / 反論処理TOP20 / Belfort 9トーン / KPIダッシュボード / 値引きルール / 契約フロー / インセンティブ設計 / 組織ロードマップ
  - **必要MQL: 月150件、CVR目標 MQL→SQL 30% / SQL→契約 25%**

### 更新したドキュメント
- `company/north-star.md` — 1億定義を「売上」に確定、メディア露出スタンス追記
- `company/decisions/0002-first-offering.md` — CEO決裁マターを確定済みに
- `company/board-minutes/2026-05-27-first-offering-decision.md` — 同上
- `company/summaries/product/20260527_first-offering-decision.md` — CEOアクションアイテム2件をチェック済みに

### メモリ更新
- `project_north_star.md` 更新 (確定事項セクション追加)
- `project_first_offering.md` 新規作成 (オファー構成 + CEO決裁 2件)
- `MEMORY.md` インデックス更新

## 参加した事業部長エージェント
※ Agent ツール worktree isolation 問題により全て **メインClaudeによる代理出力 (persona読込み内面化)** で実施
- [[sales-belfort]] — 営業計画書全体の起草視点
- [[finance-buffett]] — 財務P&L、値引き規律、キャッシュフロー
- [[marketing-kotler]] — STP、ICP、KPIフレーム、5A
- [[branding-jobs]] — メッセージング、Tagline案、メディア戦略
- [[ceo-secretary-shidara]] — オペレーションフロー、CEOガバナンス
- [[legal-kujou]] [[legal-komikado]] — 契約フロー、必須条項、NGなオファー
- [[dev-torvalds]] [[ai-altman]] — 製品ロードマップ
- [[healthcare-attia]] — CEO過労リスク管理
- [[knowledge-dalio]] — KPIダッシュボード設計
- [[board-directors]] — 既決の取締役会決議を所与として参照

## アクションアイテム

### CEO (長屋優) — 期限 2026-05-28 朝
- [ ] 事業計画書のレビュー・承認 (`company/playbooks/keiei/2026-business-plan.md`)
- [ ] 営業計画書のレビュー・承認 (`company/playbooks/sales/2026-sales-plan.md`)
- [ ] SNS実名再起動 (Threads/X/LinkedIn)
- [ ] 1日の営業時間ブロック確保 (10:00-13:00)
- [ ] 既存0plus顧客リスト Belfortへ共有
- [ ] 法人格の意思決定 — 期限 2026-05-30
- [ ] Tagline 3案からの最終選定 — 期限 2026-05-29

### 各部署 (期限詳細は営業計画書 §13 参照)
- Belfort: 7段階スクリプト全文 (2026-05-29)、ICP100社 (2026-05-30)、初日テレアポ10件 (2026-05-30)
- Kotler: MQLチャネル配分 (2026-05-29)、SNSカレンダー30本 (2026-05-30)
- Jobs: Tagline最終決定 (2026-05-29)、LP本文 (2026-06-01)、NGワードリスト (2026-05-29)
- 法務: 標準契約書 (2026-06-01)、言い換えリスト (2026-05-30)、利用規約 (2026-06-05)
- Buffett: Stripe検証 (2026-06-20)、LTV/CACシート (2026-06-01)
- 開発: LP公開 (2026-05-30)、顧客ダッシュボードMVP (2026-06-24)

## Decision Log項目
- 取締役会決議の有無: **なし** (CEO直接決裁案件)
- `company/decisions/` への新規記録: **不要** (既存 0002 にCEO決裁マター確定として追記済み)
- 中間検証日: **2026-07-27** (MQL 50件・契約 10社の中間チェック)
- 最終検証日: **2026-11-30** (1億着地確認)

## 留意事項
- 両計画書は v1.0 ドラフト。CEO承認後、各部署エージェントが自部の章を肉付け/修正する想定 (Phase 2)
- worktree isolation 問題が継続。次セッション (Claude Code 再起動後) に Agent ツールでサブエージェント並列召喚が回復するか再検証する
