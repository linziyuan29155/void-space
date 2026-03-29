# 查找 IDEA 的 JDK
$javaFound = $false
$javaHome = ""

# 检查常见的 IDEA 安装位置
$ideaPaths = @(
    "C:\Users\soeon\AppData\Local\JetBrains",
    "C:\Program Files\JetBrains",
    "C:\Program Files (x86)\JetBrains"
)

foreach ($path in $ideaPaths) {
    if (Test-Path $path) {
        $jbrPaths = Get-ChildItem -Path $path -Recurse -Filter "java.exe" -ErrorAction SilentlyContinue | Select-Object -First 1
        if ($jbrPaths) {
            $javaHome = Split-Path -Parent $jbrPaths.FullName
            $javaFound = $true
            break
        }
    }
}

if (-not $javaFound) {
    Write-Host "未找到 Java，请先安装 Java 21"
    exit 1
}

Write-Host "找到 Java: $javaHome"

# 设置环境变量
$env:JAVA_HOME = $javaHome
$env:PATH = "$javaHome;$env:PATH"

# 编译项目
cd "C:\Users\soeon\Desktop\void-space-template-1.21.1"
Write-Host "开始编译..."
& .\gradlew.bat build

Write-Host "编译完成！"
