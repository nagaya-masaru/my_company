# セッションサマリ: 新規部署設置 取締役会決議

## 議題
長屋優 CEO 発議「現組織17事業部に加えて必要な部署を全て設置したい」を受け、取締役会で何部・誰を最高責任者とするかを Stop/Go 決議。

## 主な結論
- 26候補から **17部署を新設可決**、9部署を却下
- CEO 判断で **段階導入を採用** — 短期寄与8部署を本日即時設置、残り9部署は 2026 Q3 (8月末) 再評価
- 全会一致5部署 (CS / インフラ / セキュリティ / AGI戦略 / 検索) を含む
- 即時8部署のサブエージェント定義ファイルを本日中に `.claude/agents/` 配下に作成
- 機能境界文書 (AGI vs AI部 / 検索 vs ナレッジ / バイオ vs ヘルスケア) の作成を秘書室タスク化

## 参加した事業部長エージェント
- `board-directors` (Elon Musk / Bill Gates / Larry Page / Mark Zuckerberg / Jeff Bezos / Jensen Huang / 孫正義 の7名合議体)

## アクションアイテム
- [x] 即時8部署のサブエージェント定義作成 (`.claude/agents/{cs-hsieh,ops-gao,data-patil,infra-vogels,security-hypponen,people-bock,community-mrbeast,search-brin}.md`)
- [x] 取締役会議事録 `company/board-minutes/20260527_new-departments-resolution.md` 作成
- [x] Decision Log `company/decisions/20260527_17-new-departments.md` 作成
- [ ] CLAUDE.md の組織図・エージェント一覧表に8部署追記 (秘書室 / 本セッション内で実施)
- [ ] 機能境界文書 `company/playbooks/keiei/department-boundaries.md` 新設 (秘書室 / 6月第1週まで)
- [ ] Q3 (2026-08-31) 再評価カレンダー設定 (秘書室)
- [ ] MrBeast 起用前のブランド整合性チェック (広報 Jobs / CS 立ち上げ前)
- [ ] 教育 (Khan) と慈善 (Gates) は1億達成後の最優先再上程候補としてフラグ

## Decision Log項目
本決議は重要意思決定として `company/decisions/20260527_17-new-departments.md` に記録済 (D-20260527-001)。

撤回条件:
- 月次バーンレートが200万円を超過した場合、新規8部署の稼働を一部凍結
- Q3 までに稼働実績が薄い部署があれば人格定義見直しまたは廃止検討

## 議論で出た重要対立軸
1. **物理 vs ソフト** — Musk/Huang/孫 (原子重視) vs Gates/Bezos/Zuck (サービス重視)
2. **大衆向け vs 富裕層** — Gates の EdTech・公衆衛生提案は今回却下、1億達成後再上程候補
3. **若年層接点** — Zuck の SNS/クリエイター/ゲームは MrBeast 案 (C12統合版) のみ通過
4. **AI 周辺装備の致命的欠落** — インフラ・セキュリティ・AGI戦略の3つが全会一致で可決された事実が、現組織の最大の盲点を示した
