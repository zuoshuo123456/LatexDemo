@echo off
chcp 65001 >nul
echo ========================================
echo   快速部署到 GitHub
echo ========================================
echo.

cd /d "%~dp0"

echo [1/5] 检查 Git 状态...
git status >nul 2>&1
if errorlevel 1 (
    echo Git 仓库未初始化，正在初始化...
    git init
    echo ✓ Git 仓库初始化完成
) else (
    echo ✓ Git 仓库已存在
)

echo.
echo [2/5] 添加所有文件...
git add .
echo ✓ 文件添加完成

echo.
echo [3/5] 创建提交...
git commit -m "Deploy: Markdown + LaTeX Demo"
echo ✓ 提交创建完成

echo.
echo [4/5] 检查远程仓库...
git remote -v | findstr origin >nul 2>&1
if errorlevel 1 (
    echo.
    echo ⚠️  还没有配置远程仓库
    echo.
    echo 请按照以下步骤操作:
    echo 1. 访问 https://github.com/new
    echo 2. 创建新仓库（名字如: latex-demo）
    echo 3. 不要勾选 "Initialize with README"
    echo 4. 创建后，复制仓库 URL
    echo 5. 运行以下命令:
    echo.
    echo    git remote add origin https://github.com/你的用户名/latex-demo.git
    echo    git branch -M main
    echo    git push -u origin main
    echo.
) else (
    echo ✓ 远程仓库已配置
    echo.
    echo [5/5] 推送到 GitHub...
    git push
    if errorlevel 1 (
        echo.
        echo ⚠️  推送失败，尝试设置上游分支...
        git branch -M main
        git push -u origin main
    )
    echo ✓ 推送完成
    echo.
    echo ========================================
    echo   ✓ GitHub 推送成功！
    echo ========================================
    echo.
    echo 下一步: 访问 https://vercel.com 部署项目
)

echo.
pause
