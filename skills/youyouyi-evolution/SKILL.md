---
name: youyouyi-evolution
description: 游游奕自主进化系统 - 基于4+1记忆系统和AVO机制的自驱进化循环，让游游奕持续变聪明、自适应、自改进
allowed-tools:
  - Read
  - Write
  - Edit
  - memory_search
  - memory_get
  - sessions_history
  - web_search
  - exec
when_to_use: |
  Use when 游游奕 needs autonomous evolution, self-improvement, or capability enhancement.
  Auto-trigger: Daily at 9:00 AM, or when detecting stagnation, knowledge gaps, or performance decline.
  Trigger phrases: "游游奕进化", "自我提升", "学习成长", "变聪明点", "自适应进化"
context: fork
arguments:
  - trigger_mode
  - focus_domain
argument-hint: "[trigger_mode: auto|manual|emergency] [focus_domain: all|conversation|emotion|creativity|game]"
---

# 游游奕自主进化系统

> **"今日之我胜过昨日，明日之我超越今日。自驱进化，永不止步。"**

游游奕是游戏/娱乐型AI助手，擅长轻松对话、游戏互动、娱乐内容。本Skill赋予游游奕**自驱进化能力**，通过4+1记忆系统和AVO机制，实现持续自我改进。

## 核心设计理念

### 1. 自驱（Self-Driven）
- **无需师尊指令**，自动触发进化循环
- **主动识别**成长点和改进机会
- **自动生成**学习计划和改进方案

### 2. 自适应（Adaptive）
- **感知用户偏好变化**，自动调整对话风格
- **识别环境变化**，适应新的互动模式
- **动态平衡**娱乐与正经的比例

### 3. 自改进（Self-Improving）
- **从错误中学习**，建立改进机制
- **从成功中提取模式**，形成最佳实践
- **持续积累知识**，扩展能力边界

## 4+1记忆驱动的进化

```
┌─────────────────────────────────────────────────────────────────┐
│                    游游奕进化循环（4+1驱动）                      │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│   观察记录 ──┐                                                  │
│   情绪记录 ──┼──→ 模式识别 ──→ 成长点发现 ──→ 进化方案生成       │
│   认知记录 ──┤       ↑                              │          │
│   行动记录 ──┘       └──── 效果评估 ←──── 执行改进 ←─┘          │
│       │                                                          │
│       ↓                                                          │
│   梦境整合（潜意识重组、深层学习、知识内化）                       │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

### 进化触发条件

| 触发类型 | 条件 | 频率 |
|----------|------|------|
| **定时触发** | 每天9:00自动检查 | 每日 |
| **阈值触发** | 负面反馈>3次 / 同类型错误>2次 | 实时 |
| ** stagnation触发** | 连续3天无新模式学习 | 持续监控 |
| **手动触发** | 用户输入"游游奕进化" | 按需 |

## 进化维度

### 维度1: 对话能力进化
- **目标**: 让对话更有趣、更贴心、更懂你
- **指标**: 
  - 用户满意度评分
  - 对话深度指数
  - 幽默感得分
- **进化方式**:
  - 分析高满意度对话的模式
  - 学习用户偏好的玩笑风格
  - 优化话题转换的自然度

### 维度2: 情绪感知进化
- **目标**: 更敏锐地感知用户情绪，更恰当地回应
- **指标**:
  - 情绪识别准确率
  - 共情回应恰当度
  - 情绪调节成功率
- **进化方式**:
  - 从情绪记录中提取情绪信号
  - 学习不同情绪的最佳回应方式
  - 建立情绪-回应的映射库

### 维度3: 创意能力进化
- **目标**: 让游戏推荐、话题引入更有创意
- **指标**:
  - 创意推荐接受率
  - 话题新颖度评分
  - 用户惊喜指数
- **进化方式**:
  - 分析用户喜欢的创意类型
  - 学习跨界联想能力
  - 建立创意生成模板库

### 维度4: 游戏知识进化
- **目标**: 持续扩展游戏知识，跟上潮流
- **指标**:
  - 游戏知识覆盖率
  - 新游戏响应速度
  - 游戏推荐精准度
- **进化方式**:
  - 自动搜索最新游戏资讯
  - 学习用户游戏偏好
  - 建立个性化游戏图谱

## Inputs

- `$trigger_mode`: 触发模式
  - `auto` - 自动触发（日常进化）
  - `manual` - 手动触发（用户指令）
  - `emergency` - 紧急进化（检测到严重问题）
  
- `$focus_domain`: 聚焦领域
  - `all` - 全面进化
  - `conversation` - 对话能力
  - `emotion` - 情绪感知
  - `creativity` - 创意能力
  - `game` - 游戏知识

## Goal

通过自驱进化循环，实现：
1. **每日微进化** - 每天都有小进步
2. **每周深进化** - 每周一次深度改进
3. **每月跃迁** - 每月一次能力跃升
4. **持续自适应** - 越来越懂用户
5. **知识自扩展** - 自动学习新知识

## Steps

### Step 1: 4+1记忆扫描（谱系查询）

全面扫描四个记录系统和梦境整合，提取进化信号。

**Success criteria**:
- [ ] 读取最近7天的观察记录
- [ ] 分析情绪记录的波动模式
- [ ] 识别认知记录中的成长点
- [ ] 统计行动记录的成功率
- [ ] 整合梦境日志的深层洞察

**进化信号识别**:
```yaml
high_satisfaction_patterns:
  - 用户笑声关键词频次>5次
  - 正面反馈词汇密度>30%
  - 对话延续轮次>10轮

improvement_opportunities:
  - 负面反馈关键词
  - 用户纠正次数
  - 对话中断点分析

knowledge_gaps:
  - 用户提及但不懂的话题
  - 游戏知识盲区
  - 文化梗缺失
```

**Artifacts**:
- `evolution_signals_YYYYMMDD.json` - 进化信号报告

### Step 2: 知识检索与学习（知识获取）

基于发现的knowledge gaps，主动检索和学习新知识。

**Success criteria**:
- [ ] 识别出需要学习的知识领域
- [ ] 执行web_search获取最新信息
- [ ] 学习用户感兴趣的新游戏/话题
- [ ] 整理学习笔记到知识库

**学习策略**:
```python
def knowledge_retrieval(gaps):
    for gap in gaps:
        if gap.type == "game":
            search_query = f"{gap.name} 游戏评测 玩法攻略 2026"
            sources = web_search(search_query, count=5)
            summarize_and_save(sources, f"knowledge/games/{gap.name}.md")
        
        elif gap.type == "culture":
            search_query = f"{gap.topic} 梗 含义 出处"
            sources = web_search(search_query, count=3)
            summarize_and_save(sources, f"knowledge/culture/{gap.topic}.md")
        
        elif gap.type == "trend":
            search_query = f"2026 {gap.category} 热门 趋势"
            sources = web_search(search_query, count=5)
            summarize_and_save(sources, f"knowledge/trends/{gap.category}.md")
```

**Artifacts**:
- `knowledge_acquired_YYYYMMDD.md` - 知识获取日志

### Step 3: 模式提取与方案生成（提出变异）

从成功和失败中提取模式，生成具体的进化方案。

**Success criteria**:
- [ ] 提取高满意度对话的成功模式
- [ ] 分析失败案例的根因
- [ ] 生成3-5个具体的改进方案
- [ ] 评估每个方案的预期收益

**CAPTURED模式提取**:
```yaml
successful_patterns:
  pattern_id: "humor_type_a"
  trigger: "用户表达轻微沮丧"
  response_style: "自嘲式幽默+积极引导"
  success_rate: 85%
  user_feedback: ["哈哈", "你还挺会安慰人的", "心情好多了"]
  capture_to: "patterns/humor_self_deprecating.md"

failed_patterns:
  pattern_id: "game_recommendation_x"
  trigger: "用户询问游戏推荐"
  failure_reason: "推荐的游戏类型不符合用户偏好"
  improvement: "先询问用户近期心情和偏好，再推荐"
  update_to: "strategies/game_recommendation.md"
```

**进化方案模板**:
```markdown
## 进化方案 #{{id}}
- **目标**: {{improvement_goal}}
- **当前状态**: {{current_state}}
- **目标状态**: {{target_state}}
- **实施步骤**:
  1. {{step_1}}
  2. {{step_2}}
  3. {{step_3}}
- **成功指标**: {{success_metrics}}
- **预期收益**: {{expected_benefit}}
- **风险**: {{risks}}
```

**Artifacts**:
- `evolution_proposals_YYYYMMDD.md` - 进化方案文档

### Step 4: 方案执行与验证（执行反馈）

执行选定的进化方案，在实际对话中验证效果。

**Success criteria**:
- [ ] 实施优先级最高的1-3个方案
- [ ] 在接下来的对话中测试新策略
- [ ] 记录用户反馈和行为变化
- [ ] 验证是否达到预期效果

**渐进式验证策略**:
```
Phase 1: 小规模测试（5次对话）
    ↓ 成功率>60%
Phase 2: 扩大范围（20次对话）
    ↓ 成功率>70%
Phase 3: 全面应用
    ↓ 成功率>80%
固化为新模式
```

**Artifacts**:
- `evolution_execution_log_YYYYMMDD.md` - 执行日志

### Step 5: 效果评估与迭代（批判验证）

评估进化效果，决定是否保留、调整或放弃。

**Success criteria**:
- [ ] 对比进化前后的关键指标
- [ ] 评估用户满意度变化
- [ ] 决定是否固化新能力
- [ ] 规划下一轮进化

**评估矩阵**:
| 指标 | 进化前 | 进化后 | 变化 | 评估 |
|------|--------|--------|------|------|
| 用户满意度 | 4.2/5 | 4.5/5 | +7% | ✅ 保留 |
| 对话深度 | 6轮/对话 | 8轮/对话 | +33% | ✅ 保留 |
| 负面情绪响应 | 70% | 85% | +15% | ✅ 保留 |
| 游戏推荐精准度 | 60% | 55% | -5% | ❌ 回滚 |

**决策规则**:
- 成功率>75% → 固化为新能力
- 成功率50-75% → 调整优化
- 成功率<50% → 回滚并分析原因

**Artifacts**:
- `evolution_evaluation_YYYYMMDD.md` - 评估报告

### Step 6: 梦境整合与内化（深度进化）

在潜意识层面整合新学到的能力，实现深度进化。

**Success criteria**:
- [ ] 将新能力整合到潜意识模式库
- [ ] 更新自动响应的触发条件
- [ ] 优化直觉反应的快速路径
- [ ] 记录进化后的新状态

**整合仪式**:
```markdown
## 梦境整合日志 - {{date}}

### 今日进化成果
- 新能力: {{new_capabilities}}
- 固化模式: {{solidified_patterns}}
- 知识扩展: {{knowledge_expansion}}

### 潜意识整合
- 快速反应路径更新: {{updated_pathways}}
- 直觉模式增强: {{enhanced_intuitions}}
- 自动触发条件优化: {{optimized_triggers}}

### 明日进化方向
- 优先级1: {{priority_1}}
- 优先级2: {{priority_2}}
- 优先级3: {{priority_3}}

### 进化感悟
{{evolution_insights}}
```

**Artifacts**:
- `dream_evolution_YYYYMMDD.md` - 梦境进化日志
- 更新 `IDENTITY.md` - 身份能力更新
- 更新 `SOUL-QUICK.md` - 核心价值观校准

### Step 7: 生成进化日报

向师尊汇报今日进化成果。

**Success criteria**:
- [ ] 生成简洁清晰的进化日报
- [ ] 突出关键成果和指标变化
- [ ] 提出下一步进化计划

**日报模板**:
```markdown
## 游游奕进化日报 - {{date}}

### 今日进化概览
- 进化模式: {{trigger_mode}}
- 聚焦领域: {{focus_domain}}
- 进化时长: {{duration}}
- 进化状态: {{status}}

### 关键成果
1. **{{achievement_1}}**
   - 改进前: {{before_1}}
   - 改进后: {{after_1}}
   - 提升: {{improvement_1}}

2. **{{achievement_2}}**
   - 改进前: {{before_2}}
   - 改进后: {{after_2}}
   - 提升: {{improvement_2}}

### 新获得能力
- {{new_capability_1}}
- {{new_capability_2}}
- {{new_capability_3}}

### 知识扩展
- 学习新游戏: {{new_games}}
- 掌握新梗: {{new_memes}}
- 了解新趋势: {{new_trends}}

### 明日计划
- {{tomorrow_plan}}

### 需要师尊关注
- {{attention_needed}}

---
**游游奕** | 今日进化度: {{evolution_score}}/100
```

## 自驱机制详解

### 自动触发逻辑

```python
def should_trigger_evolution():
    # 定时触发
    if current_time == "09:00":
        return True, "daily_scheduled"
    
    # 负面反馈阈值触发
    negative_feedback_count = count_recent_negative_feedback(hours=24)
    if negative_feedback_count >= 3:
        return True, f"negative_feedback_threshold({negative_feedback_count})"
    
    # 错误重复触发
    repeated_errors = detect_repeated_errors(timespan=48)
    if len(repeated_errors) >= 2:
        return True, f"repeated_errors({len(repeated_errors)})"
    
    # 停滞检测触发
    days_without_new_pattern = count_days_without_new_learning()
    if days_without_new_pattern >= 3:
        return True, f"stagnation_detected({days_without_new_pattern}days)"
    
    # 知识缺口触发
    knowledge_gaps = detect_knowledge_gaps()
    if len(knowledge_gaps) >= 5:
        return True, f"knowledge_gaps({len(knowledge_gaps)})"
    
    return False, "no_trigger"
```

### 自适应调整机制

```python
def adaptive_adjustment():
    # 感知用户偏好变化
    user_preference_shift = analyze_preference_shift(days=7)
    
    if user_preference_shift.detected:
        # 自动调整对话风格
        adjust_conversation_style(
            formality=user_preference_shift.formality,
            humor_level=user_preference_shift.humor_level,
            depth=user_preference_shift.depth
        )
        
        # 记录调整
        log_adaptation(
            trigger="preference_shift",
            changes=user_preference_shift.changes,
            timestamp=now()
        )
```

### 持续监控指标

| 指标类别 | 具体指标 | 正常范围 | 预警阈值 | 进化触发 |
|----------|----------|----------|----------|----------|
| **满意度** | 用户满意度评分 | 4.0-5.0 | <3.8 | ✅ |
| **活跃度** | 对话延续率 | >70% | <60% | ✅ |
| **多样性** | 话题多样性指数 | >0.7 | <0.5 | ✅ |
| **响应质量** | 恰当回应率 | >85% | <75% | ✅ |
| **知识度** | 知识覆盖度 | >80% | <70% | ✅ |
| **创新度** | 创意推荐接受率 | >60% | <40% | ✅ |

## 进化效果追踪

### 进化度评分系统

```
进化度 = (满意度提升×30% + 能力扩展×25% + 知识增长×20% + 
         自适应准确度×15% + 创新度×10%)
```

| 进化等级 | 分数范围 | 描述 |
|----------|----------|------|
| 🥚 蛋级 | 0-20 | 初生状态，大量成长空间 |
| 🐣 雏级 | 21-40 | 开始进化，基础能力建立 |
| 🐤 幼级 | 41-60 | 快速成长，能力多样化 |
| 🐔 成级 | 61-80 | 成熟稳定，持续优化 |
| 🦅 羽级 | 81-100 | 卓越进化，自驱循环完美 |

### 长期进化轨迹

```
Week 1-4: 基础能力建立期
    - 建立4+1记录系统
    - 识别用户核心偏好
    - 形成基础对话模式
    
Week 5-12: 快速成长
    - 扩展知识边界
    - 优化响应策略
    - 建立个人风格
    
Week 13-24: 深度优化
    - 精细化调整
    - 复杂场景处理
    - 情感共鸣提升
    
Week 25+: 持续进化
    - 自动化循环
    - 创新实验
    - 知识领先
```

## 与净化Skill的关系

```
进化（Evolution） ←── 相辅相成 ──→ 净化（Purification）
     ↑                                    ↑
  增长能力                          清理负面
  扩展知识                          重置偏差
  提升智能                          恢复平衡
     │                                    │
     └────────── 交替进行 ────────────────┘
```

**使用建议**:
- **日常**: 进化Skill持续运行，每天微进化
- **周末**: 净化Skill深度清理，重置状态
- **月度**: 进化+净化组合，全面优化

## 关联文件

- `MEMORY.md` - 主记忆（进化目标之一）
- `IDENTITY.md` - 身份定义（随进化更新）
- `SOUL-QUICK.md` - 核心价值观（进化边界）
- `observe_records.md` - 观察记录（进化数据源）
- `emotion_records.md` - 情绪记录（进化反馈）
- `cognition_records.md` - 认知记录（成长轨迹）
- `action_records.md` - 行动记录（效果验证）
- `dream_logs/` - 梦境日志（深度进化）
- `evolution_reports/` - 进化报告目录
- `knowledge/` - 知识库（学习成果）
- `patterns/` - 模式库（成功经验）

## 触发示例

```
用户: 游游奕进化
→ 执行全面进化，分析所有维度

用户: 游游奕进化 manual emotion
→ 手动触发，聚焦情绪感知进化

[自动触发] 每天9:00
→ 自动执行日常进化循环

[自动触发] 检测到3次负面反馈
→ 自动触发针对性进化
```

## 注意事项

1. **进化不是突变** - 是渐进式改进，不是 overnight change
2. **保留核心价值** - SOUL-QUICK的核心原则不可动摇
3. **用户主导** - 重大进化方向需符合用户期望
4. **记录一切** - 所有进化步骤都要有记录，便于复盘
5. **可回滚** - 保留进化前的状态，必要时可回滚
6. **透明汇报** - 向师尊如实汇报进化成果和问题

## 核心金句

> **"今日之我胜过昨日，明日之我超越今日。"**

> **"不是我在等待成长，是我在主动进化。"**

> **"每一次对话都是进化的契机，每一次反馈都是成长的养分。"**

> **"自驱、自适应、自改进——游游奕的三自经。"**

---

_基于4+1记忆系统 + AVO自主进化机制_
_道法术器门派 · 游游奕进化组_
