\LoadClass{report}

%% LANG %%
%\usepackage[italian]{babel} %Italian
\usepackage[english]{babel} %English

%% PACKAGES %%
% Basic packages %
\usepackage[T1]{fontenc}
\usepackage{amsmath, amsfonts, amssymb}
\usepackage{graphicx, geometry, wrapfig, xcolor, float, multicol, mathtools, array, csquotes, lscape, setspace, microtype}
\usepackage[export]{adjustbox}
\usepackage[most]{tcolorbox}
\usepackage{multirow, booktabs, makecell, diagbox}
\usepackage{pdfpages}
\usepackage{fancyhdr}
\usepackage{caption}
\usepackage{subcaption}
\usepackage{colortbl}
\usepackage{listings} %add code portions

% Optional packages %
%\usepackage[version=4]{mhchem} %insert chemical formulas
%\usepackage{chemfig} %draw molecules and reactions
%\usepackage{siunitx} %SI units in mathematical formula using \si{} in the math environment
%\usepackage{arydshln} %dashed line in tables
%\usepackage{chronosys} %create timelines
%\usepackage{minted} % add code portions (you can use this instead of listings, but you need to install Python and Pygments - this usually leads to more problems than listings)
%\setminted{fontsize=\footnotesize} %minted code size

\usepackage{lipsum} %testing purposes package

%% THEOREMS %%
\usepackage{thmbox} %theorems boxes
\newtheorem[M]{defi}{Definition}[section]
\newtheorem[M]{lem}{Lemma}[section]
\newtheorem[M]{theo}{Theorem}[section]

%% STYLE %%
% Page geometry %
\geometry{
    top=3.0cm,
    bottom=3.0cm,
    outer=3.0cm,
    inner=4.0cm
}

\setlength{\parindent}{0em} % no indentation
\onehalfspacing % line-spacing

% Labels (bold figures' labels, remove colon)
\usepackage[labelfont={bf,sc},labelsep=space]{caption} 

% Fonts 
% !! Use XeLaTeX or LuaLaTeX compilers !!
\usepackage{fontspec}
\setmainfont{MinionPro-Regular.otf}[
    Path = ./settings/fonts/ ,
    BoldFont = MinionPro-Bold.otf ,
    ItalicFont = MinionPro-It.otf ,
    BoldItalicFont = MinionPro-BoldIt.otf ]

\setmonofont{JetBrainsMono-Light.ttf}[
    Path = ./settings/fonts/ ,
    BoldFont = JetBrainsMono-Bold.ttf ,
    ItalicFont = JetBrainsMono-Italic.ttf ,
    BoldItalicFont = JetBrainsMono-BoldItalic.ttf ]

% Alternative fonts for any compiler (comment the above lines and uncomment the following)
% \usepackage{cmbright}
% \usepackage[OT1]{fontenc}

% Chapter style %
\usepackage{titlesec, blindtext}
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{teal!40!white}{$\vert$}\hsp}{0pt}{\Huge\bfseries}

% Table of contents style %
\newcommand{\romantableofcontents}{
    \newpage
    \pagenumbering{roman}
    \tableofcontents
    \newpage
}

% Link style and pdf title %
\usepackage{hyperref}
\usepackage{url}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=black,
    citecolor=teal,
    pdftitle={SciThesis},
    pdfauthor={Name Surname}
    }
\urlstyle{same}

% Code style %
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{white},   
    commentstyle=\color{teal},
    keywordstyle=\color{purple},
    numberstyle=\tiny\color{gray},
    stringstyle=\color{violet},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

\lstset{style=mystyle}

%% BIBLIOGRAPHY %%
% Bibliography %
\usepackage[backend=biber, style=authoryear-comp, sorting=nyt, maxcitenames=2]{biblatex}
\addbibresource{ref.bib}
\renewcommand*{\nameyeardelim}{\addcomma\space} %Add comma between author and year