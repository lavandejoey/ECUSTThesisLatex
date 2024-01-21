%! Class = ecustthesis
%! Author = lavandejoey
%! Date = 20/6/2023
%! 华东理工大学本科毕业论文模板
%MIT License
%
%Copyright (c) 2023 LAVANDEJOEY
%
%Permission is hereby granted, free of charge, to any person obtaining a copy
%of this software and associated documentation files (the "Software"), to deal
%in the Software without restriction, including without limitation the rights
%to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%copies of the Software, and to permit persons to whom the Software is
%furnished to do so, subject to the following conditions:
%
%The above copyright notice and this permission notice shall be included in all
%copies or substantial portions of the Software.
%
%THE SOFTWARE IS PROVIDED "AS IS," WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%SOFTWARE.
%========================================================单位换算========================================================
%	中文字号		英文字号(磅)/pt		毫米/mm		像素/px
%	初号				42.0			14.82		56
%	小初				36.0			12.7		48
%	一号				26.0			9.17		34.7
%	小一				24.0			8.47		32
%	二号				22.0			7.76		29.3
%	小二				18.0			6.35		24
%	三号				16.0			5.64		21.3
%	小三				15.0			5.29		20
%	四号				14.0			4.94		18.7
%	小四				12.0			4.23		16
%	五号				10.5			3.7			14
%	小五				9.0				3.18		12
%	六号				7.5				2.56		10
%	小六				6.5				2.29		8.7
%	七号				5.5				1.94		7.3
%	八号				5.0				1.76		6.7
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\newcommand{\qiuhao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\newcommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}
%=========================================================文档类=========================================================
%Inheriet from article class
\LoadClass[12pt]{article}    % 文档类型
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
%Packages
\RequirePackage{amsmath}%数学公式
\RequirePackage{amssymb}%数学符号
\RequirePackage{amsthm}%数学定理
\RequirePackage{amsfonts}%数学字体
\RequirePackage{enumitem}%列表
\RequirePackage{fancyhdr}%页眉页脚
\RequirePackage{hyphenat}%断词
\RequirePackage{makecell}%表格
\RequirePackage{tabularx}
\RequirePackage{booktabs}
%========================================================页面==========================================================
%A4纸,双面打印
%页面设置:左、右、下边距为2.5厘米,上边距为2.8厘米
\RequirePackage[a4paper, bindingoffset=0.5cm,%showframe=true,%TODO: delete showframe
    left = 2.5cm, right = 2.5cm, top = 2.8cm, bottom = 2.5cm]{geometry}
%页眉和页脚均为2厘米
% 设置页眉和页脚
\pagestyle{fancy}
\fancyhf{} % 清除默认的页眉页脚设置
% 设置目录页的页眉和页脚
% fancyhead: 设置页眉， L:左侧，C:中间，R:右侧
% fancyfoot: 设置页脚， L:左侧，C:中间，R:右侧
\fancypagestyle{plain}{
    \fancyhf{} % 清除plain样式的默认设置
    \headheight 14.5pt % 设置页眉高度
    \fancyhead[L]{\fangsong\wuhao \@title} % 页眉左侧显示标题
    % 页眉右侧显示“页码”
    \fancyhead[C]{\fangsong\wuhao \thepage}
%    \fancyfoot[C]{\fangsong\wuhao \thepage} % 页脚居中显示页码
}
% 设置页眉和页脚线的厚度
\renewcommand{\headrulewidth}{0.4pt} % 页眉线的厚度
\renewcommand{\footrulewidth}{0pt} % 页脚线的厚度
%字间距设置为“标准”
\RequirePackage{setspace}
%行间距设置为“1.25倍行距”
\setstretch{1.25}
%首行缩进2字符
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
%超链接
\RequirePackage[
    colorlinks,
    linkcolor = black,
    anchorcolor = black,
    citecolor = red,
]{hyperref}
%=========================================================字体==========================================================
% 非汉字统一使用Times New Roman体
\RequirePackage{fontspec}
\RequirePackage{ctex}         % Use ctex package for Chinese typesetting
\setmainfont{Times New Roman}  % Set main font to Times New Roman
% 汉字默认使用宋体,特别说明的除外。
\setCJKmainfont{SimSun}  % Set main Chinese font to SimSun
\setCJKmonofont{SimSun}
\newcommand{\fangsong}{\fontspec{SimSun}}
\newcommand{\heiti}{\fontspec{SimHei}[BoldFont=SimHei]}
%=========================================================封面=========================================================
% Define the title page
%中文日期格式
\RequirePackage{datetime2} % Load the datetime2 package for date and time formatting
\renewcommand{\DTMdisplaydate}[4]{%
    \number#1 年 \number#2 月 \number#3 日}%
\renewcommand{\DTMDisplaydate}[4]{%
    \number#1 年 \number#2 月 \number#3 日}%
%======================================================摘要和关键词======================================================
%摘要单独成页,连续编页码,且页码位于页面下方居中,罗马数字,五号字。
%标题“摘要”黑体小二号居中，段前、段后均设置为12磅。内容首行缩进两格，用小四号字。
% Define the Chinese and English abstract commands
\newcommand{\cnabstract}[2]{\def\@cntitle{摘要}\def\@cnabstract{#1}\def\@cnkeywords{#2}}
\newcommand{\enabstract}[2]{\def\@entitle{Abstract}\def\@enabstract{#1}\def\@enkeywords{#2}}
% Define a command to print the abstracts
\newcommand{\makeabstract}{%新建页面，页码为罗马数字，页码位于页面下方居中，五号字
    \newpage
    % 修改页眉和页脚的格式
    \fancyhf{} % 清除默认的页眉页脚设置
    % 设置目录页的页眉和页脚
    % fancyhead: 设置页眉， L:左侧，C:中间，R:右侧
    % fancyfoot: 设置页脚， L:左侧，C:中间，R:右侧
    \fancyhf{} % 清除plain样式的默认设置
    \fancyhead[L]{\fangsong\wuhao \@title} % 页眉左侧显示标题
    % 页眉右侧显示“页码”
%        \fancyhead[C]{\fangsong\wuhao \thepage}
    \fancyfoot[C]{\fangsong\wuhao \thepage} % 页脚居中显示页码

%    \pagenumbering{gobble}%TODO 禁用页码
    %禁用页码需注释掉:
    \pagenumbering{Roman}\setcounter{page}{1}

    \setlength{\parskip}{12pt}
    %中文摘要
    \newpage
    \begin{center}
        \xiaoer{\heiti{\bfseries{\@cntitle}}}
    \end{center}
    \addcontentsline{toc}{section}{摘要}%TODO 禁用页码需注释掉
    %段前、段后均设置为12磅，首行缩进两格，用小四号字，左对齐
    \setlength{\parindent}{2em}
    \xiaosi{\par\@cnabstract}\par
    \noindent{\heiti\textbf{关键词：}}{\fangsong\@cnkeywords}
    %英文摘要
    \newpage
    \begin{center}
        \xiaoer\textbf{\@entitle}
    \end{center}
    \addcontentsline{toc}{section}{Abstract}%TODO 禁用页码需注释掉
    \setlength{\parindent}{0em}
    {\xiaosi\par\@enabstract}\par
    %关键词左对齐，段前距为12磅，Times New Roman粗体小四号
    \noindent{\textbf{Keywords: }}{\@enkeywords}
    \newpage\pagenumbering{arabic}\setcounter{page}{1}
    %恢复原来的设置
    \setlength{\parindent}{2em}
    \pagestyle{plain}
}
% Initialize the abstracts and keywords to empty
\cnabstract{}{}
\enabstract{}{}
%=========================================================章节=========================================================
\RequirePackage{titlesec}%章节标题
% 1 一级标题（换页并首行居中，黑体小二号，段前距、段后距分别为12磅）
\titleformat{\section}[block]{\bfseries\heiti\xiaoer\selectfont\centering\newpage}{\thesection}{1em}{}
\titlespacing*{\section}{0pt}{12pt}{12pt}
% 1.1 二级标题（黑体四号，左对齐，段前距为12磅）
\titleformat{\subsection}[block]{\bfseries\heiti\sihao\selectfont}{\thesubsection}{1em}{}[]
\titlespacing*{\subsection}{0pt}{12pt}{0pt}
% 1.1.1 三级标题（黑体小四号，左对齐，段前距为12磅）
\titleformat{\subsubsection}[block]{\bfseries\heiti\xiaosi\selectfont}{\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{0pt}{12pt}{0pt}
%=========================================================目录=========================================================
\RequirePackage{titletoc}
%目录（标题黑体小二号居中，段前距、段后距分别为12磅）
\renewcommand\contentsname{\centering\erhao\heiti 目录}%通过重新定义目录页的标题使得目录中间加上了空格
%目录中各章节标题段前、段后均为0pt，目录中各章节页码两端对齐，目录中各章节标题之间的距离为1.08行距
\renewcommand{\tableofcontents}{%
% 修改页眉和页脚的格式
    \fancyhf{} % 清除默认的页眉页脚设置
    % 设置目录页的页眉和页脚
    % fancyhead: 设置页眉， L:左侧，C:中间，R:右侧
    % fancyfoot: 设置页脚， L:左侧，C:中间，R:右侧
    \fancyhf{} % 清除plain样式的默认设置
    \fancyhead[L]{\fangsong\wuhao \@title} % 页眉左侧显示标题
    % 页眉右侧显示“页码”
%        \fancyhead[C]{\fangsong\wuhao \thepage}
    \fancyfoot[C]{\fangsong\wuhao \thepage} % 页脚居中显示页码

    \begingroup
    \setstretch{1.08}% Adjust the value for desired spacing
    \let\clearpage\relax
    \newpage
%    \pagenumbering{gobble}%TODO 禁用页码
    %禁用页码需注释掉:
    \pagenumbering{Roman}\setcounter{page}{1}

    \section*{\contentsname}
    \@starttoc{toc}%
    \endgroup
    \clearpage
    \newpage\pagenumbering{arabic}\setcounter{page}{1}
    \setstretch{1.25}
    %恢复原来的设置
    \setlength{\parindent}{2em}
    \pagestyle{plain}
}
%一级标题用黑体四号-[标题距左边距离]{字体大小}{标签}      {标签和标题之间的距离} {画横线}             {页码}
\titlecontents{section}[1.5em]{\sihao\heiti}{\contentslabel{1em}}{\hspace*{-1.5em}}{\titlerule*[0.6pc]{.}\contentspage[\sihao\thecontentspage]}
%二级标题用黑体小四号
\titlecontents{subsection}[3.5em]{\xiaosi\heiti}{\contentslabel{2em}}{\hspace*{0em}}{\titlerule*[0.6pc]{.}\contentspage[\sihao\thecontentspage]}
%三级标题用黑体五号
\titlecontents{subsubsection}[5em]{\wuhao\heiti}{\contentslabel{3em}}{\hspace*{0em}}{\titlerule*[0.6pc]{.}\contentspage[\sihao\thecontentspage]}
%========================================================参考文献========================================================
\RequirePackage[%
    backend=biber,%设置使用biber进行编译，也可以使用bibtex，但是功能更少
    style=gb7714-2015,%设置风格样式为国家标准gb7714-2015
    sorting=none%设置排序按照年份，名字，标题进行排序，若想按照引用顺序排序，将其设置为none即可
]{biblatex}% 参考文献包
%设置参考文献引用格式为正常文本
\newcommand{\bibsection}{%
%参考文献（换页，黑体小二号居中，段前距、段后距分别为12磅）
    \newpage\setlength{\parskip}{12pt}
    \setstretch{1.25}
    \section*{\centering \xiaoer\heiti\selectfont\bfseries 参考文献}
    \addcontentsline{toc}{section}{参考文献}
    %[序号] 著录内容（首行缩进两格，小四号字，序号和著录内容之间在半角状态下空一格）
    \setlength{\parindent}{2em}
    \xiaosi\printbibliography[heading=none]
}
%=========================================================致谢=========================================================
\titleformat{name=\section, numberless}
{\normalfont\xiaoer\bfseries\centering}{}{0em}{}
\titlespacing*{\section}{0pt}{12pt plus 2pt minus 2pt}{12pt plus 2pt minus 2pt}
\newcommand{\acknowledgements}[1]{%
%换页，黑体小二号居中，段前距、段后距分别为12磅
    \newpage\section*{\centering \xiaoer\heiti\selectfont\bfseries 致谢}%
    \addcontentsline{toc}{section}{致谢}
    %内容（首行缩进两格，小四号字）
    \setlength{\parindent}{2em}
    %行距为1.25倍行距
    \setstretch{1.25}
    {\xiaosi\indent#1\par}
    \raggedleft
    \par\@author\par
    \@date\par
}
%==========================================================附录=========================================================
\RequirePackage{appendix}%附录
% 重新定义附录相关命令
\renewcommand{\appendixname}{附录}
\renewcommand{\appendixpagename}{附录}
\renewcommand{\appendixtocname}{附录}
% 定义附录标题格式
\titleformat{name=\section, numberless}
{\normalfont\xiaoer\heiti\bfseries\centering}{}{0em}{}
% 设置附录标题间距
\titlespacing*{\section}{0pt}{12pt plus 2pt minus 2pt}{12pt plus 2pt minus 2pt}
% 重新定义附录命令
\renewcommand{\appendix}[1]{%
    \clearpage
    \stepcounter{section}% 自动递增节编号
    \section*{附录\Alph{section}\quad #1}%
    \addcontentsline{toc}{section}{附录\Alph{section}\quad #1}
}
%=========================================================图===========================================================
\RequirePackage{graphicx}%插图
\graphicspath{{../img/}}%设置图片路径
\renewcommand{\figurename}{图}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
%=========================================================表===========================================================
\RequirePackage{longtable}%长表格
\renewcommand{\tablename}{表}
\renewcommand{\thetable}{\thesection.\arabic{table}}
%=========================================================公式=========================================================
\RequirePackage{mathtools}%数学公式
\renewcommand{\equationautorefname}{式}
\renewcommand{\theequation}{\thesection-\arabic{equation}}
%=========================================================代码=========================================================
\RequirePackage{listings}
%=========================================================结束=========================================================
\endinput