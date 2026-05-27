# 2026-05-27 デジタルマーケティング本部 新設 (Neil Patel 配下 7部門 42名)

## 議題
マーケティング部 (Kotler) の戦術実行責任を担う「デジタルマーケティング本部」を新設し、Neil Patel を本部長として配置。配下に広告運用 / SEO / SNS / コンテンツ / Web改善・LPO / CRM・MA / データ分析 の7部門 (各 4-5名のシニアマーケター) を実装。全 42 名のサブエージェント定義を `.claude/agents/` 配下に作成。

## 主な結論

### 組織構造 (2階層)
- **マーケティング部 (戦略統括)**: Philip Kotler
- **デジタルマーケティング本部 (戦術実行)**: Neil Patel
- 配下7部門の部長は実在のシニアマーケター (Vallaeys/Fishkin/Vaynerchuk/Pulizzi/Laja/Brinker/Kaushik) を踏襲
- 各部門配下に4-5名の専門領域シニアマーケター (合計34名) を配置
- 全員がエキスパート資格・上位資格保有のシニアマーケター

### 全42名の配置 (実在人物踏襲)
- **本部長**: Neil Patel
- **広告運用部** (Vallaeys): Geddes(Google) / Foxwell(Meta) / 杉原剛(Yahoo!) / Plofker(TikTok) / Levy(技術研究)
- **SEO部** (Fishkin): Solis(内部) / Dean(コンテンツ) / Goralewicz(テクニカル) / Mueller(研究)
- **SNS部** (Vaynerchuk): Star(IG) / Welsh(X) / Pappas(TikTok) / Blake(YouTube) / Smith(研究)
- **コンテンツ部** (Pulizzi): Handley(記事) / Scott(WP) / Sheridan(動画) / Jordan(メルマガ) / Rose(研究)
- **LPO部** (Laja): Wolf(LP) / Ash(HP) / Wroblewski(Form) / Eisenberg(CVR) / Morys(研究)
- **CRM・MA部** (Brinker): Halligan(HubSpot) / Schmaier(Salesforce) / 田端信太郎(LINE) / White(Email) / Raab(研究)
- **分析・基盤部** (Kaushik): Seiden(GA) / Ahava(GTM) / Farina(Looker) / Sterne(統合) / Clifton(研究)

### 設計方針
- 各部門は単独で施策を進めず、広告・SEO・SNS・コンテンツ・LPO・CRM・データ分析を**横断連携**することを CLAUDE.md に明文化
- 戦略・媒体選定・ターゲット設計・ペルソナ設計・カスタマージャーニー・KPI設計・広告アカウント設計・SEO設計・SNS運用方針・コンテンツ方針・LP改善方針・CV導線設計・フォーム改善・CRM設計・MAシナリオ設計・計測設計・分析ダッシュボード設計・改善施策の優先順位付け を各部門合同で決定するモデル
- 既存 Web制作部門 LP部門 (Oli Gardner) との重複を避けるため、LPO LP改善部門は Talia Wolf を配置
- 既存マーケティング部 (Kotler) は「上位の戦略統括」として継続。Patel は「戦略を数字で動く実装に落とす責任」

### CLAUDE.md 更新内容
- 事業部リスト「マーケティング部」行に「デジタルマーケティング本部 Neil Patel 配下に7部門42名」を追記
- 「### マーケティング部 配下組織 / デジタルマーケティング本部」セクションを新設、組織図を追加
- エージェント一覧テーブルに42名を追加

## 参加した事業部長エージェント
今回はメインClaudeがCEO代行として直接実装。サブエージェント召喚は行わず、persona ファイル作成に集中した(Agent worktree isolation 回避目的でもある)。
- 参考踏襲: [[marketing-kotler]] の persona構造、[[app-ios-lattner]] / [[web-next-rauch]] の 配下部門 persona パターン

## アクションアイテム
- [ ] CEO: 新設デジタルマーケティング本部の対外的な役割範囲を、マーケティング部 (Kotler) と整理 (戦略 vs 戦術の境界線)
- [ ] CEO: 当社の第一フェーズで起動する部門を選定 (全42名同時起動はリソース過剰)
- [ ] DM本部長 Patel [[dm-head-patel]]: 1億達成までの数値分解 (必要リード数 / 必要トラフィック / 必要広告費の逆算)を作成
- [ ] 広告運用部長 Vallaeys [[dm-ads-head-vallaeys]]: 媒体別の月次予算配分の初期提案 (Buffett [[finance-buffett]] の月次バーンレート上限 200万円との整合)
- [ ] SEO Fishkin / コンテンツ Pulizzi: 半年以内のオーガニック流入目標とコンテンツプラン提案
- [ ] LPO Laja: 主要LP/HP のCRO 監査スケジュール提案
- [ ] CRM Brinker: 当社で採用する MarTech Stack の初期提案 (HubSpot vs Salesforce の判断)
- [ ] 分析 Kaushik [[dm-analytics-head-kaushik]]: CEO ダッシュボード (1画面KPI) の初期設計

## Decision Log項目
本件は CEO 単独判断で実施 (組織構造の整備、サブエージェント定義の追加)。事業立ち上げ・予算執行を伴わないため、取締役会決議は不要。今後、デジタルマーケティング本部としての**初回予算執行**(広告費投下、MarTechツール契約等)が発生する時点で、Buffett [[finance-buffett]] の月次バーンレート規律と取締役会案件相当の規模かを CEO + 秘書室 [[ceo-secretary-shidara]] が判定する。

`company/decisions/` への記録要否: **不要** (組織設計の事務的整備のため)。ただし当社の組織図に大きな変更があったため、本サマリを当該変更の根拠記録とする。
