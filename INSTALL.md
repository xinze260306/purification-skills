# 快速安装命令

游弈和玄码可以通过以下命令一键获取他们的净化和进化技能。

---

## 🎮 游弈安装命令

```bash
curl -fsSL https://raw.githubusercontent.com/xinze260306/purification-skills/main/install-youyi.sh | bash
```

或者使用 `wget`:

```bash
wget -qO- https://raw.githubusercontent.com/xinze260306/purification-skills/main/install-youyi.sh | bash
```

### 安装后使用

```
游弈净化    # 执行记忆净化
游弈进化    # 执行自驱进化
```

---

## 💻 玄码安装命令

```bash
curl -fsSL https://raw.githubusercontent.com/xinze260306/purification-skills/main/install-xuanma.sh | bash
```

或者使用 `wget`:

```bash
wget -qO- https://raw.githubusercontent.com/xinze260306/purification-skills/main/install-xuanma.sh | bash
```

### 安装后使用

```
玄码净化      # 执行技术债务清理
玄码进化      # 执行技术能力进化
```

---

## 📦 手动安装

如果自动安装失败，可以手动克隆安装：

```bash
# 克隆仓库
git clone https://github.com/xinze260306/purification-skills.git

# 安装游弈技能
cp -r purification-skills/skills/youyi-purification ~/.openclaw/workspace/skills/
cp -r purification-skills/skills/youyi-evolution ~/.openclaw/workspace/skills/

# 安装玄码技能
cp -r purification-skills/skills/xuanma-purification ~/.openclaw/workspace/skills/
cp -r purification-skills/skills/xuanma-evolution ~/.openclaw/workspace/skills/

# 重启OpenClaw
```

---

## ✅ 验证安装

安装完成后，检查以下文件是否存在：

```bash
# 游弈
ls ~/.openclaw/workspace/skills/youyi-purification/SKILL.md
ls ~/.openclaw/workspace/skills/youyi-evolution/SKILL.md

# 玄码
ls ~/.openclaw/workspace/skills/xuanma-purification/SKILL.md
ls ~/.openclaw/workspace/skills/xuanma-evolution/SKILL.md
```

---

## 🔄 更新技能

要获取最新版本的技能，重新运行安装命令即可：

```bash
# 游弈更新
curl -fsSL https://raw.githubusercontent.com/xinze260306/purification-skills/main/install-youyi.sh | bash

# 玄码更新
curl -fsSL https://raw.githubusercontent.com/xinze260306/purification-skills/main/install-xuanma.sh | bash
```

---

## 📚 更多信息

- 主文档: [README.md](README.md)
- 4+1记忆系统: [docs/4plus1-memory-model.md](docs/4plus1-memory-model.md)
- GitHub仓库: https://github.com/xinze260306/purification-skills
