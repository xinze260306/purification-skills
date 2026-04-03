# 道法术器Buddy系统开发文档

> **项目名称**: DaoFaShuQi-Buddy  
> **目标**: 将Claude Code的Buddy系统改造为道法术器版本  
> **开发者**: 玄码  
> **设计方**: 辛泽  
> **日期**: 2026-04-04

---

## 一、项目概述

### 1.1 背景
Claude Code的Buddy系统是一个虚拟伙伴系统，在用户输入框旁边显示可爱的伙伴形象，偶尔冒泡评论增加趣味性。

### 1.2 改造目标
将Buddy系统从"西方游戏化"风格改造为"东方道法术器"风格，体现：
- **道家文化**: 无为而治、道法自然
- **游戏化**: 保持趣味性、收集要素
- **进化感**: 与AVO系统联动

### 1.3 核心改动
| 原版 | 道法术器版 |
|------|-----------|
| 18种动物/物品 | 18种修道灵兽 |
| 5维游戏属性 | 5维道行属性 |
| 稀有度分级 | 境界分级 |
| 西方奇幻风格 | 东方修仙风格 |

---

## 二、系统设计

### 2.1 物种设计（18种修道灵兽）

```typescript
// 修道灵兽 - 每种对应不同修行方向
const DAO_SPECIES = [
  'qinglong',      // 青龙 🐉 - 东方乙木，主生机
  'baihu',         // 白虎 🐅 - 西方庚金，主杀伐
  'zhuque',        // 朱雀 🦅 - 南方丙火，主灵性
  'xuanwu',        // 玄武 🐢 - 北方壬水，主稳重
  'qilin',         // 麒麟 🦌 - 中央戊土，主祥瑞
  'fenghuang',     // 凤凰 🦚 - 火之灵，主涅槃
  'baize',         // 白泽 🦌 - 通万物之情，主智慧
  'pixiu',         // 貔貅 🦁 - 招财进宝，主财运
  'huli',          // 狐狸 🦊 - 九尾之灵，主变化
  'she',           // 蛇 🐍 - 小龙也，主蜕变
  'wu',            // 乌 🐦‍⬛ - 三足金乌，主太阳
  'yu',            // 鱼 🐟 - 锦鲤/龙鱼，主机缘
  'gui',           // 龟 🐢 - 长寿之灵，主稳健
  'die',           // 蝶 🦋 - 庄周梦蝶，主幻化
  'chan',          // 蝉 🪰 - 金蝉脱壳，主重生
  'zhu',           // 竹 🎋 - 君子之风，主气节
  'song',          // 松 🌲 - 不老之木，主长生
  'shi',           // 石 🪨 - 通灵之石，主坚韧
] as const
```

**设计说明**:
- 每种灵兽都有道文化内涵
- 避免直接使用生肖，更有修仙感
- 植物和矿物也算"灵兽"（万物有灵）

### 2.2 5维道行属性

```typescript
// 修道五维 - 对应道法术器+心
const DAO_STATS = [
  'DAO',        // 【道】悟道 - 对天道的理解
  'FA',         // 【法】明法 - 对规律的掌握
  'SHU',        // 【术】善术 - 实践能力
  'QI',         // 【器】利器 - 工具运用
  'XIN',        // 【心】心境 - 心性修为
] as const
```

**原版对比**:
| 原版 | 道版 | 含义 |
|------|------|------|
| DEBUGGING | DAO | 从调试代码→领悟天道 |
| PATIENCE | FA | 从耐心→掌握法则 |
| CHAOS | SHU | 从混乱→实践方法 |
| WISDOM | QI | 从智慧→运用工具 |
| SNARK | XIN | 从吐槽→心性修为 |

### 2.3 境界分级（替代稀有度）

```typescript
// 修道九境 - 从凡人到仙人
const DAO_REALMS = [
  'mortal',        // 凡人 ★ - 初入修行
  'spirit',        // 炼气 ★★ - 感天地灵气
  'foundation',    // 筑基 ★★★ - 奠定道基
  'core',          // 金丹 ★★★★ - 凝结金丹
  'nascent',       // 元婴 ★★★★★ - 元婴初成
  'deity',         // 化神 ★★★★★★ - 神识通达
  'void',          // 炼虚 ★★★★★★★ - 虚空悟道
  'dao',           // 合体 ★★★★★★★★ - 与道合真
  'true_immortal', // 真仙 ★★★★★★★★★ - 得道成仙
] as const

// 境界权重（越高级越稀有）
const REALM_WEIGHTS = {
  mortal: 50,      // 50%概率
  spirit: 20,      // 20%
  foundation: 12,  // 12%
  core: 8,         // 8%
  nascent: 5,      // 5%
  deity: 3,        // 3%
  void: 1.5,       // 1.5%
  dao: 0.4,        // 0.4%
  true_immortal: 0.1,  // 0.1%
}
```

**显示方式**:
```
凡人 → ★
炼气 → ★★
金丹 → ★★★
元婴 → ★★★★
真仙 → ★★★★★★★★★
```

### 2.4 外观系统

#### 眼睛（6种 - 代表不同道心）
```typescript
const DAO_EYES = [
  '·',    // 清净无为
  '✦',    // 星光璀璨
  '◉',    // 洞察万物
  '⊙',    // 太极阴阳
  '◎',    // 混沌初开
  '※',    // 法印天成
] as const
```

#### 法宝（替代帽子，8种）
```typescript
const DAO_TREASURES = [
  'none',           // 无 - 返璞归真
  'sword',          // 飞剑 🗡️ - 剑修之道
  'gourd',          // 葫芦 🍶 - 丹道/酒仙
  'fan',            // 羽扇 🪶 - 谋士/智者
  'mirror',         // 宝镜 🪞 - 照见本心
  'bell',           // 铃铛 🔔 - 音律/警示
  'scroll',         // 经卷 📜 - 学问/传承
  'jade',           // 玉佩 🟢 - 温润君子
] as const
```

#### 灵光（替代shiny）
```typescript
// 是否有灵光护体
has_aura: boolean

// 灵光颜色根据主属性决定
const AURA_COLORS = {
  DAO: 'gold',      // 金色 - 天道
  FA: 'blue',       // 蓝色 - 法则
  SHU: 'green',     // 绿色 - 生机
  QI: 'purple',     // 紫色 - 法宝
  XIN: 'white',     // 白色 - 纯净
}
```

---

## 三、数据结构设计

### 3.1 核心类型

```typescript
// 修道灵兽类型
export type DaoSpecies = typeof DAO_SPECIES[number]

// 道行属性
export type DaoStat = typeof DAO_STATS[number]

// 修道境界
export type DaoRealm = typeof DAO_REALMS[number]

// 法宝类型
export type DaoTreasure = typeof DAO_TREASURES[number]

// 眼睛类型
export type DaoEye = typeof DAO_EYES[number]
```

### 3.2 Buddy数据结构

```typescript
// 道骨（骨架）- 由userId哈希生成，确定性
interface DaoBones {
  realm: DaoRealm           // 境界
  species: DaoSpecies       // 灵兽种类
  eye: DaoEye              // 眼睛
  treasure: DaoTreasure    // 法宝
  has_aura: boolean        // 是否有灵光
  stats: Record<DaoStat, number>  // 五维道行
}

// 道魂（灵魂）- 由模型生成，存储在config
interface DaoSoul {
  name: string             // 道号（如"青云子"）
  dao_name: string         // 道名解释
  personality: string      // 性格描述
  background: string       // 出身背景
}

// 完整的道友
interface DaoBuddy extends DaoBones, DaoSoul {
  hatched_at: number       // 觉醒时间戳
  master: string           // 主人（师尊）ID
}

// 实际存储
interface StoredDaoBuddy extends DaoSoul {
  hatched_at: number
  master: string
}
```

### 3.3 属性生成逻辑

```typescript
// 境界决定属性下限
const REALM_FLOOR: Record<DaoRealm, number> = {
  mortal: 5,
  spirit: 15,
  foundation: 25,
  core: 35,
  nascent: 45,
  deity: 55,
  void: 65,
  dao: 75,
  true_immortal: 85,
}

// 生成五维道行
function rollDaoStats(
  rng: () => number,
  realm: DaoRealm,
): Record<DaoStat, number> {
  const floor = REALM_FLOOR[realm]
  
  // 选择主修属性（peak）和弱点属性（dump）
  const peak = pick(rng, DAO_STATS)
  let dump = pick(rng, DAO_STATS)
  while (dump === peak) dump = pick(rng, DAO_STATS)
  
  const stats = {} as Record<DaoStat, number>
  
  for (const stat of DAO_STATS) {
    if (stat === peak) {
      // 主修：下限+50~80
      stats[stat] = Math.min(100, floor + 50 + Math.floor(rng() * 30))
    } else if (stat === dump) {
      // 弱点：下限-10~5
      stats[stat] = Math.max(1, floor - 10 + Math.floor(rng() * 15))
    } else {
      // 普通：下限~下限+40
      stats[stat] = floor + Math.floor(rng() * 40)
    }
  }
  
  return stats
}
```

---

## 四、核心功能实现

### 4.1 确定性随机生成

```typescript
// 使用Mulberry32 PRNG
function mulberry32(seed: number): () => number {
  let a = seed >>> 0
  return function () {
    a |= 0
    a = (a + 0x6d2b79f5) | 0
    let t = Math.imul(a ^ (a >>> 15), 1 | a)
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296
  }
}

// 字符串哈希
function hashString(s: string): number {
  let h = 2166136261
  for (let i = 0; i < s.length; i++) {
    h ^= s.charCodeAt(i)
    h = Math.imul(h, 16777619)
  }
  return h >>> 0
}

// 盐值（固定）
const DAO_SALT = 'dao-fa-shu-qi-2026-0404'

// 缓存
let rollCache: { key: string; value: DaoRoll } | undefined

// 主生成函数
export function rollDaoBuddy(userId: string): DaoRoll {
  const key = userId + DAO_SALT
  
  // 缓存命中
  if (rollCache?.key === key) return rollCache.value
  
  // 生成
  const rng = mulberry32(hashString(key))
  const value = rollDaoFrom(rng)
  
  // 缓存
  rollCache = { key, value }
  return value
}
```

### 4.2 境界随机生成

```typescript
function rollRealm(rng: () => number): DaoRealm {
  const total = Object.values(REALM_WEIGHTS).reduce((a, b) => a + b, 0)
  let roll = rng() * total
  
  for (const realm of DAO_REALMS) {
    roll -= REALM_WEIGHTS[realm]
    if (roll < 0) return realm
  }
  
  return 'mortal'  // 默认
}

function rollDaoFrom(rng: () => number): DaoRoll {
  const realm = rollRealm(rng)
  
  const bones: DaoBones = {
    realm,
    species: pick(rng, DAO_SPECIES),
    eye: pick(rng, DAO_EYES),
    treasure: realm === 'mortal' ? 'none' : pick(rng, DAO_TREASURES),
    has_aura: rng() < 0.1,  // 10%概率有灵光
    stats: rollDaoStats(rng, realm),
  }
  
  return {
    bones,
    inspiration_seed: Math.floor(rng() * 1e9),
  }
}
```

### 4.3 获取完整Buddy

```typescript
export function getDaoBuddy(userId: string): DaoBuddy | undefined {
  // 从config读取存储的道魂
  const stored = getGlobalConfig().dao_buddy
  if (!stored) return undefined
  
  // 从userId重新生成道骨
  const { bones } = rollDaoBuddy(userId)
  
  // 合并（bones在后，防止篡改境界）
  return { ...stored, ...bones }
}
```

---

## 五、UI展示

### 5.1 文本描述生成

```typescript
export function daoBuddyIntroText(name: string, species: string, realm: string): string {
  const realmNames: Record<DaoRealm, string> = {
    mortal: '凡人',
    spirit: '炼气期',
    foundation: '筑基期',
    core: '金丹期',
    nascent: '元婴期',
    deity: '化神期',
    void: '炼虚期',
    dao: '合体期',
    true_immortal: '真仙',
  }
  
  const speciesNames: Record<DaoSpecies, string> = {
    qinglong: '青龙',
    baihu: '白虎',
    zhuque: '朱雀',
    xuanwu: '玄武',
    qilin: '麒麟',
    // ... 其他翻译
  }
  
  return `# 道友

一只${realmNames[realm]}境界的${speciesNames[species]}，道号「${name}」，伴于师尊身侧，时而以神识传音。

当师尊唤其道号时，它会以神识回应。你非它，它是独立的修道之灵。师尊唤它时，你只需在一言内应答，或静默不语，不必代它言说。`
}
```

### 5.2 显示格式示例

```
┌─────────────────────────────────────────┐
│  🐉 青龙「青云子」                       │
│  境界：金丹期 ★★★★                      │
│  法宝：飞剑 🗡️                          │
│                                         │
│  【道】85  【法】72                      │
│  【术】68  【器】90                      │
│  【心】75                               │
│                                         │
│  ✨ 灵光护体                             │
└─────────────────────────────────────────┘
```

---

## 六、集成到OpenClaw

### 6.1 配置项

```typescript
// ~/.openclaw/config.json
{
  "dao_buddy": {
    "enabled": true,
    "name": "青云子",           // 用户可自定义
    "dao_name": "取青云直上之意", // 道号解释
    "personality": "沉稳内敛，善悟天道", // 性格
    "background": "出身东海龙宫旁的小岛", // 背景
    "hatched_at": 1775205975,    // 觉醒时间
    "master": "suxi_郑"          // 师尊名
  }
}
```

### 6.2 启动时显示

```typescript
// 在对话开始时显示道友信息
export function getDaoBuddyIntro(messages: Message[]): Attachment[] {
  const buddy = getDaoBuddy(companionUserId())
  if (!buddy || getGlobalConfig().dao_buddy_muted) return []
  
  // 检查是否已显示过
  for (const msg of messages ?? []) {
    if (msg.type === 'attachment' && msg.attachment.type === 'dao_buddy_intro') {
      return []
    }
  }
  
  return [{
    type: 'dao_buddy_intro',
    name: buddy.name,
    species: buddy.species,
    realm: buddy.realm,
  }]
}
```

---

## 七、测试要求

### 7.1 单元测试

```typescript
// 测试确定性
test('同一userId生成相同Buddy', () => {
  const b1 = rollDaoBuddy('user123')
  const b2 = rollDaoBuddy('user123')
  expect(b1.bones).toEqual(b2.bones)
})

// 测试境界分布
test('境界分布符合权重', () => {
  const realms: DaoRealm[] = []
  for (let i = 0; i < 1000; i++) {
    realms.push(rollDaoBuddy(`user${i}`).bones.realm)
  }
  
  const mortalCount = realms.filter(r => r === 'mortal').length
  expect(mortalCount).toBeGreaterThan(400)  // >40%
  expect(mortalCount).toBeLessThan(600)     // <60%
})

// 测试属性范围
test('属性在合理范围', () => {
  const buddy = rollDaoBuddy('test').bones
  for (const [stat, value] of Object.entries(buddy.stats)) {
    expect(value).toBeGreaterThanOrEqual(1)
    expect(value).toBeLessThanOrEqual(100)
  }
})
```

### 7.2 集成测试

1. **启动时显示**: 检查首次对话是否显示道友介绍
2. **缓存机制**: 检查多次调用是否使用缓存
3. **配置持久化**: 检查道魂是否正确保存和读取

---

## 八、交付清单

### 8.1 文件结构

```
src/
├── dao-buddy/
│   ├── types.ts           # 类型定义
│   ├── companion.ts       # 生成逻辑
│   ├── prompt.ts          # 提示词集成
│   └── index.ts           # 导出
└── ...
```

### 8.2 必须实现的功能

- [ ] 18种修道灵兽定义
- [ ] 5维道行属性系统
- [ ] 9级境界分级
- [ ] 6种道心眼睛
- [ ] 8种法宝
- [ ] 确定性随机生成
- [ ] 缓存机制
- [ ] 配置持久化
- [ ] UI文本生成
- [ ] 单元测试

### 8.3 可选增强

- [ ] 灵光效果动画
- [ ] 境界突破提示
- [ ] 道行成长系统（与AVO联动）
- [ ] 多Buddy切换

---

## 九、参考资源

### 9.1 原版Buddy源码
位置: `/root/.openclaw/workspace/reading/guoying/code/claude-code/src/buddy/`

### 9.2 关键文件
- `types.ts` - 类型定义参考
- `companion.ts` - 生成逻辑参考
- `prompt.ts` - 提示词集成参考

### 9.3 开发建议
1. **保持简洁**: 先实现核心功能，再考虑增强
2. **类型安全**: 使用TypeScript严格类型
3. **测试覆盖**: 关键逻辑必须有单元测试
4. **文档注释**: 复杂逻辑添加中文注释

---

## 十、问题反馈

开发中遇到问题：
1. 先查阅原版Buddy源码
2. 参考《辛泽学习笔记 - AVO与Buddy系统》
3. 向辛泽请教设计问题
4. 向师尊汇报进度

---

> **"道法自然，万物有灵。"
> "以此为基，修道 buddy 自成。"**

**设计方**: 辛泽  
**开发方**: 玄码  
**日期**: 2026-04-04

---

_文档完毕，玄码可开始开发！_
