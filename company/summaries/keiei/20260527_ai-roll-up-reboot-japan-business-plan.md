# 2026-05-27 — AI Roll-up Reboot Japan 事業計画策定

## 議題
ZeroPlus(長屋社長 × 宮野友樹)協業向けに作成された「業種別ペインポイント資料」および「議事録TODO PDF」を準拠資料とし、AI/DX × 中小企業業務改善・事業再生支援 事業の単独事業計画書を作成。 年商1億 North Star は本計画書では外し、本事業のみにフォーカスする方針。プロジェクトコードネーム `ai-roll-up-reboot-japan` の戦略思想(AI起点のロールアップ×事業再生)を読み解いた上で、22部署全部署の戦略を一つのMarkdownに統合。

## 主な結論
- 事業計画書を `ai-roll-up-reboot-japan/BUSINESS_PLAN.md` に確定版 v1.0 として作成完了。
- **NSM** = 「黒字伴走社数(月額伴走中で90日以内に数字で改善実証できた顧問先)」に設定。フェーズ1=3社 / フェーズ2=15社 / フェーズ3=40社+エクイティ2-3社。
- フェーズ1 (T+6M) の入口業種: 製造業・建設業・店舗の3業種。各1社モデルケース獲得が必須条件。
- 5層メニュー: 無料診断 → クイック改善(¥10-30万)→ 月額伴走(月¥20-80万)→ 成果報酬(改善額10-30%)→ エクイティ型(個別)。
- 入口チャネル: 税理士・士業・金融機関ネットワーク。フェーズ1で5名提携、フェーズ3で50名。
- LTV/CAC: 紹介経由で90倍超想定(月額伴走LTV ¥450-540万 / CAC 0-5万)。広告は二の矢。
- フェーズ別 Stop/Go: 2026-12 / 2027-06 / 2027-12 に取締役会決議。撤退基準も明文化。
- 議事録TODO PDFは flate stream 破損で本文抽出不可。ペインポイント資料の10章を実質TODOとして採用。CEOへ原本再送依頼を付録Bに記載。

## 参加した事業部長エージェント
- インライン代理出力 (worktree isolation回避のため): branding-jobs / creative-kon / creative-sorayama / sales-belfort / legal-komikado / legal-kujou / finance-buffett / marketing-kotler / dm-head-patel および配下7本部長 / ma-schwarzman / investment-marks / ai-hinton / ai-altman / dev-torvalds / dev-ritchie / knowledge-dalio / cs-hsieh / ops-gao / data-patil / infra-vogels / security-hypponen / people-bock / design-ive / healthcare-attia / global-musk / search-brin / community-mrbeast / ceo-secretary-shidara / board-directors
- 全22部 + 配下本部(システム開発5部門/AI開発10部門/デジタルマーケ7部門) の戦略を BUSINESS_PLAN.md 7章に明文化

## アクションアイテム
資料10章 + 本計画書11章を統合した 30日アクション (2026-06-30 期限):
- [ ] A1: 士業向け1枚提案書 (A4×2 PDF) ─ branding-jobs / marketing-kotler @6/3
- [ ] A2: 業種別初回トーク3本 ─ sales-belfort @6/3
- [ ] A3: AI/DX打ち手サンプル(業種別Google Sheets) ─ aidev-prompt-goodside / aidev-rag-liu @6/9
- [ ] A4: 既存税理士・士業 3名へ打診 ─ ceo-secretary-shidara / sales-belfort @6/9
- [ ] A5: 無料診断ヒアリングシート ─ sales-belfort / ops-gao / data-patil @6/3
- [ ] A6: Before/After 成果測定フォーマット ─ data-patil @6/9
- [ ] A7: 料金体系仮案(5層) ─ finance-buffett / ops-gao @6/16
- [ ] A8: 契約書3本(無料診断同意 / 月額伴走 / 成果報酬) ─ legal-komikado / legal-kujou @6/16
- [ ] A9: LP / HP 公開 ─ studio-hp-zeldman / studio-lp-gardner @6/23
- [ ] A10: 計測タグ・CRM 仮構築 ─ dm-analytics-gtm-ahava / dm-crm-head-brinker @6/23
- [ ] B1: モデルケース第1号(製造業)着手 ─ 全社 @6/30
- [ ] PDF議事録の原本再送をCEOへ依頼(flate stream 破損)

## Decision Log項目
- 取締役会決議 不要(本計画書 v1.0 は社内方針確定。エクイティ型1号は別途決議)
- ただし以下は**今後の取締役会決議事項として予約**:
  - 2026-12: フェーズ1→フェーズ2 移行 Stop/Go
  - 2027-06: フェーズ2→フェーズ3 移行 / エクイティ型1号 投資
  - 2027-12: フェーズ4(本格ロールアップ)決議
  - 孫氏が想定するピボット案(フェーズ3でSaaS化+大型調達)は他6名と対立する可能性あり ─ フェーズ2終了時に多数決必要
- `company/decisions/` への記録: 不要(計画書本体が記録)。ただしエクイティ型1号 決定時には Decision Log 必須
