# AI開発部門 (10部門 / テックリード10名) 新設 — 2026-05-27

## 議題
AI・テクノロジー部 ([[ai-hinton]] + [[ai-altman]]) 配下に「AI開発部門」を新設。AIハーネス / コンテキスト設計 / プロンプト設計 / アーキテクチャ / モデル選定・推論 / RAG・ナレッジ基盤 / エージェント・ワークフロー / 評価・品質保証 / セキュリティ・ガバナンス / LLMOps・運用改善 の10専門部門を立ち上げ、AI を業務・プロダクトに「安全かつ高品質に組み込む」設計者・実装者・評価者・改善責任者を配置する。

## 主な結論
- AI開発部門は **AI・テクノロジー部直下のテックリード階層** として設置 (システム開発部の Torvalds/Ritchie 直下5部門と同じパターン)。中間管理職を置かず、Hinton + Altman が直接統括
- 10名のテックリードは全員、現役で AI 業界を牽引する世界クラスの実在人物を完全踏襲:
  - **AIハーネス**: Boris Cherny (Anthropic / Claude Code 創造者) — `aidev-harness-cherny`
  - **コンテキスト設計**: Lilian Weng (元 OpenAI VP Research / Thinking Machines) — `aidev-context-weng`
  - **プロンプト設計**: Riley Goodside (Scale AI Staff Prompt Engineer) — `aidev-prompt-goodside`
  - **アーキテクチャ**: Eugene Yan (Amazon Principal AS) — `aidev-architecture-yan`
  - **モデル選定・推論**: Andrej Karpathy (元 OpenAI/Tesla / Eureka Labs) — `aidev-model-karpathy`
  - **RAG・ナレッジ基盤**: Jerry Liu (LlamaIndex CEO) — `aidev-rag-liu`
  - **エージェント・ワークフロー**: Harrison Chase (LangChain CEO) — `aidev-agent-chase`
  - **評価・品質保証**: Hamel Husain (Parlance Labs / LLM Evals 第一人者) — `aidev-eval-husain`
  - **セキュリティ・ガバナンス**: Simon Willison (Datasette / Prompt Injection 命名者) — `aidev-security-willison`
  - **LLMOps・運用改善**: Chip Huyen ("Designing ML Systems" / "AI Engineering" 著者) — `aidev-llmops-huyen`
- `.claude/agents/` に10ファイルを新設 (全員 `model: opus`)。社内エージェント総数 90 → **100名** に到達
- `CLAUDE.md` を更新: ① 組織図セクションに「AI・テクノロジー部 配下組織 / AI開発部門」を追加 ② エージェント一覧表に10名を追加

## 参加した事業部長エージェント
- メインスレッド (CEO代行) のみで実行 — 既存パターン (システム開発部 5部門 / デジタルマーケ 42部門) との整合を取りつつ、CEOの直接指示に従って即時実装した
- 関連既存エージェント (新設エージェントの連携先として宣言):
  - [[ai-hinton]] [[ai-altman]] (本部 — 直接の上長)
  - [[security-hypponen]] [[legal-kujou]] [[legal-komikado]] (セキュリティ・法務連携)
  - [[knowledge-dalio]] [[search-brin]] (ナレッジ・検索基盤連携)
  - [[finance-buffett]] (コスト規律連携)
  - [[backend-python-vanrossum]] [[infra-vogels]] [[data-patil]] [[dm-analytics-head-kaushik]] (隣接技術領域連携)

## アクションアイテム
- [ ] **AI開発部門キックオフ**: Hinton + Altman + 10テックリードでアーキテクチャ全体方針を策定 (担当: メインスレッド召喚 / 期限: 2026-06-03)
- [ ] **全社AI実行基盤の整理**: 現状の Claude Code サブエージェント群を Cherny + Yan で体系化 (担当: `aidev-harness-cherny` + `aidev-architecture-yan` / 期限: 2026-06-10)
- [ ] **ゴールデンセット構築**: 顧客向け第一弾オファリング (Claude経営参謀 / AI×DXスプリント) の評価セット (担当: `aidev-eval-husain` / 期限: 2026-06-10)
- [ ] **コンテキスト設計レビュー制度化**: 新規エージェント立ち上げ時に Weng のレビュー必須化 (担当: `aidev-context-weng` / 期限: 2026-06-03)
- [ ] **AI 利用ガイドライン v1**: 22部署エージェント運用ルール明文化 (担当: `aidev-security-willison` + [[security-hypponen]] / 期限: 2026-06-17)
- [ ] **AI コストダッシュボード**: 全 LLM コールの中央ログ + 月次コスト可視化 (担当: `aidev-llmops-huyen` + `aidev-harness-cherny` / 期限: 2026-06-17)
- [ ] **モデル選定マトリクス v1 公開**: 当社の用途別標準モデルを Karpathy が公開ベンチマーク付きで定義 (担当: `aidev-model-karpathy` / 期限: 2026-06-10)
- [ ] **社内 RAG MVP**: `company/` 配下 (CLAUDE.md / agents / summaries / playbooks) を AI が参照可能に (担当: `aidev-rag-liu` + [[knowledge-dalio]] + [[search-brin]] / 期限: 2026-06-24)

## Decision Log項目
本件は組織編成 (新規部門設立) であり、CEOからの直接指示で即時実行された。取締役会の事後承認案件として、`company/decisions/` に Decision Log を追加することを推奨:
- **推奨 Decision ID**: `0004-ai-dev-department-establishment.md`
- **記録内容**: 部門設立理由 / 10名のテックリード踏襲対象 / 既存 AI・テクノロジー部本部との関係 / 主要成果物期限
- **取締役会への報告**: 次回取締役会で「Hinton + Altman の戦術実行部隊強化として AI開発部門10部門新設、事後承認案件」として議題化を推奨 (担当: [[ceo-secretary-shidara]])
