#!/bin/sh
set -eu

expected_count=12
actual_count=0
validated_count=0

required_sections='## 功能定位
## 适用场景
## 不适用场景
## 使用前准备
## 预期输出
## 调用方式
## 工作流程
## 律师确认事项
## 兼容性与本地化'

fail() {
  printf 'ERROR: %s\n' "$1" >&2
  exit 1
}

for skill_dir in skills/*; do
  [ -d "$skill_dir" ] || continue
  actual_count=$((actual_count + 1))
  skill_name=$(basename "$skill_dir")
  readme="$skill_dir/README.md"

  [ -f "$readme" ] || fail "missing $readme"
  grep -Fq "\$$skill_name" "$readme" || fail "$readme does not contain \$$skill_name"
  grep -Fq '[原始 SKILL.md](./SKILL.md)' "$readme" || fail "$readme does not link to SKILL.md"

  printf '%s\n' "$required_sections" | while IFS= read -r section; do
    grep -Fq "$section" "$readme" || fail "$readme is missing section: $section"
  done

  grep -Fq "skills/$skill_name/README.md" README.md || fail "root README does not link to $skill_name Chinese README"
  grep -Fq "skills/$skill_name/SKILL.md" README.md || fail "root README does not link to $skill_name SKILL.md"
  validated_count=$((validated_count + 1))
done

[ "$actual_count" -eq "$expected_count" ] || fail "expected $expected_count skill directories, found $actual_count"
[ "$validated_count" -eq "$expected_count" ] || fail "expected $expected_count validated READMEs, found $validated_count"

printf '%s/%s Chinese READMEs validated\n' "$validated_count" "$expected_count"
