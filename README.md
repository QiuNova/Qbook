# iWorks Novel Toolkit

一个基于 Web 的小说排行榜数据扫描与分析工具，支持番茄小说、起点中文网的实时榜单追踪和 AI 智能分析。

![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![License](https://img.shields.io/badge/License-MIT-green)

## 功能特性

### 数据扫榜
- **番茄小说**：在读榜、新书榜、热度榜，支持 37 个分类筛选
- **起点中文网**：月票榜、畅销榜、新书榜
- **多分类总览**：一键加载全部分类数据，按性别分组展示
- **搜索过滤**：按书名、作者、简介、分类搜索
- **卡片/列表**双视图切换
- **排名变化追踪**：每日快照对比，显示排名升降趋势
- **历史数据**：支持查看任意历史日期的榜单数据

### 可视化分析
- 分类阅读量柱状图
- Top10 书籍排行条形图
- 字数分布环形图
- AI 智能词云分析（支持 DeepSeek 等大模型）

### 单书诊断
- 效率指数（在读人数 / 总字数）
- 阅读量趋势（飙升 / 下滑 / 稳定 / 新上榜）
- 榜单书籍详情页（字数、在读人数、排名、效率）

### 智能拆书
- 上传 TXT 小说文件，AI 自动拆解分析
- 支持多维度分析模块（核心元素、人物、开篇、节奏、技巧、大纲）

### 其他
- 亮色 / 暗色 / 跟随系统 主题切换
- 榜单数据 TXT 导出（自动解码番茄字体反爬）
- 响应式设计，支持手机和桌面端

## 快速开始

### 方式一：下载 exe（推荐小白用户）

从 [Releases](https://github.com/3421013896/Qbook/releases) 页面下载 `iWorks.exe`，双击即可运行，自动打开浏览器。

> 无需安装 Python，无需任何配置，双击就用。

### 方式二：从源码运行

#### 环境要求
- Python 3.8+
- 依赖库：`jieba`, `Pillow`, `numpy`, `fonttools`

#### 安装

```bash
# 克隆仓库
git clone https://github.com/3421013896/Qbook.git
cd Qbook

# 安装 Python 依赖
pip install jieba Pillow numpy fonttools
```

#### 启动

**Windows:**
```bash
start.bat
```

**macOS / Linux:**
```bash
python server.py
```

启动后自动打开浏览器，访问 `http://localhost:8765`

## 使用说明

1. 打开首页，点击「数据扫榜」进入榜单页面
2. 选择平台（番茄/起点）和榜单类型
3. 可选择分类筛选或点击「总览」查看全分类
4. 点击任意书籍查看详情
5. 在设置页配置 AI API Key 后，可使用 AI 词云和智能拆书功能

### AI 功能配置

在「设置」页面配置以下信息：
- **API Key**：大模型 API 密钥（支持 DeepSeek、OpenAI 兼容接口等）
- **Base URL**：API 地址（默认 DeepSeek）
- **Model**：模型名称

## 项目结构

```
iWorks/
├── toolkit.html      # 前端（单文件应用，Tailwind CSS）
├── server.py         # 后端（Python 多线程 HTTP 服务）
├── start.bat         # Windows 启动脚本
├── build.bat         # 打包脚本（生成 iWorks.exe）
├── LICENSE           # MIT 开源协议
└── README.md
```

运行时自动创建：
```
cache/               # 榜单缓存、AI 分析缓存
logs/                # 服务日志
snapshots/           # 每日榜单快照
```

## 技术栈

- **前端**：原生 HTML/JS + Tailwind CSS + Chart.js + wordcloud2.js
- **后端**：Python 标准库 `http.server` + 多线程
- **AI 接口**：兼容 OpenAI 格式的大模型 API

## 免责声明

本项目仅供学习交流使用，排行榜数据来源于公开页面。请遵守相关网站的使用条款和法律法规。

## License

[MIT](LICENSE)
