#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "usage: bash tests/audit-book-prompts.sh /path/to/book-markdown-directory" >&2
  exit 2
fi

book_root="$1"
package_root="$(cd "$(dirname "$0")/.." && pwd)"
register="$package_root/prompt-recipes/prompt-register.md"

test -d "$book_root" || {
  echo "book directory not found: $book_root" >&2
  exit 1
}

for chapter_number in 2 $(seq 4 19); do
  chapter_file="$(find "$book_root" -maxdepth 1 -type f -name "第${chapter_number}章：*.md" -print -quit)"
  test -n "$chapter_file" || {
    echo "book chapter not found: $chapter_number" >&2
    exit 1
  }

  prompt_cues="$(grep -Ec '请(阅读|根据|基于|检查|使用|把|为|将|先)|帮我|现在不要|要求：' "$chapter_file" || true)"
  grep -q "第 ${chapter_number} 章" "$register" || {
    echo "unregistered chapter: $chapter_number" >&2
    exit 1
  }
  printf 'chapter=%s prompt_cues=%s mapped=yes\n' "$chapter_number" "$prompt_cues"
done

echo "book prompt mapping audit passed"
