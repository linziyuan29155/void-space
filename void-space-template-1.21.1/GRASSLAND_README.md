# Grassland Dimension Mod (Fabric 1.21.1)

一个 Minecraft Fabric 模组，创建一个自定义维度。

## 维度特性

- ✅ **全是草方块**（超平坦）
- ✅ **非常大的世界**（无限生成）
- ✅ **没有天气**（无雨无雪）
- ✅ **没有黑夜**（永远是白天）
- ✅ **通过指令进入**

## 使用指令

### 进入维度（默认位置）
```
/grassland
```

玩家会被传送到草地维度的 (0, 65, 0) 位置。

## 项目结构

```
void-space-template-1.21.1/
├── src/main/java/com/linziyuan29155/
│   ├── VOIDSPACE.java                      # 主模组类
│   ├── world/
│   │   └── GrasslandChunkGenerator.java    # 地形生成器
│   └── event/
│       └── DimensionEventHandler.java      # 维度事件处理
├── src/main/resources/
│   ├── fabric.mod.json                     # 模组配置
│   └── data/void-space/
│       ├── dimension/grassland.json        # 维度定义
│       ├── dimension_type/grassland_type.json  # 维度类型
│       └── worldgen/chunk_generator/grassland.json
├── build.gradle                            # Gradle 构建配置
└── gradle.properties                       # Gradle 属性
```

## 编译和运行

### 编译模组
```bash
./gradlew build
```

### 运行客户端
```bash
./gradlew runClient
```

### 运行服务器
```bash
./gradlew runServer
```

## 生成的 JAR 文件

编译后的模组 JAR 文件位于：
```
build/libs/void-space-*.jar
```

将其放入 Minecraft 的 `mods` 文件夹即可使用。

## 版本信息

- **Minecraft 版本**: 1.21.1
- **Fabric Loader**: 0.18.4+
- **Java 版本**: 21+
- **Fabric API**: 最新版本

## 功能说明

### 地形生成
- 使用 Fabric 的标准地形生成系统
- 所有方块都是草方块（Y=63），下面是泥土
- 无限生成，没有洞穴、矿物或其他结构

### 天气控制
- 自动禁用雨和雪
- 维度内始终是晴天

### 昼夜循环
- 禁用黑夜，维度内始终是白天
- 固定时间为上午（游戏时间 1000）

### 传送指令
- `/grassland` - 传送到维度的 (0, 65, 0)

## 注意事项

- 该维度是一个新的世界，与主世界分离
- 玩家可以在维度内自由建造
- 维度内没有怪物生成
- 维度内没有天然资源（矿物、树木等）

---

**作者**: soeon  
**基于**: Fabric 1.21.1 模板
