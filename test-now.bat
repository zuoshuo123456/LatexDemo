@echo off
chcp 65001 >nul
echo ========================================
echo   本地测试服务器
echo ========================================
echo.
echo 正在启动服务器...
echo 服务器地址: http://localhost:8000
echo.
echo 按 Ctrl+C 停止服务器
echo.
cd /d "%~dp0"
python -m http.server 8000
