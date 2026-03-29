@echo off
REM 这个脚本会在 IDEA 中打开项目并编译

echo 正在打开 IDEA 项目...
echo.

REM 使用 IDEA 的命令行工具打开项目
cd /d "C:\Users\soeon\Desktop\void-space-template-1.21.1"

REM 显示编译说明
echo ========================================
echo   Grassland Dimension Mod - 编译指南
echo ========================================
echo.
echo 项目已准备好编译！
echo.
echo 请在 IDEA 中执行以下步骤：
echo.
echo 1. 右侧找到 "Gradle" 面板
echo 2. 展开 Tasks → build
echo 3. 双击 "build" 任务
echo 4. 等待编译完成
echo.
echo 编译完成后，JAR 文件位于：
echo   build\libs\void-space-*.jar
echo.
echo ========================================
echo.
pause
