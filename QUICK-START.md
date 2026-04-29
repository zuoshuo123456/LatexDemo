# 🚀 快速开始指南

## 本地测试（必须先做这一步！）

### Windows 用户

1. **双击运行** `start-server.bat`
2. 浏览器会自动打开 `http://localhost:8000`
3. 如果看到加载动画和演示项目,说明一切正常

### Mac/Linux 用户

```bash
# 进入项目目录
cd LatexDemo

# 启动服务器
python3 -m http.server 8000

# 在浏览器打开
open http://localhost:8000
```

## 部署到 Vercel（3 分钟完成）

### 第一步: 推送到 GitHub

```bash
# 1. 在 GitHub 创建新仓库（名字如: latex-demo）
#    注意: 不要勾选 "Initialize with README"

# 2. 在本地执行以下命令
cd LatexDemo
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/你的用户名/latex-demo.git
git branch -M main
git push -u origin main
```

### 第二步: 部署到 Vercel

1. 访问 https://vercel.com
2. 点击 "New Project"
3. 选择刚才创建的 GitHub 仓库
4. 点击 "Deploy"（保持默认设置）
5. 等待 1-2 分钟,完成!

### 第三步: 访问你的演示

部署完成后,Vercel 会给你一个 URL:
```
https://latex-demo-xxx.vercel.app
```

## 常见问题

### Q: 本地打开 index.html 显示空白?
A: Cocos Creator 项目必须通过 HTTP 服务器运行,不能直接打开文件。请使用 `start-server.bat` 或 Python 启动服务器。

### Q: Vercel 部署后显示 404?
A: 检查是否所有文件都已提交到 Git:
```bash
git status  # 查看未提交的文件
git add .   # 添加所有文件
git commit -m "Add missing files"
git push
```

### Q: 部署后白屏?
A: 按 F12 打开开发者工具,查看 Console 和 Network 标签,看哪些资源加载失败。

## 需要帮助?

- 查看完整文档: [README.md](./README.md)
- 查看部署详情: [DEPLOY.md](./DEPLOY.md)
