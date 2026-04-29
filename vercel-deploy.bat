@echo off
chcp 65001 >nul
echo ========================================
echo   部署到 Vercel
echo ========================================
echo.

cd /d "%~dp0"

echo 检查 Vercel CLI...
where vercel >nul 2>&1
if errorlevel 1 (
    echo Vercel CLI 未安装，正在安装...
    npm install -g vercel
    if errorlevel 1 (
        echo.
        echo ❌ 安装失败
        echo.
        echo 请手动访问 https://vercel.com 进行部署
        echo 或者先安装 Node.js: https://nodejs.org
        pause
        exit /b 1
    )
)

echo.
echo 开始部署...
echo.
vercel --prod

echo.
echo ========================================
echo   ✓ 部署完成！
echo ========================================
echo.
echo 复制上面显示的 URL 即可分享给别人
echo.
pause
