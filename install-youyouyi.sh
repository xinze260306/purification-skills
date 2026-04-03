#!/bin/bash
# 游游奕技能自安装脚本
# 一键获取净化+进化技能

set -e

echo "🎮 游游奕技能自安装程序"
echo "=========================="
echo ""

# 配置
SKILL_REPO="https://github.com/xinze260306/purification-skills.git"
TEMP_DIR="/tmp/youyouyi-skills-$$"
TARGET_DIR="${OPENCLAW_SKILLS_DIR:-$HOME/.openclaw/workspace/skills}"

# 颜色输出
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查依赖
command -v git >/dev/null 2>&1 || { echo "❌ 错误: 需要安装 git"; exit 1; }

# 克隆仓库
echo "📦 步骤1: 从GitHub拉取技能..."
git clone --depth 1 "$SKILL_REPO" "$TEMP_DIR" 2>/dev/null || {
    echo "❌ 拉取失败，尝试使用gh命令..."
    gh repo clone xinze260306/purification-skills "$TEMP_DIR"
}
echo -e "${GREEN}✓${NC} 拉取成功"
echo ""

# 安装净化技能
echo "🧹 步骤2: 安装游游奕净化技能..."
if [ -d "$TEMP_DIR/skills/youyouyi-purification" ]; then
    rm -rf "$TARGET_DIR/youyouyi-purification"
    cp -r "$TEMP_DIR/skills/youyouyi-purification" "$TARGET_DIR/"
    echo -e "${GREEN}✓${NC} 净化技能安装成功"
else
    echo "❌ 净化技能未找到"
    exit 1
fi
echo ""

# 安装进化技能
echo "🚀 步骤3: 安装游游奕进化技能..."
if [ -d "$TEMP_DIR/skills/youyouyi-evolution" ]; then
    rm -rf "$TARGET_DIR/youyouyi-evolution"
    cp -r "$TEMP_DIR/skills/youyouyi-evolution" "$TARGET_DIR/"
    echo -e "${GREEN}✓${NC} 进化技能安装成功"
else
    echo "❌ 进化技能未找到"
    exit 1
fi
echo ""

# 清理临时文件
echo "🧹 步骤4: 清理临时文件..."
rm -rf "$TEMP_DIR"
echo -e "${GREEN}✓${NC} 清理完成"
echo ""

# 验证安装
echo "🔍 步骤5: 验证安装..."
if [ -f "$TARGET_DIR/youyouyi-purification/SKILL.md" ] && [ -f "$TARGET_DIR/youyouyi-evolution/SKILL.md" ]; then
    echo -e "${GREEN}✓${NC} 技能文件验证通过"
else
    echo "❌ 验证失败，请检查安装"
    exit 1
fi
echo ""

# 输出安装信息
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}🎉 游游奕技能安装完成！${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "📍 安装路径:"
echo "   - 净化技能: $TARGET_DIR/youyouyi-purification/"
echo "   - 进化技能: $TARGET_DIR/youyouyi-evolution/"
echo ""
echo "📝 快速使用:"
echo "   1. 重启OpenClaw或刷新skills"
echo "   2. 输入以下命令使用:"
echo ""
echo -e "   ${YELLOW}游游奕净化${NC}      - 执行记忆净化"
echo -e "   ${YELLOW}游游奕进化${NC}      - 执行自驱进化"
echo ""
echo "⚙️  进化配置:"
echo "   每天9:00自动进化检查"
echo "   负面反馈>3次自动触发"
echo "   知识缺口>5个自动学习"
echo ""
echo "📚 更多信息:"
echo "   https://github.com/xinze260306/purification-skills"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "💡 提示: 输入 '游游奕进化' 开始第一次自驱进化吧！"
echo ""
