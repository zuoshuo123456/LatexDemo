# ✅ 部署前检查清单

## 本地测试

- [ ] 已启动本地 HTTP 服务器（`start-server.bat` 或 `python -m http.server 8000`）
- [ ] 浏览器能正常访问 `http://localhost:8000`
- [ ] 看到加载动画（紫色渐变背景 + 旋转图标）
- [ ] 加载完成后能看到演示内容
- [ ] 浏览器控制台（F12）没有红色错误

## Git 提交检查

- [ ] 已初始化 Git 仓库（`git init`）
- [ ] 已添加所有文件（`git add .`）
- [ ] 已创建提交（`git commit -m "Initial commit"`）
- [ ] 检查文件状态（`git status` 显示 "nothing to commit"）

## GitHub 推送检查

- [ ] 已在 GitHub 创建新仓库
- [ ] 仓库名称已确定（如: `latex-demo`）
- [ ] 已添加远程仓库（`git remote add origin ...`）
- [ ] 已推送到 GitHub（`git push -u origin main`）
- [ ] 在 GitHub 网站能看到所有文件

## Vercel 部署检查

- [ ] 已注册 Vercel 账号
- [ ] 已连接 GitHub 账号
- [ ] 已选择正确的仓库
- [ ] 部署配置保持默认（Root Directory: `./`）
- [ ] 部署状态显示 "Ready"

## 部署后验证

- [ ] 访问 Vercel 提供的 URL
- [ ] 看到加载动画
- [ ] 加载完成后能看到演示内容
- [ ] 按 F12 检查控制台,没有红色错误
- [ ] 检查 Network 标签,所有资源都成功加载（状态码 200）

## 文件完整性检查

确保以下文件都已提交:

```
LatexDemo/
├── index.html          ✅ 必需
├── vercel.json         ✅ 必需
├── style.css           ✅ 必需
├── src/                ✅ 必需（整个目录）
├── assets/             ✅ 必需（整个目录）
├── cocos-js/           ✅ 必需（整个目录）
├── *.js 文件           ✅ 必需（所有根目录的 JS 文件）
├── README.md           📝 推荐
├── .gitignore          📝 推荐
└── .vercelignore       📝 推荐
```

## 常见问题自查

### 本地测试失败
- 是否使用了 HTTP 服务器（不能直接打开 index.html）
- 端口 8000 是否被占用（尝试换成 8001、8080 等）

### GitHub 推送失败
- 是否已设置 Git 用户名和邮箱
  ```bash
  git config --global user.name "你的名字"
  git config --global user.email "你的邮箱"
  ```
- 是否有权限推送到该仓库

### Vercel 部署失败
- 检查 `vercel.json` 格式是否正确（JSON 语法）
- 检查是否所有必需文件都已推送到 GitHub

### 部署后 404 错误
- 检查 `index.html` 是否在根目录
- 检查 `src/`、`assets/` 等目录是否存在
- 在 Vercel 项目设置中检查 Root Directory 是否为 `./`

### 部署后白屏
- 按 F12 查看控制台错误
- 检查 Network 标签,看哪些资源加载失败
- 确认资源路径是否正确（相对路径）

## 完成!

如果所有检查项都通过,恭喜你成功部署了演示项目! 🎉

分享你的演示链接:
```
https://你的项目名.vercel.app
```
