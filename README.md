# newtype 自媒体工作流

《用 Codex 做自媒体》的公开配套 Skill 套件。

它把书中的项目结构、公众号、小红书、短视频、复盘和 Skill 沉淀方法，整理成六个可以独立安装、独立触发的 Codex Skill。它不是提示词合集，也不是一个包办所有任务的万能 Skill。

## 适合谁

- 正在阅读《用 Codex 做自媒体》，希望直接跟做的读者。
- 已经有账号和素材，但内容生产经常从零开始的个人创作者或小团队。
- 希望把稳定内容流程沉淀成项目文件和 Skill，而不是继续收藏零散 Prompt 的用户。

第一版只处理内容生产：公众号文章、小红书图文、5 分钟以内的视频、发布前检查和复盘。不处理直播、投流、私域、商业化、平台代发或自动发布。

## 六个 Skill

| Skill | 负责的任务 |
| --- | --- |
| `self-media-project` | 创建或整理自媒体内容项目、账号说明书、选题库、素材库和视觉素材库 |
| `wechat-article` | 公众号选题、选题卡、初稿、改稿、终稿和发布检查 |
| `xiaohongshu-note` | 小红书角度、正文、图文页文案、封面方案和发布清单 |
| `short-video-content` | 视频选题、口播稿、分镜、素材清单和发布清单 |
| `content-review` | 发布记录、周期复盘、Goal 检查和项目健康检查 |
| `workflow-to-skill` | 根据真实执行记录，把个人 Workflow 沉淀成 Skill 草案 |

## 安装

把需要的 Skill 目录复制到 Codex 的用户级 Skill 目录：

```bash
mkdir -p ~/.codex/skills
cp -R skills/* ~/.codex/skills/
```

也可以只复制当前需要的一个，例如：

```bash
cp -R skills/wechat-article ~/.codex/skills/
```

重启 Codex 或重新加载 Skill 环境后即可使用。Skill 也可以放入当前环境支持的项目级 Skill 目录。

## 第一次使用

1. 把 `starter-project/` 复制为自己的项目，例如“我的自媒体项目”。
2. 使用 `self-media-project` 补充账号说明书、选题库和素材索引。
3. 选择一条真实母题，使用对应平台 Skill 推进内容。
4. 每个 Skill 会在角度、真实材料和发布前保留人工确认点。
5. 发布后用 `content-review` 写入发布记录和复盘。

如果暂时不想安装 Skill，可以从 `prompt-recipes/` 中复制手动任务指令。Prompt 是一次任务的入口；Skill 才负责稳定步骤、输入、输出、检查和停止条件。

## 配套资源

- `starter-project/`：与书中最小项目结构一致的可复制模板。
- `prompt-recipes/`：按任务整理的手动调用指令和 Prompt 登记表。
- `examples/one-topic-three-platforms/`：同一母题转换为三种平台内容的教学案例。
- `automation-templates/`：复盘、健康检查、Goal 检查和运行记录模板；这些文件不会自行创建定时任务。
- `chapter-map.md`：章节、Prompt、Skill、输入和输出之间的映射。
- `tests/`：结构、映射和触发边界验证。

## 与 newtype Lite 的关系

[newtype Lite](https://github.com/newtype-01/newtype-lite) 是通用内容团队方法包，覆盖 brief、研究、分析、写作、编辑和事实核查。newtype 自媒体工作流是面向本书的垂直执行套件，负责特定项目结构和平台工作流。

两者可以同时安装，但互不依赖：

- 普通研究、报告、编辑和通用内容任务，适合使用 newtype Lite。
- 明确涉及账号说明书、公众号、小红书、短视频或本书项目结构的任务，适合使用本套件。

## 安全边界

- 缺少账号信息、真实素材或关键判断时停止并请求补充，不编造经历、数据或来源。
- 不自动发布，不代表用户操作外部平台，不自动创建 Automation。
- 不覆盖原始素材或已有终稿；需要修改时新建版本或先获得明确授权。
- 产品功能、平台规则和时效性事实需要根据当前官方信息核查。

## 版本

当前套件版本：`0.1.0`

版本与书稿的对应关系见 [COMPATIBILITY.md](COMPATIBILITY.md)。
