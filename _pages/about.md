---
permalink: /
title: "Academic Pages 是一个基于 GitHub Pages 的学术个人网站模板"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

这是一个由 [Academic Pages 模板](https://github.com/academicpages/academicpages.github.io) 驱动并托管在 GitHub Pages 上的网站首页。[GitHub Pages](https://pages.github.com) 是一项免费服务，网站从存储在 GitHub 仓库中的代码和数据构建并托管，当仓库有新提交时会自动更新。此模板从 Michael Rose 创建的 [Minimal Mistakes Jekyll 主题](https://mmistakes.github.io/minimal-mistakes/) 分叉而来，然后扩展以支持学术人员所需的内容类型：发表论文、学术报告、教学工作、作品集、博客文章和动态生成的简历。顺便说一句，这些相同的功能使其成为任何需要展示专业模板的人的绝佳选择！

您可以立即 [分叉此模板](https://github.com/academicpages/academicpages.github.io)，修改配置和 Markdown 文件，添加您自己的 PDF 和其他内容，免费拥有自己的网站，无广告！

数据驱动的个人网站
======
与许多其他基于 Jekyll 的 GitHub Pages 模板一样，Academic Pages 让您将网站的内容与其形式分离。您网站的内容和元数据位于结构化的 Markdown 文件中，而各种其他文件构成主题，指定如何将该内容和元数据转换为 HTML 页面。您将这些各种 Markdown (.md)、YAML (.yml)、HTML 和 CSS 文件保存在公共 GitHub 仓库中。每次您提交并推送到仓库的更新时，[GitHub Pages](https://pages.github.com/) 服务都会基于这些文件创建静态 HTML 页面，这些页面免费托管在 GitHub 的服务器上。

动态内容管理系统（如 Wordpress）的许多功能都可以通过这种方式实现，使用一小部分计算资源，并且对黑客攻击和 DDoS 攻击的脆弱性要小得多。您还可以随心所欲地修改主题，而无需触及网站的内容。如果您到了在 Jekyll/HTML/CSS 中破坏了某些无法修复的东西的地步，您描述报告、论文等的 Markdown 文件是安全的。您可以回滚更改甚至删除仓库并重新开始 - 只需确保保存 Markdown 文件！您还可以编写处理网站上结构化数据的脚本，例如 [这个脚本](https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.ipynb)，它分析关于报告的页面中的元数据以显示 [您进行过报告的每个位置的地图](https://academicpages.github.io/talkmap.html)。

对于需要更高级功能的用户，模板还支持以下流行工具：
- [MathJax](https://www.mathjax.org/) 用于数学方程
- [Mermaid](https://mermaid.js.org/) 用于图表
- [Plotly](https://plotly.com/javascript/) 用于绘图

开始使用
======
1. 如果您还没有 GitHub 账户，请注册一个并确认您的电子邮件（必需！）
1. 点击右上角的"使用此模板"按钮 [分叉此模板](https://github.com/academicpages/academicpages.github.io)。
1. 转到仓库的设置（以"Code"开头的标签中最右边的项目，应该在"Unwatch"下方）。将仓库重命名为"[您的 GitHub 用户名].github.io"，这也将是您网站的 URL。
1. 设置全站配置并创建内容和元数据（见下文 - 另请参阅 [这组差异](https://archive.is/3TPas)，显示为用户名"getorg-testacct"的用户设置 [示例网站](https://getorg-testacct.github.io) 时更改了哪些文件）
1. 将任何文件（如 PDF、.zip 文件等）上传到 files/ 目录。它们将出现在 https://[您的 GitHub 用户名].github.io/files/example.pdf。
1. 通过转到仓库设置，在"GitHub pages"部分检查状态

全站配置
------
网站的主配置文件位于基础目录中的 [_config.yml](https://github.com/academicpages/academicpages.github.io/blob/master/_config.yml)，它定义了侧边栏中的内容和其他全站功能。您需要用关于您自己和您网站的 github 仓库的变量替换默认变量。顶部菜单的配置文件位于 [_data/navigation.yml](https://github.com/academicpages/academicpages.github.io/blob/master/_data/navigation.yml)。例如，如果您没有作品集或博客文章，您可以从该 navigation.yml 文件中删除这些项目以从标题中删除它们。

创建内容和元数据
------
对于网站内容，每种类型的内容都有一个 Markdown 文件，它们存储在 _publications、_talks、_posts、_teaching 或 _pages 等目录中。例如，每个报告是 [_talks 目录](https://github.com/academicpages/academicpages.github.io/tree/master/_talks) 中的一个 Markdown 文件。每个 Markdown 文件的顶部是关于报告的 YAML 结构化数据，主题将解析这些数据以执行许多很酷的操作。关于报告的相同结构化数据用于生成 [报告页面](https://academicpages.github.io/talks) 上的报告列表、每个 [特定报告的单独页面](https://academicpages.github.io/talks/2012-03-01-talk-1)、[CV 页面](https://academicpages.github.io/cv) 的报告部分，以及 [您进行过报告的地点地图](https://academicpages.github.io/talkmap.html)（如果您运行此 [python 文件](https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.py) 或 [Jupyter notebook](https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.ipynb)，它会基于 _talks 目录的内容创建地图的 HTML）。

**Markdown 生成器**

仓库包含 [一组 Jupyter notebooks](https://github.com/academicpages/academicpages.github.io/tree/master/markdown_generator)，它将包含关于报告或演示的结构化数据的 CSV 转换为将为 Academic Pages 模板正确格式化的单个 Markdown 文件。该目录中的示例 CSV 是我用来在 stuartgeiger.com 创建自己的个人网站的 CSV。我通常的工作流程是保留我的论文和报告的电子表格，然后运行这些 notebooks 中的代码生成 Markdown 文件，然后将它们提交并推送到 GitHub 仓库。

如何编辑您网站的 GitHub 仓库
------
许多人使用 git 客户端在本地计算机上创建文件，然后将它们推送到 GitHub 的服务器。如果您不熟悉 git，您可以直接在 github.com 界面中直接编辑这些配置和 Markdown 文件。导航到文件（如 [这个文件](https://github.com/academicpages/academicpages.github.io/blob/master/_talks/2012-03-01-talk-1.md)）并点击内容预览右上角的铅笔图标（在"Raw | Blame | History"按钮的右侧）。您可以通过点击铅笔图标右侧的垃圾桶图标来删除文件。您还可以通过导航到目录并点击"Create new file"或"Upload files"按钮来创建新文件或上传文件。

示例：编辑报告的 Markdown 文件
![编辑报告的 Markdown 文件](/images/editing-talk.png)

更多信息
------
有关配置 Academic Pages 的更多信息可以在 [指南](https://academicpages.github.io/markdown/)、[不断增长的 wiki](https://github.com/academicpages/academicpages.github.io/wiki) 中找到，您也可以随时 [在 GitHub 上提问](https://github.com/academicpages/academicpages.github.io/discussions)。[Minimal Mistakes 主题的指南](https://mmistakes.github.io/minimal-mistakes/docs/configuration/)（此主题从中分叉而来）也可能有所帮助。
