%%
%% This is file `stb-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% stb-thesis.dtx  (with options: `cls')
%% Copyright (C) 2023 Stellenbosch University
%% All rights reserved.
%% 
%% ----------------------------------------------------------------------
%% Stellenbosch University Thesis Class
%% ----------------------------------------------------------------------
%% 
%% Author:     Danie Els
%% Maintained: Danie Els (dnjels@sun.ac.za)
%% 
%% This work may be distributed and modified, and must be credited
%% under the conditions of the latest version of the Creative Commons
%% License (CC BY 4.0). The latest version of this license is in:
%% 
%%    https://creativecommons.org/licenses/by/4.0/
%% 
%% This work consists of the files
%%     stb-thesis.dtx
%%     stb-thesis.ins
%%     stb-thesis-afr.tex
%%     stb-thesis-eng.tex
%% and the derived files:
%%     stb-thesis.cls
%% -------------------------------------------------------------------
%% 
\newcommand{\STBTfileversion}{v1.3}
\newcommand{\STBTfiledate}{2023/09/01}
\NeedsTeXFormat{LaTeX2e}[2020/08/10]
\def\STB@basetype{book}
\ProvidesClass{stb-thesis}[\STBTfiledate
                           \STBTfileversion
                           Stellenbosh Thesis class (DNJ ELS)]
\RequirePackage{calc}
\RequirePackage{ifpdf}
\providecommand{\phantomsection}{}
\AtBeginDocument{%
   \@ifpackageloaded{graphicx}{}{%
   \ClassError{stb-thesis}{You must load the graphicx package}{}}}
\edef\STB@AFRstr{\string afrikaans}
\newcommand{\AorE}[2]{%
   \ifx\STB@AFRstr\languagename #1\else #2\fi}
\newenvironment{Afr}%
    {\ifx\languagename\STB@AFRstr\relax\else
       \selectlanguage{afrikaans}%
     \fi}%
    {}
\newcommand*\STB@ENGstr{}
\let\STB@ENGstr=\relax
\newenvironment{Eng}%
    {\ifx\relax\STB@ENGstr\relax\else
        \ifx\languagename\STB@ENGstr\relax\else
           \edef\STB@tempa{\noexpand\selectlanguage{\STB@ENGstr}}%
           \STB@tempa
        \fi
     \fi}%
    {}
\newcommand\DegreeName{%
    \ClassWarning{stb-thesis}{No degree or subject supplied}%
    \textfb{[No degree!]}}
\newcommand\DegreeNameLong{%
    \ClassWarning{stb-thesis}{No degree or subject supplied}%
    \textfb{[No degree!]}}
\newcommand*\STBName{}
\newcommand*\AuthByTxt{}
\newcommand*\StudyLeaderType{}
\newcommand*\StudyLeadersType{}
\newcommand*\CoStudyLeaderType{}
\newcommand*\CoStudyLeadersType{}
\newcommand*\SupervisorType{}
\newcommand*\SupervisorsType{}
\newcommand*\CoSupervisorType{}
\newcommand*\CoSupervisorsType{}
\newcommand*\TypeAssignment{}
\newcommand*\TypeThesis{}
\newcommand*\TypePhD{}
\newcommand*\CopyrightHolder{}
\newcommand*\CopyrightTxt{}
\newcommand*\CopyrightAnot{}
\newcommand*\Signat{}
\newcommand*\Datetxt{}
\newcommand*\MasterDescript{}
\newcommand*\PhDDescript{}
\newcommand*\ThesisDeclare{}
\newcommand*\MonthName{}
\newcommand*\DeclarationName{}
\newcommand*\AbstractName{}
\InputIfFileExists{stb-thesis.afr}
    {\ClassInfo{stb-thesis}{Input file 'stb-thesis.afr' loaded}}
    {\ClassError{stb-thesis}{No file 'stb-thesis.afr'}{}}
\InputIfFileExists{stb-thesis.eng}
    {\ClassInfo{stb-thesis}{Input file 'stb-thesis.eng' loaded}}
    {\ClassError{stb-thesis}{No file 'stb-thesis.eng'}{}}
\STBextrasenglish
\STBcaptionsenglish
\def\STB@addto#1#2{%
  #2%
  \@temptokena{#2}%
  \ifx#1\relax
    \let#1\@empty
  \fi
  \ifx#1\undefined
     \edef#1{\the\@temptokena}%
  \else
     \toks@\expandafter{#1}%
     \edef#1{\the\toks@\the\@temptokena}%
  \fi
  \@temptokena{}\toks@\@temptokena}
\newcommand\STB@addlangextras[2]{%
   \AtBeginDocument{%
      \expandafter\STB@addto\csname extras#1\endcsname #2}}
\newcommand\STB@addlangcaptions[2]{%
   \AtBeginDocument{%
      \expandafter\STB@addto\csname captions#1\endcsname #2}}
\DeclareOption{english}{%
   \edef\STB@ENGstr{\string english}%
   \STB@addlangextras{english}{\STBextrasenglish}%
   \STB@addlangcaptions{english}{\STBcaptionsenglish}}
\DeclareOption{UKenglish}{%
   \edef\STB@ENGstr{\string UKenglish}%
   \STB@addlangextras{UKenglish}{\STBextrasenglish}%
   \STB@addlangcaptions{UKenglish}{\STBcaptionsenglish}}
\DeclareOption{USenglish}{%
   \edef\STB@ENGstr{\string USenglish}%
   \STB@addlangextras{USenglish}{\STBextrasenglish}%
   \STB@addlangcaptions{USenglish}{\STBcaptionsenglish}}
\DeclareOption{british}{%
   \edef\STB@ENGstr{\string british}%
   \STB@addlangextras{british}{\STBextrasenglish}%
   \STB@addlangcaptions{british}{\STBcaptionsenglish}}
\DeclareOption{afrikaans}{%
   \STB@addlangextras{afrikaans}{\STBextrasafrikaans}%
   \STB@addlangcaptions{afrikaans}{\STBcaptionsafrikaans}}
\newif\if@Masters
\@Mastersfalse
\newif\if@PhD
\@PhDfalse
\newcommand{\ThesisType}{}
\newcommand{\SupervisorText}{}
\newcommand{\SupervisorsText}{}
\newcommand{\CoSupervisorText}{}
\newcommand{\CoSupervisorsText}{}
\DeclareOption{masters-a}{%
   \renewcommand{\ThesisType}{\TypeAssignment}%
   \renewcommand{\SupervisorText}{\SupervisorType}%
   \renewcommand{\SupervisorsText}{\SupervisorsType}%
   \renewcommand{\CoSupervisorText}{\CoSupervisorType}%
   \renewcommand{\CoSupervisorsText}{\CoSupervisorsType}%
   \@Masterstrue
   \@PhDfalse}
\DeclareOption{masters-t}{%
   \renewcommand{\ThesisType}{\TypeThesis}%
   \renewcommand{\SupervisorText}{\SupervisorType}%
   \renewcommand{\SupervisorsText}{\SupervisorsType}%
   \renewcommand{\CoSupervisorText}{\CoSupervisorType}%
   \renewcommand{\CoSupervisorsText}{\CoSupervisorsType}%
   \@Masterstrue
   \@PhDfalse}
\DeclareOption{PhD}{%
   \renewcommand{\ThesisType}{\TypePhD}%
   \renewcommand{\SupervisorText}{\SupervisorType}%
   \renewcommand{\SupervisorsText}{\SupervisorsType}%
   \renewcommand{\CoSupervisorText}{\CoSupervisorType}%
   \renewcommand{\CoSupervisorsText}{\CoSupervisorsType}%
   \@Mastersfalse
   \@PhDtrue}
\DeclareOption{twocolumn}{}
\newif\if@ABlock
\newif\if@GBlock
\newif\if@WBlock
\@ABlockfalse
\@GBlockfalse
\@WBlockfalse
\DeclareOption{a5block}{%
    \PassOptionsToClass{a4paper}{\STB@basetype}%
    \@ABlocktrue
    \@GBlockfalse
    \@WBlockfalse}
\DeclareOption{goldenblock}{%
    \PassOptionsToClass{a4paper}{\STB@basetype}%
    \@GBlocktrue
    \@ABlockfalse
    \@WBlockfalse}
\DeclareOption{wideblock}{%
    \PassOptionsToClass{a4paper}{\STB@basetype}%
    \@GBlockfalse
    \@ABlockfalse
    \@WBlocktrue}
\DeclareOption{stdblock}{%
   \@GBlockfalse
   \@ABlockfalse
   \@WBlockfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\STB@basetype}}
\ExecuteOptions{masters-t}
\ProcessOptions*\relax
\LoadClass[oneside,openany]{\STB@basetype}
\newlength{\STB@tdima}
\newlength{\STB@tdimb}
\newsavebox{\STB@tboxa}
\newsavebox{\STB@tboxb}
\newcounter{STB@tcnta}
\newcounter{STB@tcntb}
\newcommand\FixVertParams[1]{%
    \normalsize
    \setlength\STB@tdima{\textheight-\topskip}%
    \setcounter{STB@tcnta}{\STB@tdima}
    \setcounter{STB@tcntb}{\baselineskip}
    \setcounter{STB@tcnta}{\value{STB@tcnta}/\value{STB@tcntb}}
    \setlength\textheight{\baselineskip*\value{STB@tcnta}+\topskip}%
    \setlength\STB@tdima{\paperheight-\textheight}%
    \setlength\topmargin{#1\STB@tdima-\headheight-\headsep-1in}%
    \@settopoint\topmargin}
\newcommand\FixHorizParams[1]{%
    \@settopoint\textwidth
    \setlength\STB@tdima{\paperwidth-\textwidth}%
    \if@twoside
        \setlength\oddsidemargin{#1\STB@tdima-1in}%
    \else
        \setlength\oddsidemargin{.5\STB@tdima-1in}%
    \fi
    \@settopoint\oddsidemargin
    \setlength\evensidemargin{\STB@tdima-\oddsidemargin-2in}%
    \@settopoint\evensidemargin
    \setlength\marginparwidth{\evensidemargin+1in-\marginparsep-1cm}%
    \@settopoint\marginparwidth}
\if@ABlock
    \setlength\paperheight  {297.3mm}
    \setlength\paperwidth   {210.2mm} % A4 paper
    \setlength\textwidth    {.5\paperheight}
    \setlength\textheight   {\paperwidth}
    \setlength\marginparsep {7\p@}
    \setlength\marginparpush{7\p@}
    \FixVertParams{0.375}
    %\FixHorizParams{0.375}
    \FixHorizParams{0.5}% Changed in v3.0
    \ifpdf
       \setlength\pdfpagewidth{\paperwidth}
       \setlength\pdfpageheight{\paperheight}
    \fi
\fi
\if@GBlock
    \setlength\paperheight  {297.3mm}
    \setlength\paperwidth   {210.2mm} % A4 paper
    \setlength\textheight   {0.747547\paperheight}
    \setlength\textwidth    {0.666667\paperwidth}
    \setlength\marginparsep {7\p@}
    \setlength\marginparpush{7\p@}
    \FixVertParams{0.375}
    %\FixHorizParams{0.375}
    \FixHorizParams{0.5}% Changed in v3.0
    \ifpdf
       \setlength\pdfpagewidth{\paperwidth}
       \setlength\pdfpageheight{\paperheight}
    \fi
\fi
\if@WBlock
    \setlength\paperheight  {297.3mm}
    \setlength\paperwidth   {210.2mm} % A4 paper
    \setlength\textheight   {\paperheight-50mm}
    \setlength\textwidth    {\paperwidth-50mm}
    \setlength\marginparsep {7\p@}
    \setlength\marginparpush{7\p@}
    \FixVertParams{0.5}
    \FixHorizParams{0.5}
    \ifpdf
       \setlength\pdfpagewidth{\paperwidth}
       \setlength\pdfpageheight{\paperheight}
    \fi
\fi
\begingroup
   \catcode`\Q=3
   \long\gdef\STB@ifempt#1{\STB@xifempt#1QQ\@secondoftwo\@firstoftwo\@nil}
   \long\gdef\STB@xifempt#1#2Q#3#4#5\@nil{#4}
\endgroup
\newenvironment{STB@adjustwidth}[2]{%
   \begin{list}{}{%
      \setlength{\topsep}{0pt}%
      \setlength{\partopsep}{0pt}%
      \setlength{\leftmargin}{#1}%
      \setlength{\rightmargin}{#2}%
      \setlength{\listparindent}{\parindent}%
      \setlength{\itemindent}{\parindent}%
      \setlength{\parsep}{\parskip}%
      }%
   \item[]}{\end{list}}
\newenvironment{SetMargins}[2]%
  {\setlength{\STB@tdima}{-1in-\hoffset-\oddsidemargin}%
   \setlength{\STB@tdimb}{-\STB@tdima}%
   \addtolength{\STB@tdima}{#1}%
   \addtolength{\STB@tdimb}{-\paperwidth+\textwidth+#2}%
   \begin{STB@adjustwidth}{\STB@tdima}{\STB@tdimb}%
  }%
  {\end{STB@adjustwidth}}
\newenvironment{STB@titlepage}[4]
  {\cleardoublepage
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse\newpage
   \fi
   \thispagestyle{empty}%
   \setcounter{page}\@ne
   \setlength{\STB@tdima}{1in+\voffset+\topmargin+\headheight+\headsep+\topskip}%
   \setlength{\STB@tdimb}{#1 -\STB@tdima}%
   \vspace*{\STB@tdimb}%
   \addtolength{\STB@tdima}{\textheight-\paperheight-\topskip}%
   \addtolength{\STB@tdima}{#2}%
   \enlargethispage{-\STB@tdima}%
   \setlength{\STB@tdima}{-1in-\hoffset-\oddsidemargin}%
   \setlength{\STB@tdimb}{-\STB@tdima}%
   \addtolength{\STB@tdima}{#3}%
   \addtolength{\STB@tdimb}{-\paperwidth+\textwidth+#4}%
   \begin{STB@adjustwidth}{\STB@tdima}{\STB@tdimb}%
  }%
  {\end{STB@adjustwidth}%
   \if@restonecol\twocolumn \else \newpage \fi
   \if@twoside\else
      \setcounter{page}\@ne
   \fi}
\let\maketitle\relax
\newcommand\STB@frntpage{%
    \includegraphics[width=\paperwidth,height=\paperheight]{stb-thesis-frntp.pdf}}
\newcommand\STB@putfrntpage{%
    \AddToHookNext{shipout/background}{\put(0mm,-\paperheight){\STB@frntpage}}}
\newcommand{\TitlePage}{%
   \STB@putfrntpage
   \begingroup
      \let\footnote\relax
      \begin{STB@titlepage}{6cm}{4.5cm}{2.5cm}{2.5cm}%
         \centering
         \vfil
         \vspace{20mm}
        {\LARGE \@title \par}
         \vspace{2em}
         \if@Authorpresent
            {\large \AuthByTxt\par}
             \vspace{2em}
            {\Large
             \lineskip .75em\relax%
             \begin{tabular}[t]{c}%
                \STB@authorlong
             \end{tabular}\par}%
             \vfill
             \vfill
         \fi
        {\large\slshape
         \begin{STB@adjustwidth}{1.5cm}{1.5cm}
            \centering\STB@ThesisDescript
         \end{STB@adjustwidth}\par}
         \vfill
         \vfill
        {\normalsize \STB@spvset \par}
         \vspace{2em}
        {\normalsize \STB@date\par}%
        {\footnotesize \STB@sponsor \par}
      \end{STB@titlepage}%
   \endgroup
   \global\let\TitlePage\relax
   \setcounter{footnote}{0}%
   \global\let\thanks\relax
   \global\let\@thanks\@empty
   }
\newif\if@Authorpresent
\@Authorpresentfalse
\renewcommand\author[2]{%
   \@Authorpresenttrue%
   \gdef\STB@author{#1}%
   \gdef\STB@authorlong{#2}}
\newcommand\STB@author{%
    \ClassWarning{stb-thesis}{No author supplied}}
\newcommand\STB@authorlong{%
    \ClassWarning{stb-thesis}{No author supplied}}
\newcommand{\STB@ThesisDescript}{}
\newcommand\ThesisDescript[1]{%
   \long\gdef\STB@ThesisDescript{#1}}
\if@Masters
   \ThesisDescript{\MasterDescript}
\fi
\if@PhD
    \ThesisDescript{\PhDDescript}%
\fi
\newcommand\degree[2]{%
   \gdef\DegreeName{#1}%
   \gdef\DegreeNameLong{#2}}
\newcommand\address[1]{\gdef\STB@address{#1}}
\newcommand\STB@address{%
    \ClassWarning{stb-thesis}{No institutional address supplied}}
\newcommand\faculty[1]{\gdef\FacultyName{#1}}
\newcommand\FacultyName{%
    \ClassWarning{stb-thesis}{No faculty name supplied}%
    \textbf{[No faculty name supplied!]}}
\newif\ifSTB@spvpresent\STB@spvpresentfalse
\newif\ifSTB@cospvpresent\STB@cospvpresentfalse
\newif\ifSTB@spvmult\STB@spvmultfalse
\newif\ifSTB@cospvmult\STB@cospvmultfalse
\newif\ifSTB@spvrows\STB@spvrowsfalse
\newcommand\STB@spv{}
\newcommand\STB@cospv{}
\newcommand*\STB@spvalign{l}
\newcommand{\supervisor}{%
   \@ifstar{\STB@spvrowsfalse\@supervisor}%
           {\STB@spvrowstrue\@supervisor}}
\newcommand{\@supervisor}[2][l]{%
   \STB@ifempt{#2}{}{\STB@spvpresenttrue}%
   \renewcommand*\STB@spvalign{#1}%
   \renewcommand\STB@spv{#2}}
\newcommand{\cosupervisor}[1]{%
   \STB@ifempt{#1}{}{\STB@cospvpresenttrue}%
   \renewcommand\STB@cospv{#1}}
\newcommand{\STB@spvset}{%
    \ifSTB@spvrows
        \STB@spvrows
    \else
        \STB@spvcols
    \fi}
\newcommand\STB@spvrows{%
    \edef\STB@beginTab{\noexpand\begin{tabular}[t]{@{}\STB@spvalign @{}}}%
    \edef\STB@endTab{\noexpand\end{tabular}}%
    \STB@spvmultfalse
    \sbox{\STB@tboxa}{%
        \let\and\STB@spvand%
        \STB@beginTab\STB@spv\STB@endTab}%
    \STB@cospvmultfalse
    \sbox{\STB@tboxb}{%
        \let\and\STB@cospvand%
        \STB@beginTab\STB@cospv\STB@endTab}%
    \ifSTB@spvpresent
        \begin{tabular}{@{}ll@{}}
             \ifSTB@spvmult\SupervisorsText\else\SupervisorText\fi
             & \usebox{\STB@tboxa}\\
             \ifSTB@cospvpresent%
                  \noalign{\vskip 1ex}
                  \ifSTB@cospvmult\CoSupervisorsText\else\CoSupervisorText\fi
                & \usebox{\STB@tboxb}
             \fi
        \end{tabular}
   \fi}
\newcommand\STB@spvcols{%
    \edef\STB@beginTab{\noexpand\begin{tabular}[t]{@{}\STB@spvalign @{}}}%
    \edef\STB@endTab{\noexpand\end{tabular}}%
    \STB@spvmultfalse
    \sbox{\STB@tboxa}{%
        \let\and\STB@spvand%
        \STB@beginTab\STB@spv\STB@endTab}%
    \STB@cospvmultfalse
    \sbox{\STB@tboxb}{%
        \let\and\STB@cospvand%
        \STB@beginTab\STB@cospv\STB@endTab}%
    \ifSTB@spvpresent
        \STB@beginTab
            \ifSTB@spvmult\SupervisorsText\else\SupervisorText\fi\\[1ex]
             \usebox{\STB@tboxa}
        \STB@endTab
    \fi
    \ifSTB@cospvpresent
        \hspace{2em}%
        \STB@beginTab
            \ifSTB@cospvmult\CoSupervisorsText\else\CoSupervisorText\fi\\[1ex]
             \usebox{\STB@tboxb}
        \STB@endTab
    \fi}
\newcommand*{\STB@spvand}[1][0pt]{%
      \global\STB@spvmulttrue%
      \\[#1]%
      \ignorespaces}
\newcommand*{\STB@cospvand}[1][0pt]{%
      \global\STB@cospvmulttrue%
      \\[#1]%
      \ignorespaces}
\let\studyleader\supervisor
\let\promotor\supervisor  %Backward compatibility
\newcount\STB@month
\newcount\STB@year
\STB@month=0
\STB@year=\number\year
\def\STB@date{\MonthName{\STB@month}\ \number\STB@year}
\newcommand{\setdate}[2]{%
   \STB@ifempt{#1}{\STB@month=0}{\STB@month=#1}%
   \STB@year=#2
   \gdef\STB@date{\MonthName{\STB@month}\ \number\STB@year}}
\newcommand\STB@sponsor{\vspace{2em}}
\newcommand\SetSponsor[1]{%
    \renewcommand\STB@sponsor{\vspace{2em}\par\parbox{\linewidth}{#1}}}
\newcommand\CopyrightPage[1][\CopyrightHolder]{%
   %\clearpage
   %\thispagestyle{empty}
   %\mbox{}\par\vfill
   %\begin{center}
   %   \CopyrightTxt\ \copyright\ \number\STB@year\ #1\\
   %   \CopyrightAnot
   %\end{center}
   %\vfill\mbox{}\par
   %\clearpage
   }
\newcommand\SetCopyrightHolder[1]{%
   \renewcommand\CopyrightHolder{#1}}
\newif\ifSTB@Copyright
\STB@Copyrighttrue
\newcommand\SetCopyrightOff{%
   \STB@Copyrightfalse}
\let\STB@DeclDate\@empty
\newcommand{\DeclarationDate}[1]{%
    \renewcommand\STB@DeclDate{#1}}
\newcommand\STB@putdecldate{%
        \vspace{1cm}
        \noindent
        \begin{minipage}{.5\textwidth}
            \noindent
            \ifx\STB@DeclDate\@empty\relax\else
                \phantom{\Signat:}~\hfill\makebox[0pt][c]{\STB@DeclDate}\hfill\mbox{}\\[-.5\baselineskip]
            \fi
            \Datetxt:~ \dotfill\mbox{}\par
        \end{minipage}
        \par}
\newcommand{\DeclarationPage}[1][\ThesisDeclare]{%
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \par
   \thispagestyle{plain}%
   \chapter*{\DeclarationName}%
   \declaremark
   %\phantomsection
   %\addcontentsline{toc}{chapter}{\DeclarationName}%
   #1\par
   \STB@putdecldate
   \ifSTB@Copyright
       \mbox{}\par
       \vfill
       \vfill
       \noindent\CopyrightTxt\ \copyright\ \number\STB@year\ \CopyrightHolder\\
       \noindent\CopyrightAnot
       \vfill
       \mbox{}\par
   \fi
   \if@restonecol\twocolumn\fi}
\newenvironment{abstract}[1][\languagename]%
   {\edef\@tempa{\expandafter\string #1}%
    \ifx\@tempa\languagename\relax\else
      \edef\@tempa{\noexpand\selectlanguage{#1}}\@tempa%
    \fi
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \par
   \chapter*{\AbstractName}%
   \abstractmark
   %\phantomsection
   %\addcontentsline{toc}{chapter}{\AbstractName}%
       \begin{center}
          {\large\bfseries \@title \par}
           \medskip
          {\lineskip .75em\relax%
           \begin{tabular}[t]{@{}c@{}}%
              \STB@author
           \end{tabular}\par}
           \smallskip
          {\small\itshape\STB@address\par}
           \smallskip
          {\ThesisType: \DegreeName\par}
           \smallskip
          {\STB@date\par}
       \end{center}
    \if@restonecol\twocolumn\fi%
    }{}

\renewcommand\tableofcontents{%
   \if@twocolumn
      \@restonecoltrue\onecolumn
   \else
      \@restonecolfalse
   \fi
   \chapter*{\contentsname}%
   \tocmark
   %\phantomsection
   %\addcontentsline{toc}{chapter}{\contentsname}%
   \@starttoc{toc}%
   \if@restonecol\twocolumn\fi}
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
    \lofmark
    \phantomsection
    \addcontentsline{toc}{chapter}{\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{3em}}
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
    \lotmark
    \phantomsection
    \addcontentsline{toc}{chapter}{\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi}
\let\l@table\l@figure
\providecommand\bibsection{}%
\AtBeginDocument{%
   \renewcommand{\bibsection}{%
      \chapter*{\bibname}%
      \bibmark
      \phantomsection
      \addcontentsline{toc}{chapter}{\bibname}}%
   }
\renewenvironment{thebibliography}[1]{%
   \bibsection
   \parindent \z@
   \bibpreamble
   \bibfont
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy
   \clubpenalty4000
   \@clubpenalty \clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
  {\def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
   \endlist
   \vskip-\lastskip}
\let\bibfont\relax
\let\bibpreamble\relax
\newcommand*{\setbiblabel}[1]{%
   \renewcommand*{\@biblabel}[1]{#1}}
\setbiblabel{[#1]\hfill}
\renewenvironment{theindex}
   {\if@twocolumn
       \@restonecolfalse
    \else
       \@restonecoltrue
    \fi
    \columnseprule \z@
    \columnsep 35\p@
    \twocolumn[\@makeschapterhead{\indexname}]%
    \indexmark
    \phantomsection
    \addcontentsline{toc}{chapter}{\indexname}
    \thispagestyle{plain}
    \parindent\z@
    \parskip\z@ \@plus .3\p@\relax
    \let\item\@idxitem}
   {\if@restonecol
       \onecolumn
    \else
       \clearpage
    \fi}
\newcommand*{\STB@headfnt}[1]{{\slshape\small#1}}
\newcommand*{\STB@numfnt}[1]{{\normalsize\bfseries#1}}
\if@twoside
   \def\ps@STBthesis{%
      \def\@evenhead{\STB@numfnt{\thepage}\hfil\STB@headfnt{\leftmark}}%
      \def\@oddhead{\STB@headfnt{\rightmark}\hfil\STB@numfnt{\thepage}}%
      \let\@oddfoot\@empty
      \let\@evenfoot\@empty
      \let\@mkboth\markboth
      \def\chaptermark##1{%
         \markboth{\MakeUppercase{%
            \ifnum \c@secnumdepth >\m@ne
               \if@mainmatter
                  \@chapapp\ \thechapter. \ %
               \fi
            \fi
            ##1}}{}}%
      \def\sectionmark##1{%
         \markright{\MakeUppercase{%
            \ifnum \c@secnumdepth > \z@
               \thesection. \ %
            \fi
            ##1}}}%
      \def\declaremark{\markboth{\MakeUppercase{\DeclarationName}}{}}%
      \def\abstractmark{\markboth{\MakeUppercase{\AbstractName}}{}}%
      \def\tocmark{\markboth{\MakeUppercase{\contentsname}}{}}%
      \def\lofmark{\markboth{\MakeUppercase{\listfigurename}}{}}%
      \def\lotmark{\markboth{\MakeUppercase{\listtablename}}{}}%
      \def\bibmark{\markboth{\MakeUppercase{\bibname}}{}}%
      \def\indexmark{\markboth{\MakeUppercase{\indexname}}{}}%
      }
\else
   \def\ps@STBthesis{%
      \def\@oddhead{\STB@headfnt{\rightmark}\hfil\STB@numfnt{\thepage}}%
      \let\@oddfoot\@empty
      \let\@mkboth\markboth
      \def\chaptermark##1{%
         \markright{\MakeUppercase{%
            \ifnum \c@secnumdepth >\m@ne
               \if@mainmatter
                  \@chapapp\ \thechapter. \ %
               \fi
            \fi
            ##1}}}%
      \def\declaremark{\markright{\MakeUppercase{\DeclarationName}}}%
      \def\abstractmark{\markright{\MakeUppercase{\AbstractName}}}%
      \def\tocmark{\markright{\MakeUppercase{\contentsname}}}%
      \def\lofmark{\markright{\MakeUppercase{\listfigurename}}}%
      \def\lotmark{\markright{\MakeUppercase{\listtablename}}}%
      \def\bibmark{\markright{\MakeUppercase{\bibname}}}%
      \def\indexmark{\markright{\MakeUppercase{\indexname}}}%
      }
\fi
\def\ps@plain{%
   \let\@mkboth\@gobbletwo
   \let\@oddhead\@empty
   \let\@evenhead\@empty
   \def\@oddfoot{\reset@font\hfil\STB@numfnt{\thepage}\hfil}%
   \let\@evenfoot\@oddfoot
   }
\pagestyle{STBthesis}
\newcommand{\STB@headfamily}{\normalfont\rmfamily}
\def\section{%
   \@startsection{section}{1}%
                 {\z@}%
                 {-3.5ex plus -1ex minus -.2ex}%
                 {2.3ex plus .2ex}%
                 {\STB@headfamily\Large\bfseries\raggedright}}
\def\subsection{%
   \@startsection{subsection}{2}%
                 {\z@}%
                 {-3.25ex plus -1ex minus -.2ex}%
                 {1.5ex plus .2ex}%
                 {\STB@headfamily\large\bfseries\raggedright}}%
\def\subsubsection{%
   \@startsection{subsubsection}{3}%
                 {\z@}%
                 {-3.25ex plus -1ex minus -.2ex}%
                 {1.5ex plus .2ex}%
                 {\STB@headfamily\normalsize\bfseries\raggedright}}
\def\paragraph{%
   \@startsection{paragraph}{4}%
                 {\z@}%
                 {3.25ex plus 1ex minus .2ex}%
                 {-1em}%
                 {\STB@headfamily\normalsize\bfseries}}
\def\subparagraph{%
   \@startsection{subparagraph}{5}%
                 {\parindent}%
                 {3.25ex plus 1ex minus .2ex}%
                 {-1em}%
                 {\STB@headfamily\normalsize\bfseries}}
\setcounter{topnumber}{3}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}
\setcounter{dbltopnumber}{3}
\renewcommand{\topfraction}{.85}
\renewcommand{\bottomfraction}{.7}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.7}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\dblfloatpagefraction}{.7}
\setlength{\floatsep}{15pt plus 12pt}
\setlength{\textfloatsep}{\floatsep}
\setlength{\intextsep}{\floatsep}
\setlength{\dblfloatsep}{15pt plus 12pt}
\setlength{\dbltextfloatsep}{15pt plus 12pt}
\setlength{\@fptop}{0pt plus1fil}
\setlength{\@fpbot}{0pt plus1fil}
\setlength{\@fpsep}{8pt plus1fil}
\setlength{\@dblfptop}{0pt plus1fil}
\setlength{\@dblfpbot}{0pt plus1fil}
\setlength{\@dblfpsep}{8pt plus1fil}
\setlength{\abovecaptionskip}{0.5\baselineskip}
\setlength{\belowcaptionskip}{0.5\baselineskip}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\small{\bfseries #1:} #2}%
  \ifdim \wd\@tempboxa >\hsize
    \unhbox\@tempboxa\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\endinput
%%
%% End of file `stb-thesis.cls'.
