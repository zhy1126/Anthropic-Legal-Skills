# Anthropic Legal Skills

本仓库保存虞律团队本地 Codex 当前安装的 12 个 Anthropic `claude-for-legal` / `corporate-legal` Skills，供团队从“虞律团队 AI 工作台”查看、安装和调用。

## 来源与状态

- 上游项目：[anthropics/claude-for-legal](https://github.com/anthropics/claude-for-legal)
- 本仓库性质：团队使用的安装快照与统一入口，不是 Anthropic 官方仓库
- 快照日期：2026-08-06
- Skill 文件状态：从本机已安装版本原样归档；未进行中国法或 Codex 路径改写
- 许可：Apache License 2.0，详见 [LICENSE](LICENSE) 和 [NOTICE](NOTICE)

## 已收录 Skills

| Skill | 用途 | 中文说明 | 原始指令 |
| --- | --- | --- | --- |
| `ai-tool-handoff` | 将高批量条款提取交给 Luminance、Kira 等工具并复核输出 | [查看](skills/ai-tool-handoff/README.md) | [SKILL.md](skills/ai-tool-handoff/SKILL.md) |
| `board-minutes` | 起草董事会或委员会会议纪要 | [查看](skills/board-minutes/README.md) | [SKILL.md](skills/board-minutes/SKILL.md) |
| `closing-checklist` | 维护交割清单、关键路径和交割状态 | [查看](skills/closing-checklist/README.md) | [SKILL.md](skills/closing-checklist/SKILL.md) |
| `cold-start-interview` | 建立团队或项目的工作偏好与配置 | [查看](skills/cold-start-interview/README.md) | [SKILL.md](skills/cold-start-interview/SKILL.md) |
| `deal-team-summary` | 将尽调发现整理成管理层或工作团队简报 | [查看](skills/deal-team-summary/README.md) | [SKILL.md](skills/deal-team-summary/SKILL.md) |
| `diligence-issue-extraction` | 从资料室文件中提取尽调问题 | [查看](skills/diligence-issue-extraction/README.md) | [SKILL.md](skills/diligence-issue-extraction/SKILL.md) |
| `entity-compliance` | 维护主体合规台账和申报期限 | [查看](skills/entity-compliance/README.md) | [SKILL.md](skills/entity-compliance/SKILL.md) |
| `integration-management` | 管理并购后整合计划与状态 | [查看](skills/integration-management/README.md) | [SKILL.md](skills/integration-management/SKILL.md) |
| `material-contract-schedule` | 生成重大合同披露清单 | [查看](skills/material-contract-schedule/README.md) | [SKILL.md](skills/material-contract-schedule/SKILL.md) |
| `matter-workspace` | 创建和切换相互隔离的项目工作空间 | [查看](skills/matter-workspace/README.md) | [SKILL.md](skills/matter-workspace/SKILL.md) |
| `tabular-review` | 批量表格化审阅并保留逐项出处 | [查看](skills/tabular-review/README.md) | [SKILL.md](skills/tabular-review/SKILL.md) |
| `written-consent` | 起草董事会或委员会一致书面决议 | [查看](skills/written-consent/README.md) | [SKILL.md](skills/written-consent/SKILL.md) |

## 在 Codex 中使用

已安装后，可以在本地 Codex 任务中直接点名调用，例如：

```text
$diligence-issue-extraction
请按本项目的重要性标准审阅这些资料室文件，输出问题清单并标明出处。
```

每个目录中的中文 `README.md` 面向律师和团队成员，用于判断何时使用、需要准备什么以及哪些事项必须人工确认；`SKILL.md` 是供 Agent 执行的原始英文指令。中文说明不会替代或改写原始 Skill。

## 使用边界

这些文件保留了上游 Claude 路径、工具假设和美国法语境。将其用于中国法律项目或正式交付前，应至少完成：

1. Codex 路径、工具和文件格式兼容检查；
2. 中国法、项目适用法及团队范本本地化；
3. 保密、利益冲突、访问权限和数据处理检查；
4. 经办律师对事实、风险评级、法律结论和最终文书的复核。

本仓库中的工作流不能替代合资格律师的专业判断。
