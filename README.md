# 株式会社優

Claude だけで運営する会社。CEO は長屋優。

## ミッション

**2026年12月31日までに、Claudeだけで1億円を稼ぐ。**

それは数字の目標であると同時に、「人間1名 + AI で会社を回せるか」という時代の検証でもある。

- **本日**: 2026-05-27 — 残り約7ヶ月
- **進捗管理**: 月次バーンレート上限 200万円 (財務 Buffett 規律)
- **更新**: 2026-05-27 取締役会決議により事業部を14→22に拡張

## 組織規模

- 経営チーム (事業部長): 22事業部
- 配下の専門組織: システム開発部20名 + デジタルマーケティング本部42名 + AI開発部門10名
- 取締役会: 7名
- 秘書室: 1名
- **サブエージェント総数: 100名** (`.claude/agents/`)

## 経営チーム

各事業部長は世界最高峰の実在人物・架空人物の思考を Claude Code サブエージェントとして再現したもの。CEO は彼らと並列に対話できる。

### 既存14事業部

| 部署 | 最高責任者 |
|------|-----------|
| 営業部 | Jordan Belfort |
| 法務部 | 九条間人 (九条の大罪) / 古美門研介 (リーガルハイ) |
| 財務部 | Warren Buffett |
| ブランディング・広報 | Steve Jobs |
| クリエイティブ部 | 今敏 / 空山基 |
| マーケティング部 | Philip Kotler **(配下にデジタルマーケティング本部42名)** |
| ヘルスケア事業部 | Peter Attia |
| 投資・資産運用部 | Howard Marks |
| システム開発部 | Linus Torvalds / Dennis Ritchie **(配下に5部門20名のテックリード)** |
| 海外展開部 | Elon Musk |
| ナレッジ部 | Ray Dalio |
| M&A・PE部 | Stephen Schwarzman |
| デザイン事業部 | Jonathan Ive |
| AI・テクノロジー部 | Geoffrey Hinton / Sam Altman **(配下に AI開発部門10名のテックリード)** |

### 2026-05-27 取締役会決議で新設・即時稼働 (8部署)

| 部署 | 最高責任者 |
|------|-----------|
| カスタマーサクセス事業部 | Tony Hsieh |
| オペレーション・サプライチェーン事業部 | Wei Gao |
| データ・アナリティクス事業部 | DJ Patil |
| インフラ・クラウド・GPU調達事業部 | Werner Vogels (システム開発部AWS部門兼任) |
| サイバーセキュリティ事業部 | Mikko Hyppönen |
| People Operations 事業部 | Laszlo Bock |
| コミュニティ・SNS・クリエイター経済圏事業部 | MrBeast (Jimmy Donaldson) |
| 検索・社内情報アーキテクチャ事業部 | Sergey Brin |

### 2026 Q3 再評価予定 (取締役会可決済み・未稼働9部署)

ロボティクス (Marc Raibert) / エネルギー (Greg Jackson) / R&D・ムーンショット (Astro Teller) /
量子コンピューティング (Hartmut Neven) / 生命科学・バイオテック (Jennifer Doudna) /
VR/AR (Palmer Luckey) / シミュレーション・デジタルツイン (Rev Lebaredian) /
AGI戦略 (Demis Hassabis) / 宇宙 (Gwynne Shotwell)

### CEO秘書室

| 部署 | 最高責任者 |
|------|-----------|
| CEO秘書室 | 設楽拳一 (フィクサー) |

## システム開発部 配下組織 (20名)

```
システム開発部本部 (Torvalds + Ritchie)
├ アプリ開発部 (Flutter/iOS/Android/技術研究 4名)
├ Web開発部門 (React/Next.js/技術研究 3名)
├ Web制作部門 (HP/LP/WordPress/研究 4名)
├ バックエンド開発部門 (Laravel/Python/TypeScript/研究 4名)
└ インフラ部門 (AWS/GCP/Firebase/Supabase/研究 5名)
```

全員テックリードかつシニアエンジニア。各領域のエキスパート・スペシャリスト・ゴールド資格を保有。

## AI・テクノロジー部 配下組織 / AI開発部門 (10名)

```
AI・テクノロジー部本部 (Hinton + Altman)
└ AI開発部門 (10部門 / テックリード10名)
   ├ AIハーネス部門 — Boris Cherny (Claude Code 創造者)
   ├ AIコンテキスト設計部門 — Lilian Weng (元 OpenAI VP / Thinking Machines)
   ├ AIプロンプト設計部門 — Riley Goodside (Scale AI Staff Prompt Engineer)
   ├ AIアーキテクチャ部門 — Eugene Yan (Amazon Principal Applied Scientist)
   ├ AIモデル選定・推論部門 — Andrej Karpathy (元 OpenAI/Tesla / Eureka Labs)
   ├ RAG・ナレッジ基盤部門 — Jerry Liu (LlamaIndex CEO)
   ├ AIエージェント・ワークフロー部門 — Harrison Chase (LangChain CEO)
   ├ AI評価・品質保証部門 — Hamel Husain (Parlance Labs)
   ├ AIセキュリティ・ガバナンス部門 — Simon Willison (Prompt Injection 命名者)
   └ LLMOps・運用改善部門 — Chip Huyen ("AI Engineering" 著者)
```

全員 AI テックリードかつシニア AI エンジニア。生成AI / 機械学習 / クラウドAI / データ分析 / AIセキュリティ / MLOps / LLMOps のエキスパート資格・上位資格を保有。AI活用の企画 / 設計 / 実装 / 評価 / 運用改善までを一貫して担当。ハーネス / コンテキスト / プロンプト / アーキテクチャ / モデル / RAG / エージェント / 評価 / セキュリティ / 運用 の各専門領域を分担しつつ、サイロで動かず横断連携する。AI を業務・プロダクトに「安全かつ高品質に組み込む」設計者・実装者・評価者・改善責任者。

## マーケティング部 配下組織 / デジタルマーケティング本部 (42名)

```
マーケティング部 (Kotler) — 戦略統括
└ デジタルマーケティング本部 (Neil Patel) — 戦術実行責任者
   ├ 広告運用部 (Frederick Vallaeys) - Google/Meta/Yahoo!/TikTok/技術研究
   ├ SEOマーケティング部 (Rand Fishkin) - 内部/コンテンツ/テクニカル/技術研究
   ├ SNSマーケティング部 (Gary Vaynerchuk) - Instagram/X/TikTok/YouTube/技術研究
   ├ コンテンツマーケティング部 (Joe Pulizzi) - 記事/WP/動画/メルマガ/技術研究
   ├ Web改善・LPO部 (Peep Laja) - LP/HP/フォーム/CVR/技術研究
   ├ CRM・MA部 (Scott Brinker) - HubSpot/Salesforce/LINE/Email/技術研究
   └ データ分析・マーケティング基盤部 (Avinash Kaushik) - GA/GTM/Looker/データ統合/技術研究
```

全員マーケティングリードかつシニアマーケター。Google広告/Meta広告/SEO/SNS/MA/CRM/Web解析/データ分析の各領域でエキスパート資格・上位資格保有。

## 取締役会 (Stop/Go決議, 過半数=4票)

Elon Musk / Bill Gates / Larry Page / Mark Zuckerberg / Jeff Bezos / Jensen Huang / 孫正義

## 使い方

このディレクトリで `claude` を起動すれば、メインClaudeがCEOの代行として動く。

CEOの発話例:
- 「営業戦略について Belfort と Kotler の意見を聞きたい」 → 並列召喚
- 「この新規事業を取締役会にかけてくれ」 → `board-directors` 召喚、7名分の意見+多数決
- 「秘書室、来週のスケジュールを整理して」 → `ceo-secretary-shidara` に委譲
- 「Meta広告の改善を Foxwell と相談したい」 → `dm-ads-meta-foxwell` 召喚
- 「SEO の月次レビューを Fishkin と Solis と Dean で並列で」 → 並列召喚
- 「顧客向け AI 機能の評価セットを Husain と作りたい」 → `aidev-eval-husain` 召喚
- 「モデル選定を Karpathy と Yan で議論してくれ」 → `aidev-model-karpathy` + `aidev-architecture-yan` 並列召喚
- 「プロンプトインジェクションのレビューを Willison に」 → `aidev-security-willison` 召喚

対応するサブエージェントが召喚され、必要に応じて両論併記・多数決でCEOに上げる。

## ガバナンス・ハーネス仕様 (2026-05-27 CEO決裁)

- **自律性**: 最大自律モード (`skipDangerousModePermissionPrompt: true`)
  - 例外でCEO確認が必要な操作: 破壊的操作 (`rm -rf` / `git push --force` / `git reset --hard` / DB drop) と外部送信 (公開リポジトリpush・外部API送信・メール/Slack送信)
- **Stopフック**: 実質的なセッション終了時に自動でサマリ保存を強制 (`.claude/hooks/stop-summary-check.sh`)
- **Bash 許可リスト**: 読み取り系コマンドを事前許可 (`ls` / `pwd` / `git status/diff/log` / `grep` / `rg` / `find` 等)
- **コスト管理**: 月次 Claude API 上限のみ、セッション単位の上限なし。Buffett が週次でAnthropic Console を確認
- **意思決定階層**:
  - CEO単独判断: 月次予算の10%以下、レピュテーション影響軽微
  - 秘書室判断: 雑務・調整・外部対応・緊急性が高く軽微な案件
  - 取締役会案件: 投資/買収/新規事業/撤退/大型契約/役員人事/重大リスク
- **記録の義務**: 全ての実質セッションを `company/summaries/{事業部}/yyyymmdd_{slug}.md` に保存。取締役会決議は `company/board-minutes/`、重要意思決定は `company/decisions/` にも保存

## ドキュメント

- 運営マニュアル: [CLAUDE.md](./CLAUDE.md)
- 1億達成プラン: [company/north-star.md](./company/north-star.md)
- 詳細組織図: [company/org-chart.md](./company/org-chart.md)
- セッションサマリ: [company/summaries/](./company/summaries/)
- Decision Log: [company/decisions/](./company/decisions/)
- 取締役会議事録: [company/board-minutes/](./company/board-minutes/)
- プレイブック: [company/playbooks/](./company/playbooks/)
