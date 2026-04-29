# 🔬 Markdown + LaTeX 混合渲染修复 Demo

## 📖 项目简介

这是一个基于 Cocos Creator 3.x 开发的在线演示项目,展示了如何使用 **Kiro AI Agent** 解决 Markdown 加粗语法（`**`）与 LaTeX 数学公式冲突的技术问题。

### 🎯 核心问题

当 AI 生成包含数学公式的 Markdown 内容时,如:

```markdown
$x'=**\gamma**(x - vt)$
**\[E=mc^2\]**
```

Markdown 解析器会错误地将公式内部的 `**` 识别为加粗标记,导致公式渲染失败。

### ✨ 解决方案

通过 **预处理 + 双重防护** 的架构设计:

1. **预处理阶段**: 在解析前用正则表达式清理公式内外的 `**` 标记
2. **解析阶段**: 通过 `findStarOutsideMath` 函数跳过公式内部

## 🚀 在线演示

部署完成后,你的演示地址将是:
- **Vercel**: `https://你的项目名.vercel.app`

## 🛠 技术栈

- **游戏引擎**: Cocos Creator 3.8.5
- **编程语言**: TypeScript (ES2015)
- **核心技术**:
  - 自研 Markdown 解析器
  - 自研 LaTeX 渲染引擎（基于 Canvas）
  - 正则表达式预处理
  - AST 语法树解析

## 📦 本地测试

### ⚠️ 重要提示
Cocos Creator 项目**不能**直接通过 `file://` 协议打开,必须使用 HTTP 服务器!

### 启动本地服务器

**方式 1: 使用批处理脚本（Windows）**
```bash
# 双击运行
start-server.bat
```

**方式 2: 使用 Python**
```bash
python -m http.server 8000
# 然后访问 http://localhost:8000
```

**方式 3: 使用 Node.js**
```bash
npx http-server -p 8000
# 然后访问 http://localhost:8000
```

## 🌐 部署到 Vercel

### 前置准备

1. 注册 [Vercel 账号](https://vercel.com)
2. 安装 [Git](https://git-scm.com/)
3. 创建 [GitHub 账号](https://github.com)

### 部署步骤

#### 步骤 1: 初始化 Git 仓库（如果还没有）

```bash
cd LatexDemo
git init
git add .
git commit -m "Initial commit: Markdown + LaTeX Demo"
```

#### 步骤 2: 推送到 GitHub

```bash
# 在 GitHub 上创建新仓库（不要初始化 README）
# 然后执行:
git remote add origin https://github.com/你的用户名/latex-demo.git
git branch -M main
git push -u origin main
```

#### 步骤 3: 部署到 Vercel

**方式 1: 通过 Vercel 网站（推荐）**

1. 访问 [vercel.com](https://vercel.com)
2. 点击 "New Project"
3. 选择你的 GitHub 仓库 `latex-demo`
4. 保持默认设置,点击 "Deploy"
5. 等待部署完成（约 1-2 分钟）

**方式 2: 通过 Vercel CLI**

```bash
# 安装 Vercel CLI
npm i -g vercel

# 登录
vercel login

# 部署
vercel

# 部署到生产环境
vercel --prod
```

#### 步骤 4: 验证部署

部署完成后,Vercel 会提供一个 URL,如:
```
https://latex-demo-你的用户名.vercel.app
```

访问这个 URL,应该能看到加载动画,然后进入演示项目。

### 常见问题排查

**问题 1: 404 错误**
- 检查 `vercel.json` 配置是否正确
- 确认所有资源文件都已提交到 Git

**问题 2: 白屏或加载失败**
- 打开浏览器开发者工具（F12）查看控制台错误
- 检查 Network 标签,看哪些资源加载失败
- 确认 `index.html` 中的资源路径是否正确

**问题 3: 资源路径错误**
- Vercel 部署时,所有路径都是相对于根目录
- 确保 `src/`、`assets/` 等目录都在项目根目录

## 📊 成果价值

- ✅ 修复了 AI 生成内容中 Markdown 与 LaTeX 混合渲染的兼容性问题
- ✅ 提升了教育场景下数学公式显示的稳定性和准确性
- ✅ 问题从诊断到解决仅用时约 **30 分钟**（传统人工调试预计需要 2-3 小时）
- ✅ 代码改动集中在 2 个函数（约 40 行）,保持了架构的简洁性
- ✅ 支持三种公式语法: `$...$`、`\(...\)`、`\[...\]`

## 📁 项目结构

```
LatexDemo/
├── index.html              # 入口文件（已优化加载动画）
├── vercel.json             # Vercel 部署配置
├── .vercelignore           # Vercel 忽略文件
├── src/                    # 编译后的 JS 代码
│   ├── polyfills.bundle.js
│   ├── system.bundle.js
│   ├── import-map.json
│   └── index.js
├── assets/                 # 游戏资源
│   ├── main/              # 主场景资源
│   └── ...
├── cocos-js/              # Cocos 引擎代码
├── style.css              # 样式文件
└── README.md              # 项目说明
```

## 🔗 相关链接

- [Kiro AI Agent](https://kiro.ai)
- [Cocos Creator 官网](https://www.cocos.com)
- [Vercel 文档](https://vercel.com/docs)

## 📝 开发日志

### 2024-03-27
- ✅ 完成 Markdown 与 LaTeX 混合渲染修复
- ✅ 优化 HTML 加载界面（渐进式加载动画）
- ✅ 添加 Vercel 部署支持（缓存策略、安全头）
- ✅ 添加响应式设计支持

## 📄 License

MIT License

---

**Made with ❤️ using Kiro AI Agent**
