## 議題

システム開発部本部 (Linus Torvalds / Dennis Ritchie) の配下に、5部門・計20名のテックリード/シニアエンジニアを新設する組織拡張。技術選定・ルーティング・アーキテクチャ・状態管理・ORM・バリデーション・ランタイム選定までを実装責任で持つ専門部隊を整える。

## 主な結論

- 5部門 / 20名のサブエージェントを `.claude/agents/` 配下に新設完了
- 全員「世界クラスの実在エンジニア・フレームワーク創造者」をペルソナとし、テックリード + シニア + 各種エキスパート資格保有という設定
- CLAUDE.md の組織図とエージェント一覧テーブルを更新済み
- 既存の dev-torvalds / dev-ritchie は「本部」として20名を統括する位置付け

### 新設組織と20名

| 部門 | 部署 | 担当 (キー) |
|------|------|-------------|
| アプリ開発 | Flutter | Tim Sneath (`app-flutter-sneath`) |
| アプリ開発 | iOS (Swift) | Chris Lattner (`app-ios-lattner`) |
| アプリ開発 | Android (Kotlin) | Jake Wharton (`app-android-wharton`) |
| アプリ開発 | 技術研究 | Ken Wheeler (`app-research-wheeler`) |
| Web開発 | React.js | Dan Abramov (`web-react-abramov`) |
| Web開発 | Next.js | Guillermo Rauch (`web-next-rauch`) |
| Web開発 | 技術研究 | Addy Osmani (`web-research-osmani`) |
| Web制作 | HP | Jeffrey Zeldman (`studio-hp-zeldman`) |
| Web制作 | LP | Oli Gardner (`studio-lp-gardner`) |
| Web制作 | WordPress | Matt Mullenweg (`studio-wordpress-mullenweg`) |
| Web制作 | 技術研究 | Brad Frost (`studio-research-frost`) |
| バックエンド | Laravel | Taylor Otwell (`backend-laravel-otwell`) |
| バックエンド | Python | Guido van Rossum (`backend-python-vanrossum`) |
| バックエンド | TypeScript | Anders Hejlsberg (`backend-typescript-hejlsberg`) |
| バックエンド | 技術研究 | Martin Fowler (`backend-research-fowler`) |
| インフラ | AWS | Werner Vogels (`infra-aws-vogels`) |
| インフラ | GCP | Urs Hölzle (`infra-gcp-holzle`) |
| インフラ | Firebase | James Tamplin (`infra-firebase-tamplin`) |
| インフラ | Supabase | Paul Copplestone (`infra-supabase-copplestone`) |
| インフラ | 技術研究 | Kelsey Hightower (`infra-research-hightower`) |

## 参加した事業部長エージェント

- 設計段階ではメインClaudeが代理出力。本来は [[dev-torvalds]] [[dev-ritchie]] と相談しながら設計すべきだが、新規エージェント作成のためAgentツール起動はスキップした
- 既存のシステム開発部本部 (Torvalds / Ritchie) との関係 (本部 → 配下) は各ペルソナ内で明示

## アクションアイテム

- [ ] CEO が必要な案件で実際に呼び出し、各テックリードの応答品質を検証する
- [ ] セッション再起動後、20名がすべて Agent ツール経由で正しく認識されるか確認 (CLAUDE.md §8 既知の課題に基づく)
- [ ] 重複領域の調整: 例えば Web制作 LP (Gardner) と Web開発 Next.js (Rauch) の境界、Firebase (Tamplin) と Supabase (Copplestone) の使い分けマトリクス
- [ ] [[knowledge-dalio]] のナレッジ部に「技術選定の社内原則」を文書化させる (各部長の標準スタックを集約)
- [ ] [[finance-buffett]] と相談、ペルソナ追加によって AI 呼び出しコストが急増しないかモニタリング

## Decision Log項目

- 組織変更の決議: 取締役会 [[board-directors]] の Stop/Go は経由していない (人事系の純粋な権限委譲・既存の枠内の拡張のため CEO 単独判断で進めた)
- 重要性は中程度: 既存事業構造を変えるものではないが、技術選定の意思決定主体が増えるため、議論の収束プロセスに影響する可能性あり
- 必要があれば `company/decisions/` に「システム開発部 20テックリード新設」として記録する判断は CEO に委ねる
