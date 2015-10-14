\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zusammenfassung}[2014/11/06 XeLaTeX class]

\LoadClass[a4paper,parskip=half]{scrartcl}

\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\RequirePackage{amsmath,amsthm,amssymb,graphicx}
\RequirePackage[protrusion=true]{microtype}
\RequirePackage{geometry}
\RequirePackage{tikz}

\usetikzlibrary{calc}
%\setmainfont{Linux Libertine O}
%\setsansfont{Linux Biolinum}
\setmainfont{Linux Biolinum}
\setdefaultlanguage[babelshorthands=true]{german}

\pagestyle{empty}

\setlength{\unitlength}{1cm}

\newlength{\titleskip}
\setlength{\titleskip}{1.3em}
\renewcommand{\maketitle}[3]{%
  \begin{picture}(0,0)
  \put(0,-1) { \vbox{ Matheschülerzirkel\\Universität Augsburg\\Schuljahr #3\\#1 }}
  \put(13,-1.7) { \includegraphics[height=8em]{cover} }
  \end{picture}
  \vspace*{1.7cm}
  \begin{center}\Large\textbf{Zirkelzettel vom #2}\end{center}

  \vspace{\titleskip}
}

\renewcommand*\theenumi{\alph{enumi}}
\renewcommand{\labelenumi}{\theenumi)}

\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000

\newtheoremstyle{aufgabe}
  {2ex} %spaceabove
  {2ex} %spacebelow
  {} %bodyfont
  {} %indent
  {} %headfont
  {} %headpunctuation
  {} %headspace
  {{\bf\thmname{#1}\thmnumber{ #2}.}\thmnote{ \it #3}\\[\parskip]} %headspec

\theoremstyle{aufgabe}
\newtheorem{aufgabe}{Aufgabe}

