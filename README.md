# Fenu - Camping & Hiking App

一个使用Flutter开发的户外活动应用，包含完整的tabbar导航框架。

## 项目结构

```
lib/
├── main.dart              # 主入口文件，包含tabbar导航逻辑
├── pages/                 # 页面文件目录
│   ├── home_page.dart     # 首页 - 露营和徒步
│   ├── community_page.dart # 社区页面 - 用户分享
│   ├── editor_page.dart   # 编辑页面 - 创建帖子
│   ├── discover_page.dart # 发现页面 - 探索目的地
│   └── mine_page.dart     # 我的页面 - 个人中心
└── widgets/               # 自定义组件目录
    └── custom_tabbar.dart # 自定义tabbar组件
```

## Tabbar配置

### 图片资源
- **普通状态**: `tab_1_n_20250831.png`, `tab_2_n_20250831.png`, `tab_3_n_20250831.png`, `tab_4_n_20250831.png`, `tab_5_n_20250831.png`
- **高亮状态**: `tab_1_s_20250831.png`, `tab_2_s_20250831.png`, `tab_3_s_20250831.png`, `tab_4_s_20250831.png`, `tab_5_s_20250831.png`

### 页面映射
1. **Tab 1**: HomePage - 首页
2. **Tab 2**: CommunityPage - 社区
3. **Tab 3**: EditorPage - 编辑（中心按钮，绿色圆形背景）
4. **Tab 4**: DiscoverPage - 发现
5. **Tab 5**: MinePage - 我的

### 样式特性
- Tabbar背景色: `#FFFFFF`
- 中间编辑按钮高亮时显示绿色圆形背景
- 支持图片状态切换
- 阴影效果增强视觉层次

## 运行项目

1. 确保已安装Flutter SDK (>= 3.0)
2. 克隆项目到本地
3. 运行 `flutter pub get` 安装依赖
4. 运行 `flutter run` 启动应用

## 自定义说明

### 添加新页面
1. 在 `lib/pages/` 目录下创建新的页面文件
2. 在 `main.dart` 的 `_pages` 列表中添加新页面
3. 更新tabbar图片资源（如果需要）

### 修改Tabbar样式
编辑 `lib/widgets/custom_tabbar.dart` 文件：
- 调整高度、颜色、阴影等样式
- 修改图标大小和间距
- 自定义高亮状态的视觉效果

### 页面功能实现
每个页面文件都包含基本的UI结构，可以根据需要：
- 添加实际的业务逻辑
- 集成API调用
- 实现状态管理
- 添加动画效果

## 技术特点

- **Flutter 3.0+**: 使用最新的Flutter版本
- **Material Design 3**: 现代化的UI设计
- **响应式布局**: 适配不同屏幕尺寸
- **模块化架构**: 清晰的代码组织结构
- **自定义组件**: 可复用的tabbar组件

## 注意事项

- 确保 `assets/images/` 目录包含所有必需的tabbar图片
- 图片命名必须严格按照规范，否则会导致加载失败
- 当前版本仅包含UI框架，具体功能需要根据业务需求实现
