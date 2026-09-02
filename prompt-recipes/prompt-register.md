# 书稿实操 Prompt 登记表

本表按章节登记实操 Prompt 的去向。一个章节可能有多个 Prompt，但只要它们属于同一阶段，就由同一个配方和 Skill 维护。代码块中的目录树、模板正文、示例成稿和反例属于“说明或模板”，不作为孤立 Prompt 维护。

| 章节 | 实操 Prompt 类型 | 维护位置 | Skill 阶段 | 处理方式 |
| --- | --- | --- | --- | --- |
| 第 2 章 | 读取材料、生成并保存第一次内容 | `01-project.md` | 无 | 保留手动任务，训练第一次协作 |
| 第 4 章 | 检查目录、创建项目、写使用说明 | `01-project.md` | `self-media-project` 项目结构 | 已映射 |
| 第 5 章 | 提问、生成、检查和修改账号说明书 | `01-project.md` | `self-media-project` 账号说明书 | 已映射 |
| 第 6 章 | 整理选题、素材、视觉参考和缺口 | `01-project.md` | `self-media-project` 索引 | 已映射 |
| 第 7 章 | Prompt 变 Workflow、检查 Workflow | `06-workflow-to-skill.md` | Workflow 准备阶段 | 未稳定前保留手动 |
| 第 8 章 | 判断公众号选题、生成三个角度和选题卡 | `02-wechat.md` | `wechat-article` 选题 | 已映射 |
| 第 9 章 | 检查素材、生成大纲和公众号初稿 | `02-wechat.md` | `wechat-article` 大纲与初稿 | 已映射 |
| 第 10 章 | 诊断、事实检查、改稿、标题和发布清单 | `02-wechat.md` | `wechat-article` 诊断与终稿 | 已映射 |
| 第 11 章 | 公众号母题转小红书角度和选题卡 | `03-xiaohongshu.md` | `xiaohongshu-note` 选题 | 已映射 |
| 第 12 章 | 小红书正文、图文页和修改 | `03-xiaohongshu.md` | `xiaohongshu-note` 正文 | 已映射 |
| 第 13 章 | 封面方向、图片 Prompt、发布检查和保存 | `03-xiaohongshu.md` | `xiaohongshu-note` 视觉与发布准备 | 已映射 |
| 第 14 章 | 母题转视频角度和视频选题卡 | `04-video.md` | `short-video-content` 选题 | 已映射 |
| 第 15 章 | 视频结构、口播稿、试读和修改 | `04-video.md` | `short-video-content` 口播 | 已映射 |
| 第 16 章 | 字幕、分镜、素材、封面和发布清单 | `04-video.md` | `short-video-content` 制作准备 | 已映射 |
| 第 17 章 | Goal 创建、进度检查、周期复盘和总表 | `05-review-and-automation.md` | `content-review` Goal 与复盘 | 已映射 |
| 第 18 章 | 生成、检查、试跑和维护 Skill | `06-workflow-to-skill.md` | `workflow-to-skill` | 满足三次运行后映射 |
| 第 19 章 | 周复盘、健康检查、线程检查和运行记录 | `05-review-and-automation.md` | `content-review` 检查 | 说明文件映射；不创建定时任务 |

## 审核规则

逐章复核时，把代码块分成三类：

1. **可执行 Prompt**：必须出现在上表某个任务类型和对应配方中。
2. **项目模板或示例输出**：进入 `starter-project/`、`examples/` 或 Automation 模板，不再重复写成 Prompt。
3. **解释、反例或界面说明**：保留在书中，不进入 Skill。

新增章节 Prompt 时必须同步更新本表和 `chapter-map.md`。
