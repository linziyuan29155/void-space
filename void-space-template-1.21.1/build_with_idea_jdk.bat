@echo off
REM 设置 JAVA_HOME 为 IDEA 的 JDK
set JAVA_HOME=C:\Program Files\JetBrains\IntelliJ IDEA 2024.1\jbr

REM 编译项目
cd /d "C:\Users\soeon\Desktop\void-space-template-1.21.1"
call gradlew.bat build

pause
