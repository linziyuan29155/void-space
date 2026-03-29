# 编译 Grassland Dimension Mod

## 方法 1：在 IDEA 中编译（推荐）

1. **打开项目**
   - 在 IDEA 中：File → Open → 选择 `void-space-template-1.21.1` 文件夹
   - 等待 Gradle 同步完成

2. **使用 Gradle 面板编译**
   - 右侧找到 **Gradle** 面板
   - 展开 `Tasks` → `build`
   - 双击 `build` 任务
   - 等待编译完成

3. **查找生成的 JAR**
   - 编译完成后，JAR 文件位于：
   ```
   build/libs/void-space-*.jar
   ```

## 方法 2：命令行编译

### 前置条件
- 需要安装 Java 21+
- 设置 `JAVA_HOME` 环境变量

### 编译步骤

```bash
# 进入项目目录
cd C:\Users\soeon\Desktop\void-space-template-1.21.1

# 编译项目
.\gradlew.bat build

# 或者在 Linux/Mac 上
./gradlew build
```

### 编译完成后
- JAR 文件位于：`build/libs/void-space-*.jar`
- 将 JAR 文件复制到 Minecraft 的 `mods` 文件夹

## 方法 3：在 IDEA 中运行游戏测试

1. **运行客户端**
   - Gradle 面板 → `Tasks` → `fabric tasks` → `runClient`
   - 或者在 IDEA 中找到 `runClient` 配置并运行

2. **运行服务器**
   - Gradle 面板 → `Tasks` → `fabric tasks` → `runServer`

## 常见问题

### Q: 编译失败，提示 "JAVA_HOME is not set"
**A:** 
- 在 IDEA 中编译（推荐）
- 或者手动设置 JAVA_HOME：
  ```bash
  set JAVA_HOME=C:\path\to\java
  ```

### Q: 编译很慢
**A:** 
- 首次编译会下载大量依赖，可能需要 5-10 分钟
- 后续编译会快得多

### Q: 找不到生成的 JAR
**A:** 
- 检查 `build/libs` 文件夹
- 确保编译成功（没有红色错误）

## 生成的文件

编译成功后，你会看到：
```
build/
├── libs/
│   ├── void-space-1.0.0.jar          ← 这是你需要的文件
│   └── void-space-1.0.0-sources.jar
├── classes/
├── resources/
└── ...
```

## 安装到 Minecraft

1. 找到 Minecraft 的 `mods` 文件夹
   - Windows: `%APPDATA%\.minecraft\mods`
   - Mac: `~/Library/Application Support/minecraft/mods`
   - Linux: `~/.minecraft/mods`

2. 将 `void-space-*.jar` 复制到 `mods` 文件夹

3. 启动 Minecraft，模组会自动加载

## 测试维度

1. 创建新世界或进入现有世界
2. 使用指令进入维度：
   ```
   /grassland
   ```
3. 你应该会被传送到一个全是草方块的平坦维度

---

**需要帮助？** 检查 IDEA 的 Build 输出面板查看详细错误信息。
