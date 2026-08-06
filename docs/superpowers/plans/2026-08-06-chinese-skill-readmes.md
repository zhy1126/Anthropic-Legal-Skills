# Chinese Skill READMEs Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 为 12 个 Anthropic Legal Skills 增加一致、准确、可直接使用的中文 README，并发布到 GitHub。

**Architecture:** 原始 `SKILL.md` 保持不变，每个 Skill 目录新增独立的人类使用说明。一个仓库级校验脚本检查文件数量、固定栏目、调用命令、原始文件链接和根 README 入口。

**Tech Stack:** Markdown、POSIX shell、Git、GitHub

---

### Task 1: 建立 README 完整性校验

**Files:**
- Create: `tests/check-chinese-readmes.sh`

- [ ] 写入校验：预期 12 个目录、每个目录有 README、固定栏目齐全、包含 `$skill-name`、链接 `SKILL.md`。
- [ ] 运行 `sh tests/check-chinese-readmes.sh`，确认因 README 缺失而失败。

### Task 2: 编写 12 份实用型中文说明

**Files:**
- Create: `skills/ai-tool-handoff/README.md`
- Create: `skills/board-minutes/README.md`
- Create: `skills/closing-checklist/README.md`
- Create: `skills/cold-start-interview/README.md`
- Create: `skills/deal-team-summary/README.md`
- Create: `skills/diligence-issue-extraction/README.md`
- Create: `skills/entity-compliance/README.md`
- Create: `skills/integration-management/README.md`
- Create: `skills/material-contract-schedule/README.md`
- Create: `skills/matter-workspace/README.md`
- Create: `skills/tabular-review/README.md`
- Create: `skills/written-consent/README.md`

- [ ] 完整阅读每个 `SKILL.md`，提取触发条件、输入、输出、流程和限制。
- [ ] 按设计规范的固定结构编写各 README。
- [ ] 核对调用命令、模式参数、成果形式和必须人工确认的节点。

### Task 3: 更新仓库入口

**Files:**
- Modify: `README.md`

- [ ] 为 Skill 总表增加中文说明和原始 Skill 两类链接。
- [ ] 补充 README 与 `SKILL.md` 的用途区别。

### Task 4: 验证并发布

**Files:**
- Test: `tests/check-chinese-readmes.sh`

- [ ] 运行 `sh tests/check-chinese-readmes.sh`，预期输出 `12/12 Chinese READMEs validated`。
- [ ] 运行敏感信息扫描、链接检查和 `git diff --check`。
- [ ] 确认 `git diff -- skills/*/SKILL.md` 无输出。
- [ ] 提交本次范围内文件并推送 `main`。
- [ ] 从 GitHub 抽查根 README 和代表性 Skill 中文说明。
