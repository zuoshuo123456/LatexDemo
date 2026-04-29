# 🚀 部署指南

## ⚠️ 重要提示

Cocos Creator 构建的项目**不能直接双击 `index.html` 打开**，因为浏览器的同源策略会阻止加载本地文件。

必须通过以下方式之一运行：

## 方式 1：本地测试（推荐）

### 使用 Python（最简单）

```bash
# 进入项目目录
cd D:\Proj\Creator3Prj\elephant\LatexDemo

# 启动服务器
python -m http.server 8000

# 或者双击 start-server.bat 文件
```

然后在浏览器访问：`http://localhost:8000`

### 使用 Node.js

```bash
# 安装 http-server（只需一次）
npm install -g http-server

# 启动服务器
http-server -p 8000
```

### 使用 VS Code

1. 安装 "Live Server" 扩展
2. 右键 `index.html` → "Open with Live Server"

## 方式 2：部署到 Vercel（推荐用于演示）

### 步骤 1：推送到 GitHub

```bash
cd D:\Proj\Creator3Prj\elephant\LatexDemo

# 初始化 Git
git init
git add .
git commit -m "Initial commit"

# 关联远程仓库
git remote add origin https://github.com/你的用户名/latex-demo.git
git branch -M main
git push -u origin main
```

### 步骤 2：部署到 Vercel

#### 方法 A：通过网站（最简单）

1. 访问 [vercel.com](https://vercel.com)
2. 用 GitHub 账号登录
3. 点击 "Add New..." → "Project"
4. 选择 `latex-demo` 仓库
5. 点击 "Deploy"
6. 等待 30 秒，完成！

#### 方法 B：通过 CLI

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

### 步骤 3：获取链接

部署成功后，你会得到一个链接：
```
https://latex-demo.vercel.app
或
https://latex-demo-你的用户名.vercel.app
```

## 方式 3：部署到 GitHub Pages

### 步骤 1：推送到 GitHub（同上）

### 步骤 2：启用 GitHub Pages

1. 进入仓库 Settings → Pages
2. Source 选择：
   - Branch: `main`
   - Folder: `/ (root)`
3. 保存

### 步骤 3：访问

等待 1-2 分钟后访问：
```
https://你的用户名.github.io/latex-demo/
```

## 🐛 常见问题

### 问题 1：直接打开 index.html 显示空白

**原因**：浏览器的 CORS 策略阻止加载本地文件

**解决**：必须通过 HTTP 服务器访问（见上面的方式 1）

### 问题 2：Vercel 部署后 404

**原因**：可能是文件路径大小写问题或缓存问题

**解决**：
1. 检查所有文件名大小写是否正确
2. 在 Vercel 控制台点击 "Redeploy"
3. 清除浏览器缓存后重试

### 问题 3：资源加载失败

**原因**：文件路径不正确

**解决**：
1. 确保所有资源文件都已上传
2. 检查 `index.html` 中的路径是否正确
3. 使用 `test-local.html` 测试资源路径

## 📝 测试清单

部署前请确认：

- [ ] 所有文件都已提交到 Git
- [ ] `src/` 目录包含所有 JS 文件
- [ ] `assets/` 目录包含所有资源文件
- [ ] `cocos-js/` 目录包含引擎文件
- [ ] 本地测试通过（使用 HTTP 服务器）

## 🔗 有用的链接

- [Vercel 文档](https://vercel.com/docs)
- [GitHub Pages 文档](https://docs.github.com/pages)
- [Cocos Creator 文档](https://docs.cocos.com)

## 💡 提示

- Vercel 部署最快（几秒钟）
- GitHub Pages 需要等待 1-2 分钟
- 本地测试最方便（实时预览）
