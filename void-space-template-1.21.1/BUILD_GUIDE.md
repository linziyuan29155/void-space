# 🎮 Grassland Dimension Mod - 编译和打包指南

## 📍 项目位置
```
C:\Users\soeon\Desktop\void-space-template-1.21.1
```

## ✅ 已完成的工作

### 代码文件
- ✅ `VOIDSPACE.java` - 主模组类 + 指令注册
- ✅ `GrasslandChunkGenerator.java` - 地形生成器
- ✅ `DimensionEventHandler.java` - 天气/昼夜控制
- ✅ 维度配置 JSON 文件

### 构建配置
- ✅ `build.gradle` - Gradle 构建脚本
- ✅ `gradle.properties` - Gradle 属性
- ✅ `gradlew` / `gradlew.bat` - Gradle Wrapper

## 🚀 编译方式

### 方式 1：在 IDEA 中编译（最简单）

1. **打开项目**
   ```
   File → Open → C:\Users\soeon\Desktop\void-space-template-1.21.1
   ```

2. **等待 Gradle 同步**
   - IDEA 会自动下载依赖（首次可能需要 5-10 分钟）

3. **编译项目**
   - 右侧找到 **Gradle** 面板
   - 展开 `Tasks` → `build`
   - 双击 `build` 任务

4. **查看结果**
   ```
   build/libs/void-space-*.jar ← 这是生成的模组文件
   ```

### 方式 2：命令行编译

需要先安装 Java 21+，然后：

```bash
cd C:\Users\soeon\Desktop\void-space-template-1.21.1
.\gradlew.bat build
```

## 📦 生成的 JAR 文件

编译成功后，你会在以下位置找到 JAR 文件：

```
C:\Users\soeon\Desktop\void-space-template-1.21.1\build\libs\
├── void-space-1.0.0.jar              ← 模组文件（这个）
└── void-space-1.0.0-sources.jar      ← 源代码（可选）
```

## 🎮 安装到 Minecraft

1. **找到 Minecraft mods 文件夹**
   ```
   %APPDATA%\.minecraft\mods
   ```

2. **复制 JAR 文件**
   ```
   void-space-1.0.0.jar → mods 文件夹
   ```

3. **启动 Minecraft**
   - 使用 Fabric Loader 启动
   - 模组会自动加载

## 🧪 测试维度

1. 创建新世界或进入现有世界
2. 使用指令：
   ```
   /grassland
   ```
3. 你会被传送到一个全是草方块的平坦维度

## 📋 维度特性

| 特性 | 状态 |
|------|------|
| 全草方块 | ✅ |
| 超平坦 | ✅ |
| 无天气 | ✅ |
| 无黑夜 | ✅ |
| 传送指令 | ✅ |
| 无限生成 | ✅ |

## 🔧 项目结构

```
void-space-template-1.21.1/
├── src/main/java/
│   └── com/linziyuan29155/
│       ├── VOIDSPACE.java                    # 主类
│       ├── world/
│       │   └── GrasslandChunkGenerator.java  # 地形生成
│       └── event/
│           └── DimensionEventHandler.java    # 事件处理
├── src/main/resources/
│   ├── fabric.mod.json                       # 模组配置
│   └── data/void-space/
│       ├── dimension/grassland.json          # 维度定义
│       ├── dimension_type/grassland_type.json
│       └── worldgen/chunk_generator/grassland.json
├── build.gradle                              # 构建脚本
├── gradle.properties                         # Gradle 配置
├── gradlew / gradlew.bat                     # Gradle Wrapper
└── README.md                                 # 文档
```

## ⚠️ 常见问题

### Q: 编译失败，提示 "JAVA_HOME is not set"
**A:** 在 IDEA 中编译（IDEA 会自动处理 Java）

### Q: 编译很慢
**A:** 首次编译会下载大量依赖，耐心等待即可

### Q: 找不到 build/libs 文件夹
**A:** 确保编译成功（IDEA 底部应该显示 "BUILD SUCCESSFUL"）

### Q: JAR 文件很大（100+ MB）
**A:** 这是正常的，包含了所有依赖

## 📝 下一步

1. ✅ 在 IDEA 中打开项目
2. ✅ 点击 Gradle 面板的 `build` 任务
3. ✅ 等待编译完成
4. ✅ 找到 `build/libs/void-space-*.jar`
5. ✅ 复制到 Minecraft mods 文件夹
6. ✅ 启动游戏测试

---

**准备好了吗？** 在 IDEA 中打开项目，然后运行 `build` 任务！🚀
