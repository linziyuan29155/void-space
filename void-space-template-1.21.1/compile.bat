@echo off
REM 这个脚本会使用 IDEA 的 JDK 来编译项目

setlocal enabledelayedexpansion

REM 查找 IDEA 的 JDK
for /d %%i in ("C:\Users\soeon\AppData\Local\JetBrains\*") do (
    if exist "%%i\jbr\bin\java.exe" (
        set "JAVA_HOME=%%i\jbr"
        goto found
    )
)

REM 如果没找到，尝试其他位置
if exist "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition\jbr\bin\java.exe" (
    set "JAVA_HOME=C:\Program Files\JetBrains\IntelliJ IDEA Community Edition\jbr"
    goto found
)

if exist "C:\Program Files\JetBrains\IntelliJ IDEA\jbr\bin\java.exe" (
    set "JAVA_HOME=C:\Program Files\JetBrains\IntelliJ IDEA\jbr"
    goto found
)

echo 未找到 Java，请先安装 Java 21
pause
exit /b 1

:found
echo 找到 Java: !JAVA_HOME!
set "PATH=!JAVA_HOME!\bin;!PATH!"

cd /d "C:\Users\soeon\Desktop\void-space-template-1.21.1"
echo 开始编译...
call gradlew.bat build

pause
