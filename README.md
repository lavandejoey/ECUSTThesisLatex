# ECUST Thesis Latex

该仓库包含华东理工大学的论文Latex模板[`ecustthesis.cls`](src/ecustthesis.cls)及一个简单的使用样例[`ecustthesis.tex`](src/ecustthesis.tex)，使用 xelatex/lualatex 环境编译。

## 仓库结构

```tree

├── img/
│ └── ECUST-logo.png
├── src/
│ ├── code/
│ ├── sections/
│ ├── Acknowledgements.tex
│ ├── Appendix.tex
│ ├── ecustthesis.bib
│ ├── ecustthesis.cls
│ └── ecustthesis.tex
└── LICENSE

```

## 使用方法

1. 安装[TeXLive](https://tug.org/texlive/acquire-netinstall.html)或[MiKTeX](https://miktex.org/download)
2. 安装[TexStudio](https://www.texstudio.org/)、[JetBrains TeXiFy插件](https://plugins.jetbrains.com/plugin/9473-texify-idea)或其他LaTeX编辑器
3. 在工作目录下clone仓库或下载并解压压缩包

```shell
git clone https://github.com/lavandejoey/ECUSTThesisLatex.git
```

5. 在ecustthesis.tex中编辑论文内容
6. 使用xelatex或lualatex编译ecustthesis.tex生成pdf

```shell
xelatex ecustthesis.tex
```

8. 使用biber编译文献bib文件  

```shell
biber ecustthesis  
```

## Todo

- [ ] 文献翻译格式模板
- [ ] 开题报告格式模板
- [ ] 论文封面设计
- [x] ~~中英文摘要格式~~
- [x] ~~目录~~
- [x] ~~图表中文名~~
- [x] ~~页眉页脚~~
- [x] ~~正文格式~~

## 更新记录

- [2023-09-13] 修复目录字体大小问题

## 贡献者

- [@lavandejoey](https://github.com/lavandejoey)

欢迎提交issue或PR来改进模板，或email:[lavandejoey@outlook.com](mailto:lavandejoey@outlook.com)

## 许可证

该项目使用 MIT 许可证,详见 [LICENSE](LICENSE) 文件。
