# 2026-05-27 セッションサマリ — 1億達成オファー決議と全部署落とし込み

## 議題
- 残り218日で1億円を作るオファーを取締役会で決議
- 採択オファーを営業・マーケ・広報・デザイン・開発で同時に落とし込む
- 各部の即実行プランを策定

## 主な結論
- 決まったこと:
  - **メインオファー**: 「Claude 経営参謀」(月30/50/100万、中堅企業オーナー向け SaaS型コンサル)
  - **サブオファー**: 「AI×DX 4週間スプリント」(300-500万/件、受託)
  - **6ヶ月目標**: A 7,000万 + B 4,000万 = 計 **1.1億**
  - **取締役会投票**: A 4票 / B 1票(Musk) / 段階派 2票(Gates/Huang) → A主軸+B並走で確定
  - 各事業部の即実行プラン (営業スクリプト / マーケKPI / メッセージング / LP仕様 / システム実装) を策定
  - 議事録・Decision Log・本サマリを保存
- 決まらなかったこと/保留:
  - **1億の定義** (売上 / 営業利益 / 税引後) — CEO決裁待ち
  - **長屋CEOのメディア露出スタンス** — CEO決裁待ち
  - 法人格 (新設 / 既存活用)
  - ヘルスケア・コンテンツ・M&A は今期休眠、Q1 2027 再検討

## 参加した事業部長エージェント
- `board-directors` (7名: Musk/Gates/Page/Zuckerberg/Bezos/Huang/孫) — 取締役会決議
- `sales-belfort` — Straight Line営業設計、7段階スクリプト
- `marketing-kotler` — STP/5A/チャネルMix/A/Bテスト計画
- `branding-jobs` — Tagline 3案、メッセージング階層、NOリスト
- `design-ive` — LP コンセプト、デザイン原則
- `dev-torvalds` / `dev-ritchie` — システム実装方針、4週間MVP

## 追加決議: Claude Code ハーネス仕様 (CEO決裁)

AI部 (Hinton/Altman) がCEOに4問質問し、以下の方針を確定:

| 軸 | 採択 |
|----|------|
| 自律性 | **最大自律** (Altman推奨) — skipDangerousModePermissionPrompt 維持、破壊的操作と外部送信のみCEO確認 |
| Stopフック | **全自動サマリ保存** — `.claude/hooks/stop-summary-check.sh` で本日サマリ未保存ならブロック |
| Bash許可 | **読み取り系allowlist** — ls/pwd/git*/grep/rg/find/mkdir/test/stat/wc/tree/file/which/date/jq/head/tail |
| コスト | **月次上限のみ** — Buffettの月次バーン200万に含める、セッション単位の制限なし |

### 実装内容
- `.claude/settings.json` 新規作成 (hooks + permissions)
- `.claude/hooks/stop-summary-check.sh` 新規作成 (実行権限付与済み、動作確認済み)
- CLAUDE.md セクション7「ハーネス仕様」追加
- メモリ `project-harness` 追加

### Hinton の懸念事項 (記録)
最大自律を選んだ場合、「Claudeが暴走した時に止められるか」「Claudeが静かに間違い続けても CEO が気づけるか」の二点が残課題。当面は Stopフック自動サマリと git による全変更追跡で対処。将来的に PostToolUse hook で重要操作ログを別途取る選択肢を残す。

## 技術メモ: Agent ツール worktree isolation 問題

### 発生事象
本セッションで `subagent_type: "claude"` または `"board-directors"` で Agent ツールを呼び出した際、以下のエラーで実行不可:

```
Cannot create agent worktree: not in a git repository and no WorktreeCreate hooks
are configured. Configure WorktreeCreate/WorktreeRemove hooks in settings.json to
use worktree isolation with other VCS systems.
```

### 試したこと
1. **subagent_type を `board-directors` 指定** → `Agent type 'board-directors' not found`
   - 理由: `.claude/agents/` 配下のサブエージェントは Claude Code セッション開始時に読み込まれる。本セッション中に作成したため、現セッションでは未認識
2. **`subagent_type: "claude"` (組み込み catch-all) で再試行** → worktree エラー
3. **`git init` でリポジトリ初期化 + 初回コミット** → worktree エラーは継続
4. **設定ファイル確認** (`~/.claude/settings.json`, `.claude/settings.json`) → worktree 関連の hooks/設定なし
5. **結論**: 環境側で agent 実行時に worktree isolation がデフォルト要求されている可能性。原因未特定

### 採用したワークアラウンド
メインClaudeが `.claude/agents/*.md` の persona を完全に読み込んだ上で **代理出力 (role-play)** する方式。
- 取締役会7名の発言、各事業部長の即実行プランをメインスレッドで直接出力
- 品質: persona ファイル準拠のため、各人格・思考フレーム・口調は維持
- 制約: 並列処理ができない (全て逐次出力)。CEO の閲覧する情報量を圧縮するため簡潔化

### 次セッションで確認すべきこと
1. Claude Code 再起動後、`.claude/agents/` のサブエージェントが `Agent` ツールの `subagent_type` として認識されるか
2. 認識されても worktree isolation エラーが出る場合、`settings.json` に WorktreeCreate hook を設定するか、agent定義の frontmatter で isolation を明示無効化できないか調査
3. ワークアラウンドのまま運用する場合、サブエージェント定義は「persona仕様書」としての位置づけに切替 (メインClaudeが読んで内面化する文書)

### CEOへの影響
- 当面、並列対話は「メインClaudeが複数persona を内面化して順次出力」で代替
- 真の並列実行が回復したら、複数Agent並列召喚に戻す

## アクションアイテム
### CEO (長屋優)
- [x] **1億の定義を確定 → 売上 (税引前トップライン)** (2026-05-27 決裁)
- [x] **メディア露出スタンス確定 → 基本NGなし** (顔出し・実名・取材・登壇すべてOK)(2026-05-27 決裁)
- [ ] 法人格の意思決定 — 期限: 2026-05-30
- [ ] 事業計画書・営業計画書のドラフト承認 — 期限: 2026-05-28 朝

### 営業 (Belfort)
- [ ] 7段階スクリプト完成版作成 — 期限: 2026-05-29
- [ ] ICPリスト 100社抽出 — 期限: 2026-05-30
- [ ] 既存0plus顧客リスト受領、再接触開始 — 期限: 2026-06-01

### マーケ (Kotler)
- [ ] Threads/X/LinkedIn コンテンツ計画 (月30本分) — 期限: 2026-05-30
- [ ] MQL 100件のチャネル別配分シミュレーション — 期限: 2026-05-29
- [ ] LP用A/Bテスト変数の決定 — 期限: 2026-05-31

### 広報 (Jobs)
- [ ] Tagline 3案からCEO最終決定 — 期限: 2026-05-29
- [ ] LP本文・キーノート脚本ドラフト — 期限: 2026-06-01

### デザイン (Ive)
- [ ] LP モックアップ (Figma) — 期限: 2026-06-03
- [ ] 申込フォーム・ダッシュボードUI — 期限: 2026-06-05

### 開発 (Torvalds/Ritchie)
- [ ] Next.js + Supabase + Stripe MVP セットアップ — 期限: 2026-05-30
- [ ] Claude API 連携プロトタイプ — 期限: 2026-06-02
- [ ] 20エージェントのシステム内蔵化 — 期限: 2026-06-15
- [ ] 本番デプロイ — 期限: 2026-06-24 (4週間)

### 法務 (九条/古美門)
- [ ] AI助言の責任範囲・免責条項ドラフト — 期限: 2026-06-01
- [ ] 解約・返金条項、NDA、特商法表示 — 期限: 2026-06-05
- [ ] 金商法・士業独占抵触の最終確認 — 期限: 2026-06-10

### 財務 (Buffett)
- [ ] 月次バーン200万・最低キャッシュ1,200万のモニタリングダッシュボード — 期限: 2026-06-01
- [ ] Stripe 課金フロー検証 — 期限: 2026-06-20

### ナレッジ (Dalio)
- [ ] B案 (DXスプリント) のテンプレート化計画 — 期限: 2026-08-27 (Month 3)

## Decision Log項目
- 取締役会決議の有無: **あり** (オファー決定)
- `company/decisions/` への記録: **完了** (`0002-first-offering.md`)
- 議事録: `company/board-minutes/2026-05-27-first-offering-decision.md`
- 中間検証日: **2026-07-27** (Month 2 末、未達なら Pivot 再決議)
- 最終検証日: **2026-11-30** (Month 6 末、1億着地確認)
