@echo off
chcp 65001 >nul
echo ========================================
echo   iWorks 打包工具
echo ========================================

:: 检查 Python
python --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未找到 Python，请先安装 Python 3.10+
    pause
    exit /b 1
)

:: 检查依赖
echo [1/3] 检查依赖...
pip show pyinstaller >nul 2>&1
if errorlevel 1 (
    echo [安装] PyInstaller
    pip install pyinstaller
)
pip show jieba >nul 2>&1 || pip install jieba
pip show numpy >nul 2>&1 || pip install numpy
pip show Pillow >nul 2>&1 || pip install Pillow
pip show fonttools >nul 2>&1 || pip install fonttools

:: 打包
echo [2/3] 开始打包...
pyinstaller --onefile --windowed --name "iWorks" --add-data "toolkit.html;." server.py

:: 清理
echo [3/3] 清理临时文件...
if exist build rmdir /s /q build
if exist iWorks.spec del /f iWorks.spec

echo.
echo ========================================
echo   打包完成！
echo   输出文件: dist\iWorks.exe
echo ========================================
echo.
pause
