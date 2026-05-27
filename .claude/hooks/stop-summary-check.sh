#!/bin/bash
# Stop hook — 長屋優's Claude-only company
#
# 本日のセッションサマリが company/summaries/yyyymmdd_summary_*.md に
# 保存されているか確認する。未保存ならClaudeに書くよう指示してブロック。
# 保存済みなら通常停止を許可。
#
# 関連ファイル:
# - CLAUDE.md セクション5 「セッションサマリ保存ルール」
# - .claude/settings.json hooks セクション

set -euo pipefail

PROJECT_ROOT="/Users/nagayamasaru/Downloads/github/me"
SUMMARIES_DIR="${PROJECT_ROOT}/company/summaries"
TODAY=$(date +%Y%m%d)

# 本日のサマリ (テンプレ・READMEを除く yyyymmdd_summary_*.md) の有無を確認
shopt -s nullglob
matches=("${SUMMARIES_DIR}/${TODAY}_summary_"*.md)
shopt -u nullglob

if [ ${#matches[@]} -gt 0 ]; then
    # 本日のサマリ既に存在 → 停止許可
    exit 0
fi

# 未保存 → ブロックしてClaudeに書かせる
cat <<EOF
{"decision": "block", "reason": "本日 (${TODAY}) のセッションサマリが company/summaries/ にまだ保存されていません。CLAUDE.md のセクション5に従い、以下のいずれかを実行してから停止してください:\n\n1. 実質的なやり取りがあったなら: company/summaries/${TODAY}_summary_{topic-slug}.md を作成 (テンプレ: company/summaries/_template.md)\n2. 雑談・単発質問のみで保存不要なら: company/summaries/${TODAY}_summary_trivial.md を空のプレースホルダで作成して停止可"}
EOF
