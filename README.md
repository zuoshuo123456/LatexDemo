# 🔬 Markdown + LaTeX 混合渲染修复 Demo

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/你的用户名/latex-demo)

## 📖 项目简介

这是一个基于 Cocos Creator 3.x 开发的在线演示项目，展示了如何使用 **Kiro AI Agent** 解决 Markdown 加粗语法（`**`）与 LaTeX 数学公式冲突的技术问题。

### 🎯 核心问题

当 AI 生成包含数学公式的 Markdown 内容时，如：
- `$x'=**\gamma**(x - vt)$`
- `**\[E=mc^2\]**`

Markdown 解析器会错误地将公式内部的 `**` 识别为加粗标记，导致公式渲染失败。

### ✨ 解决方案

通过 **预处理 + 双重防护** 的架构设计：

1. **预处理阶段**：在解析前用正则表达式清理公式内外的 `**` 标记
2. **解析阶段**：通过 `findStarOutsideMath` 函数跳过公式内部

## 🚀 在线演示

- **Vercel 部署**：[https://你的项目.vercel.app](https://你的项目.vercel.app)
- **GitHub Pages**：[https://你的用户名.github.io/latex-demo](https://你的用户名.github.io/latex-demo)

## 🛠 技术栈

- **游戏引擎**：Cocos Creator 3.8.5
- **编程语言**：TypeScript (ES2015)
- **核心技术**：
  - 自研 Markdown 解析器
  - 自研 LaTeX 渲染引擎（基于 Canvas）
  - 正则表达式预处理
  - AST 语法树解析

## 📦 本地运行

### 方式 1：直接打开

```bash
# 用浏览器直接打开 index.html
open index.html  # macOS
start index.html # Windows
```

### 方式 2：本地服务器

```bash
# 使用 Python
python -m http.server 8000

# 使用 Node.js
npx http-server -p 8000

# 然后访问 http://localhost:8000
```

## 🌐 部署到 Vercel

### 方式 1：通过 Vercel CLI

```bash
# 安装 Vercel CLI
npm i -g vercel

# 部署
cd LatexDemo
vercel
```

### 方式 2：通过 Vercel 网站

1. 访问 [vercel.com](https://vercel.com)
2. 点击 "Import Project"
3. 选择 GitHub 仓库
4. 点击 "Deploy"

## 📊 成果价值

- ✅ 修复了 AI 生成内容中 Markdown 与 LaTeX 混合渲染的兼容性问题
- ✅ 提升了教育场景下数学公式显示的稳定性和准确性
- ✅ 问题从诊断到解决仅用时约 30 分钟（传统人工调试预计需要 2-3 小时）
- ✅ 代码改动集中在 2 个函数（约 40 行），保持了架构的简洁性
- ✅ 支持三种公式语法：`$...$`、`\(...\)`、`\[...\]`

## 📁 项目结构

```
LatexDemo/
├── index.html              # 入口文件（已优化）
├── src/                    # 编译后的 JS 代码
│   ├── polyfills.bundle.js
│   ├── system.bundle.js
│   ├── import-map.json
│   └── index.js
├── assets/                 # 游戏资源
│   ├── main/              # 主场景资源
│   └── ...
├── style.css              # 样式文件
└── README.md              # 项目说明
```

## 🔗 相关链接

- [技术方案详解](./docs/technical-solution.md)
- [源码仓库](https://github.com/你的用户名/latex-demo)
- [Kiro AI Agent](https://kiro.ai)
- [Cocos Creator 官网](https://www.cocos.com)

## 📝 开发日志

### 2024-03-27
- ✅ 完成 Markdown 与 LaTeX 混合渲染修复
- ✅ 优化 HTML 加载界面
- ✅ 添加 Vercel 部署支持

## 📧 联系方式

如有问题或建议，欢迎：
- 提交 [Issue](https://github.com/你的用户名/latex-demo/issues)
- 发送邮件至：your-email@example.com

## 📄 License

MIT License

---

**Made with ❤️ using Kiro AI Agent**
