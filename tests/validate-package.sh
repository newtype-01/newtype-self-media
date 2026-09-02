#!/usr/bin/env bash

set -euo pipefail

package_root="$(cd "$(dirname "$0")/.." && pwd)"

required_files=(
  "README.md"
  "VERSION"
  "COMPATIBILITY.md"
  "chapter-map.md"
  "prompt-recipes/prompt-register.md"
  "starter-project/账号说明书.md"
  "starter-project/选题库.md"
  "starter-project/项目使用说明.md"
  "automation-templates/每周内容复盘Automation说明.md"
  "automation-templates/每日项目健康检查Automation说明.md"
  "automation-templates/两周Goal进度检查Thread Automation说明.md"
  "automation-templates/Automation运行记录.md"
)

skill_names=(
  "self-media-project"
  "wechat-article"
  "xiaohongshu-note"
  "short-video-content"
  "content-review"
  "workflow-to-skill"
)

for relative_path in "${required_files[@]}"; do
  test -f "$package_root/$relative_path" || {
    echo "missing: $relative_path" >&2
    exit 1
  }
done

for skill_name in "${skill_names[@]}"; do
  skill_file="$package_root/skills/$skill_name/SKILL.md"
  test -f "$skill_file" || {
    echo "missing skill: $skill_name" >&2
    exit 1
  }
  grep -q '^---$' "$skill_file"
  grep -q "^name: $skill_name$" "$skill_file"
  grep -q '^description: ' "$skill_file"
  grep -q '人工确认\|确认' "$skill_file"
  grep -q '不自动发布\|不得自动发布\|不能自动发布' "$skill_file"
done

for chapter_number in 2 $(seq 4 19); do
  grep -q "第 ${chapter_number} 章" "$package_root/prompt-recipes/prompt-register.md" || {
    echo "chapter missing from prompt register: $chapter_number" >&2
    exit 1
  }
done

test "$(find "$package_root/skills" -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')" = "6"

echo "package validation passed"
