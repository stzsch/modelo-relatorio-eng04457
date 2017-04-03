\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eng04457}[2017/04/03 Modelo de Relatório ENG04457 v1.0]
\LoadClass[a4paper, 12pt]{extarticle} % extarticle é mais flexível com tamanhos de fonte

\RequirePackage[T1]{fontenc} % hifenização
\RequirePackage[utf8]{inputenc} % caracteres acentuados
\RequirePackage[brazil]{babel} % determina linguagem
\RequirePackage{anyfontsize} % tamanhos de fonte
\RequirePackage{mathptmx} % utiliza fonte Times New Roman
\RequirePackage{amsmath} % símbolos e ambientes matemáticos

\RequirePackage{graphicx} % inserção de figuras
\RequirePackage{float} % utilização do parâmetro [H] para figuras e tabelas
\RequirePackage[labelfont=bf, % legendas em negrito
                labelsep=period]{caption} % utilização de ponto ao invés de dois pontos em legendas
\newcommand{\source}[1]{\caption*{\textbf{Fonte} -- {#1}}.}
% \RequirePackage{ragged2e} % alinhamento em tabelas
\RequirePackage{hhline} % linha horizontal dupla em tabelas
\RequirePackage{array} % coluna centrada e com tamanho definido em tabelas
\setlength{\tabcolsep}{0.5cm} % tamanho de coluna em tabelas

\RequirePackage{geometry} % ajuste de margens
\geometry{a4paper,tmargin=2.8cm,bmargin=1.75cm,lmargin=1.75cm,rmargin=1.75cm} % valores de margem
\RequirePackage{indentfirst} % sempre indentar parágrafos
\setlength{\parindent}{0.5cm} % tamanho de identação

\RequirePackage{fancyhdr} % header
\pagestyle{fancy}
\fancyhead[RE,LO]{\textit{\the\headertext} \ \textbf{\the\year}}
\fancyhead[LE,RO]{\textbf{\thepage}}
\fancyfoot[CE,CO]{}
\fancyfoot[LE,RO]{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
%\addtolength{\voffset}{-2cm}
%\addtolength{\topmargin}{4cm}
%\addtolength{\headsep}{1cm}



\RequirePackage{titlesec} % modificação de seções
\titleclass{\section}{straight}
\titlespacing*{\section}{0pt}{1em}{1em}
\titleformat{\section}[block]
  {\raggedright \bfseries}
  {\thetitle. }
  {0em}
  {}
\titleclass{\subsection}{straight}
\titlespacing*{\subsection}{0pt}{1em}{1em}
\titleformat{\subsection}[block]
  {\raggedright \itshape}
  {\thetitle. }
  {0em}
  {}
\titleformat{\subsubsection}[hang]
  {\itshape}
  {\thesubsubsection. }
  {0em}
  {}

\RequirePackage[biblabel]{cite} % citação
\renewcommand\citeleft{}
\renewcommand\citeright{.}


\RequirePackage[pdftex]{hyperref} % links
\urlstyle{same}
\hypersetup{
  colorlinks   = true, %Colours links instead of ugly boxes
  urlcolor     = blue, %Colour for external hyperlinks
  linkcolor    = black, %Colour of internal links
}
\linespread{1.18}

%\renewcommand\section{\@startsection {section}{1}{\z@}%
%                                   {-2.0ex \@plus -1ex \@minus -.2ex}%
%                                   {1.5ex \@plus.2ex}%
%                                   {\normalfont \normalsize \bfseries}}

%\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
%                                     {-1.5ex\@plus -1ex \@minus -.2ex}%
%                                     {1.5ex \@plus .2ex}%
%                                     {\normalfont \normalsize \it}}

\newcommand{\emailaddress}[2]{\href{mailto:#1}{#1} (#2)}

\newtoks{\headertext}
\newtoks{\ano}
\newtoks{\emails}
\newtoks{\datainicio}
\newtoks{\datafinal}
\newtoks{\resumo}
\newtoks{\resumoeng}
\newtoks{\keywords}

\renewcommand\maketitle{
\let\endtitlepage\relax

\begin{titlepage}
%{.}
%\mbox{}
\vspace*{-1.6cm}

\setlength{\parindent}{0pt}


{\textit{Instrumentação A, \the\ano, UFRGS, DELET}}

\vspace{0.7cm}

\hfill {\fontsize{32}{40}\selectfont \textit{\textbf{Instrumentação A}}}

\vspace{0.9cm}

{\textit{Relatório}}

\vspace{0.5cm}

{\fontsize{18}{22}\selectfont \textbf{\@title}}

\vspace{0.5cm}

{\textbf{\@author}}

\vspace{0.6cm}

{
\hfill
\begin{minipage}{16.9cm}
Universidade Federal do Rio Grande do Sul, Departamento de Engenharia Elétrica, Curso de \\ Engenharia Elétrica, Instrumentação A, Profs. Dr. Alexandre Balbinot e Dra. Léia Bagesteiro
\end{minipage}
}

\vspace{0.6cm}

E-Mails: \the\emails

\vspace{0.4cm}

{\it Data Início: \the\datainicio; Data Final: \the\datafinal}

\rule{\linewidth}{0.8pt}

\vspace{0.6cm}

{
\hfill
\begin{minipage}{15.5cm}


\textbf{Resumo}. \the\resumo

\vspace{0.5cm}

\textbf{Abstract}. \the\resumoeng

\vspace{0.5cm}

\textbf{Palavras Chave}: \the\keywords
\end{minipage}
\hfill
}

\vspace{0.5cm}

\rule{\linewidth}{0.8pt}

\end{titlepage}
}

\endinput