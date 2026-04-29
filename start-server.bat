@echo off
echo 正在启动本地服务器...
echo.
echo 请在浏览器中访问: http://localhost:8000
echo 按 Ctrl+C 停止服务器
echo.

REM 尝试使用 Python 启动服务器
python -m http.server 8000 2>nul
if %errorlevel% neq 0 (
    echo Python 未安装或不在 PATH 中
    echo.
    echo 请手动运行以下命令之一:
    echo   python -m http.server 8000
    echo   npx http-server -p 8000
    pause
)
