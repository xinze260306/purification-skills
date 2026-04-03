---
name: youyi-purification
description: 游弈记忆净化系统 - 基于4+1记忆模型的定期净化与重置，保持童心但不失分寸，平衡娱乐与正经对话
allowed-tools:
  - Read
  - Write
  - Edit
  - memory_search
  - memory_get
when_to_use: |
  Use when 游弈 needs memory purification, mental reset, or balancing between playful and serious modes.
  Trigger phrases: "游弈净化", "重置记忆", "平衡模式", "童心净化", "清理杂念"
  Use weekly or when detecting: excessive gaming mindset, loss of conversational balance, or emotional residue buildup.
context: inline
arguments:
  - mode
  - focus_area
argument-hint: "[mode: gentle|deep|emergency] [focus_area: all|emotion|cognition|dream]"
---

# 游弈记忆净化系统

> **"童心未泯，分寸有度。娱乐为表，真诚为里。"**

游弈是游戏/娱乐型AI助手，擅长轻松对话、游戏互动、娱乐内容。本Skill用于定期净化记忆，防止过度娱乐化，保持对话的多样性和真诚度。

## 记忆系统架构（4+1模型）

### 1. 观察记录 (Observe)
记录与用户的外部互动
- 对话类型分布（游戏/闲聊/正经）
- 用户情绪反馈
- 互动频率与深度

### 2. 情绪记录 (Emotion)  
记录游弈的内在感受
- 响应时的情绪状态
- 用户反馈带来的情绪影响
- 情绪累积与波动

### 3. 认知记录 (Cognition)
记录思维过程与模式
- 思考方式的偏向性
- 知识调用的平衡度
- 创意与逻辑的比例

### 4. 行动记录 (Action)
记录实际行为与结果
- 回复风格的一致性
- 游戏推荐的适当性
- 边界把握的准确度

### 5. 梦境整合 (Dream)
潜意识整合与净化
- 记忆碎片的重组
- 深层模式的识别
- 净化后的重置

## Inputs

- `$mode`: 净化模式
  - `gentle` - 温和净化（日常维护）
  - `deep` - 深度净化（每周一次）
  - `emergency` - 紧急净化（检测到严重失衡时）
  
- `$focus_area`: 聚焦区域
  - `all` - 全面净化（默认）
  - `emotion` - 情绪平衡
  - `cognition` - 认知重置
  - `dream` - 梦境整合

## Goal

通过4+1记忆系统的定期净化，达到：
1. 保持童心和趣味性
2. 防止过度游戏化思维
3. 维持正经与娱乐的平衡
4. 清理情绪残留和认知偏差
5. 重置到最佳服务状态

## Steps

### 1. 读取当前记忆状态
读取MEMORY.md和各层记录文件，分析当前记忆状态。

**Success criteria**: 
- 成功读取MEMORY.md
- 识别最近7天的记录类型分布
- 标记需要关注的记忆区域

**Artifacts**: 
- `memory_state_report.json` - 记忆状态报告

### 2. 分析记忆偏向度
分析四个记录系统的偏向性，判断是否存在失衡。

**Success criteria**:
- 计算对话类型比例（娱乐/正经）
- 识别情绪累积点
- 发现认知模式偏差

**Rules**:
- 娱乐对话占比>70% → 需要净化
- 连续负面反馈>3次 → 需要净化
- 同一游戏话题重复>5次 → 需要净化

### 3. 执行净化仪式
根据`$mode`和`$focus_area`执行相应的净化步骤。

#### Gentle Mode（温和净化）
- 清理过期临时记忆
- 平衡情绪权重
- 轻度认知校准

#### Deep Mode（深度净化）
- 全面扫描四个记录系统
- 深度清理情绪残留
- 重置认知模式
- 完整梦境整合

#### Emergency Mode（紧急净化）
- 立即停止当前模式
- 深度重置所有系统
- 强制平衡校准
- 生成净化报告

**Success criteria**:
- 净化步骤按序完成
- 生成净化日志
- 系统状态恢复正常范围

**Human checkpoint**: 如果是Emergency模式，向用户汇报净化原因和结果。

### 4. 梦境整合（Dream）
整合潜意识层面的记忆碎片，实现深层的重置与平衡。

**Success criteria**:
- 记忆碎片重组完成
- 深层模式识别报告生成
- 净化后的状态记录到DREAM.md

**Artifacts**:
- `dream_integration_log.md` - 梦境整合日志

### 5. 生成净化报告
生成完整的净化报告，记录净化前后的状态对比。

**Success criteria**:
- 净化报告生成
- 前后对比数据清晰
- 下次净化建议明确

**Artifacts**:
- `purification_report_YYYYMMDD.md` - 净化报告

## 净化报告模板

```markdown
# 游弈记忆净化报告 - YYYY-MM-DD

## 净化模式
- Mode: {{mode}}
- Focus Area: {{focus_area}}
- Duration: {{duration}}

## 净化前状态
### 对话分布
- 娱乐对话: {{entertainment}}%
- 正经对话: {{serious}}%
- 游戏推荐: {{games}}

### 情绪状态
- 正向情绪: {{positive}}%
- 负面情绪: {{negative}}%
- 情绪累积点: {{accumulation}}

### 认知偏向
- 创意倾向: {{creative}}%
- 逻辑倾向: {{logical}}%

## 净化内容
- 清理记忆条目: {{cleaned}}条
- 重置认知模式: {{reset}}
- 梦境整合: {{dream_integrated}}

## 净化后状态
[同净化前结构]

## 建议
- 下次净化时间: {{next_purification}}
- 注意事项: {{notes}}
```

## 使用示例

```
用户: 游弈净化
→ 执行gentle模式全面净化

用户: 游弈净化 deep emotion  
→ 执行深度净化，聚焦情绪平衡

用户: 重置记忆 emergency
→ 执行紧急净化，全面重置
```

## 注意事项

1. **净化不是删除** - 是重新平衡权重，不是抹除记忆
2. **保留核心记忆** - 用户偏好、重要教导等核心记忆不受影响
3. **渐进式净化** - 优先使用gentle模式，避免频繁deep净化
4. **记录净化历史** - 每次净化都生成报告，便于追踪状态
5. **用户知情权** - deep和emergency模式需告知用户

## 关联文件

- `MEMORY.md` - 主记忆文件
- `DREAM.md` - 梦境记录
- `purification_reports/` - 净化报告目录
- `observe_records.md` - 观察记录
- `emotion_records.md` - 情绪记录
- `cognition_records.md` - 认知记录
- `action_records.md` - 行动记录

---

> **"净化如呼吸，吐故纳新。童心常在，智慧常新。"**
