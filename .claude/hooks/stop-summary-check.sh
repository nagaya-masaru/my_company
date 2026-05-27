#!/bin/bash
# Stop hook — 長屋優's Claude-only company
#
# 本日のセッションサマリが company/summaries/{事業部}/yyyymmdd_*.md に
# 保存されているか確認する (再帰検索)。未保存ならClaudeに書くよう指示してブロック。
# 保存済みなら通常停止を許可。
#
# 関連ファイル:
# - CLAUDE.md セクション5 「セッションサマリ保存ルール」
# - .claude/settings.json hooks セクション

set -euo pipefail

PROJECT_ROOT="/Users/nagayamasaru/Downloads/github/me"
SUMMARIES_DIR="${PROJECT_ROOT}/company/summaries"
TODAY=$(date +%Y%m%d)

# 本日のサマリを再帰検索 (事業部別サブディレクトリ配下を含む)
# 雑談のみセッションは company/summaries/_trivial/${TODAY}.md でも可
matches=$(find "${SUMMARIES_DIR}" -type f \( -name "${TODAY}_*.md" -o -name "${TODAY}.md" \) 2>/dev/null | head -n 1 || true)

if [ -n "${matches}" ]; then
    # 本日のサマリ既に存在 → 停止許可
    exit 0
fi

# 未保存 → ブロックしてClaudeに書かせる
cat <<EOF
{"decision": "block", "reason": "本日 (${TODAY}) のセッションサマリが company/summaries/ 配下にまだ保存されていません。CLAUDE.md のセクション5に従い、以下のいずれかを実行してから停止してください:\n\n1. 実質的なやり取りがあったなら: company/summaries/{事業部}/${TODAY}_{topic-slug}.md を作成 (事業部dir: keiei/sales/marketing/branding/ma/product 等。テンプレ: company/summaries/_template.md)\n2. 雑談・単発質問のみで保存不要なら: company/summaries/_trivial/${TODAY}.md を空のプレースホルダで作成して停止可"}
EOF
