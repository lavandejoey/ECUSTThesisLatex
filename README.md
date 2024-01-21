# [ECUST Thesis Latex](https://github.com/lavandejoey/ECUSTThesisLatex)

[//]: # (The badges)
[![stars](https://img.shields.io/github/stars/lavandejoey/ECUSTThesisLatex)]()
[![license](https://img.shields.io/github/license/lavandejoey/ECUSTThesisLatex)](LICENSE)
[![Miktex](https://img.shields.io/badge/Miktex-2.9-blue)](https://miktex.org/download)
[![TexiFy](https://img.shields.io/badge/TexiFy-1.0.0-blue)](https://plugins.jetbrains.com/plugin/9473-texify-idea)

该仓库包含华东理工大学的论文Latex模板[`ecustthesis.cls`](src/ecustthesis.cls)
及一个简单的使用样例[`ecustthesis.tex`](src/ecustthesis.tex)，使用 xelatex/lualatex 环境编译。

## 仓库结构

```tree
ECUSTThesisLatex/
 ├── img/
 │  └── ECUST-logo.png
 ├── src/
 │  ├── Acknowledgements.tex
 │  ├── Appendix.tex
 │  ├── code/
 │  ├── ecustthesis.bib
 │  ├── ecustthesis.cls
 │  ├── ecustthesis.tex
 │  └── sections/
 │     ├── 0Abstract.tex
 │     ├── 1Introduction.tex
 │     ├── 2RelatedWork.tex
 │     ├── 3Methodology.tex
 │     ├── 4experiments.tex
 │     └── 5Conclusion.tex
 ├── tex2pdf.sh
 ├── tex2pdf.bat
 ├── README.md
 └── LICENSE
```

## 使用方法

### Linux (Ubuntu 22测试)

1. 安装[TeXLive](https://tug.org/texlive/acquire-netinstall.html)或[MiKTeX](https://miktex.org/download)
2. 安装[TexStudio](https://www.texstudio.org/)、[JetBrains TeXiFy插件](https://plugins.jetbrains.com/plugin/9473-texify-idea)
或其他LaTeX编辑器
3. 在工作目录下clone仓库或下载并解压压缩包
    ```shell
    git clone https://github.com/lavandejoey/ECUSTThesisLatex.git
    ```
4. 在ecustthesis.tex中编辑论文内容
5. 使用xelatex或lualatex编译ecustthesis.tex生成pdf（使用biber编译文献bib文件）
   - 通过 JetBrain (PyCharm) / TexStudio 编译      
   - Linux:
      ```shell
      sh tex2pdf.sh
      ```
   - Windows 下点击运行`tex2pdf.bat`文件
6. 在out目录下查看生成的pdf文件 （`$THESIS_ROOT/out/ecustthesis.pdf`）

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

- [2024-01-21] 使用ctex替代xeCJK包，根据模板优化页眉页脚，优化公式。
- [2023-09-13] 修复目录字体大小问题。
- [2023-09-27] 新增Linux (Ubuntu 22测试)、Windows 编译脚本。

## 贡献者

- [@lavandejoey](https://github.com/lavandejoey)

欢迎提交issue或PR来改进模板，或email:[lavandejoey@outlook.com](mailto:lavandejoey@outlook.com)

## 许可证

该项目使用 MIT 许可证,详见 [LICENSE](LICENSE) 文件。
