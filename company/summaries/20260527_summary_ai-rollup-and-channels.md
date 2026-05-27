# 2026-05-27 セッションサマリ — 4チャネル深掘り + AI Roll Up 統合戦略

## 議題
1. CEO SNS発信 (Threads/X/LinkedIn) のブランディング設計
2. 既存0plusネットワーク + 紹介プログラムの計画
3. 有料広告 (Meta/X/LINE) の計画
4. AI Roll Up の深掘り — 戦略・営業・事業計画・Exit例・技術的可能性
5. `company/docs/` 配下の資料読み取り (ZeroPlus AI/DX docx, 議事録TODO PDF)

## 主な結論

### 重要発見 (CEO docs から)
- CEO自身が **2026-05-22** に宮野友樹氏と「ZeroPlus AI/DX 業種別ペインポイント資料」を協業企画として起草していた
- docs §6 で **エクイティ型メニュー (株式・種類株式での参画)** を既に明示
- → これは AI Roll Up の入口そのもの。当社の三層構造 (A SaaS / B 受託 / **C エクイティ型 → Roll Up**) が成立する
- 対象10業種が既に整理済み (S製造業/建設業、A飲食/宿泊/自動車整備、B物流/介護/農業/不動産、C医療/金融)
- 紹介ネットワーク (税理士・行政書士・司法書士・金融機関) のルートが既に存在

### 作成完了したドキュメント (4本)
1. **`company/playbooks/ceo-sns-branding.md`** (294行) — Jobs主導
   - パーソナルブランド一行定義「人間1名+Claude 20人格で会社を回す世界初のCEO」
   - プラットフォーム別役割 (Threads=日常ドキュメンタリー / X=思想発信地 / LinkedIn=権威確立)
   - メッセージング階層、コンテンツ10テンプレ、月30本カレンダー、オープニング3本投稿草案
   - 危機広報プロトコル、NOリスト (絵文字禁止等)
2. **`company/playbooks/network-and-referral.md`** (214行) — 設楽主導
   - 4段階接触戦略 (棚卸し→初動→ニード喚起→クロージング)
   - 紹介報酬構造 (既存顧客=50%OFF / 業界キーマン=個別交渉)
   - 月次KPI、機密管理ルール (名簿はgit管理外)
3. **`company/playbooks/paid-ads.md`** (307行) — Kotler主導
   - 月次予算 50→100→100→100→80→50万 (6ヶ月計480万)
   - チャネル配分 Meta 50% / X 20% / LINE 20% / バッファ10%
   - CAC上限30万 (Buffett決裁ライン)、CVR/CTR/CPL目標
   - リターゲ5セグメント別クリエイティブ
4. **`company/playbooks/ai-rollup-strategy.md`** (648行) — Schwarzman主導
   - **三層モデル統合**: A (SaaS) + B (受託) + C (エクイティ型→Roll Up)
   - **5年シナリオ**: 2026年1.2億 → 2027年4億 → 2028年9億 → 2029年17億 → 2030年33億売上、評価額500-1,000億
   - **Exit 5パターン**: IPO (本命) / PE Secondary / SIer Strategic / Big Tech / Roll Up Compounder
   - **技術アーキテクチャ**: Multi-Tenant共通基盤、業種別Agent、PMI専用Agent、Knowledge Graph
   - **技術的可能性 28機能を洗い出し** (業務代行8/経営分析6/M&A支援4/高度Roll Up 5/顧客向け差別化5)
   - **撤退条件**、規制リスク、Schwarzman→CEO質問4件

### 更新したドキュメント
- `company/decisions/0003-ai-rollup-investigation.md` — docs 読み取り結果反映、統合戦略書へのリンク追加

## 参加した事業部長エージェント
全て **メインClaudeによる代理出力 (persona読込み内面化)** — worktree isolation 問題のため
- [[branding-jobs]] — SNSブランディング
- [[ceo-secretary-shidara]] — ネットワーク+紹介
- [[marketing-kotler]] — 有料広告
- [[ma-schwarzman]] — Roll Up 主導
- [[investment-marks]] — サイクル判定 (両論併記)
- [[finance-buffett]] — 財務規律 (絶対条件5つ)
- [[dev-torvalds]] [[dev-ritchie]] — 技術アーキテクチャ
- [[ai-altman]] — AI事業化、業種別Agentテンプレ
- [[legal-kujou]] [[legal-komikado]] — M&A法務

## 技術的解決した課題
- PDFが破損 (Bad FCHECK in flate stream) で pypdf/pdftotext/QuickLook 全て真っ白
- → docx は zipfile + 正規表現で完全抽出成功 (1,132段落、17,910文字)
- poppler を brew install → pdftoppm は動作 (今後のPDF処理基盤)

## アクションアイテム

### CEO (長屋優) — 2026-05-28 朝
- [ ] 4ドキュメントのレビュー・承認
- [ ] Schwarzman → CEO 質問4件への回答:
  1. 宮野友樹氏との契約形態の現状
  2. CEO の Roll Up コミット度合い (時間配分)
  3. 想定 Exit の優先順位 (IPO vs Strategic Sale)
  4. 資金調達意思 (自己資金 vs VC/PE)
- [ ] 設楽との30分ヒアリング (既存ネットワーク棚卸し)
- [ ] SNS実名再起動 (Threads/X/LinkedIn) — 初日3本投稿草案あり

### 各部署 (詳細は各playbook末尾)
- Jobs: 月30本コンテンツ案、NGワードリスト
- 設楽: A級30名接触シーケンス、キーマン接触マップ
- Kotler: Meta/X/LINE 広告アカウント開設、Pixel設置依頼
- Schwarzman: 宮野氏との初動MTG (2026-06-03)、ターゲット業界市場規模リサーチ
- Marks: サイクル判定月次レポート開始
- Torvalds+Ritchie: Multi-Tenant プラットフォーム設計書 (2026-07-31)
- Altman: Anthropic Japan との企業提携交渉開始 (2026-07-01)
- 法務: エクイティ型契約ひな型、金商法整理メモ

### Phase 2 (Month 3末 = 2026-08-27)
- Schwarzman が AI Roll Up を取締役会に正式議題上程
- 予想投票結果: 5-6票 Go (Page/Zuckerberg/孫 + 条件付Musk/Bezos/Huang) vs 1票 Wait (Gates)

## Decision Log項目
- 取締役会決議の有無: **なし** (本セッションはCEO直接決裁案件 / 4ドキュメント承認待ち)
- `company/decisions/` への記録: `0003-ai-rollup-investigation.md` を更新
- 次の取締役会案件候補: **AI Roll Up Phase 1 試行買収 (2026-08-27 上程予定)**

## 留意事項
- AI Roll Up は本業A/B の Month 3 単月黒字化 (2026-08末) を確認後に本格化する Phased アプローチ
- 当面 (Month 1-3) は本業集中、Roll Up は調査+宮野氏との関係構築フェーズ
- Marks のサイクル警告: 2027 Q2-Q3 まで AI バリュエーション下落継続可能性 → 本格買収は2027下期以降
