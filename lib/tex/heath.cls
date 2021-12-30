\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{heath}[2021/12/28 v0.00]

\LoadClass[12pt]{amsbook}

\RequirePackage{hyperref}

\RequirePackage{graphicx}

\RequirePackage{ifxetex}

\RequireXeTeX

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                              FONTS                               %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{unicode-math}[2015/09/24]

\newfontfamily{\greek}{Brill}

\setmainfont{STIX Two Text}[%
    Script=Default,
    Ligatures=TeX,
    ItalicFeatures={StylisticSet=2},
    BoldItalicFeatures={StylisticSet=2}
]

\setmathfont{STIX Two Math}[
    CharacterVariant=3,
    CharacterVariant=4,
    SizeFeatures={
        {Size=8-},
        {Size=6-8,Font=STIX Two Math,Style=MathScript},
        {Size= -6,Font=STIX Two Math,Style=MathScriptScript}
    }]

\setmathfontface\mathbf{STIX Two Text Bold}
\setmathfontface\mathit{STIX Two Text Italic}
% \setmathfontface\mathsf{UniversLTStd}

\def\@xipt{11}
\def\@xiipt{12}
\def\@xivpt{14}
\def\@xviipt{17}
\def\@xxpt{21}
\def\@xxvpt{25}

%% Note that these are for 12pt body size.

% \def\@typesizes{%
%     \do{7}{8}%          \Tiny
%     \do{8}{10}%         \tiny
%     \do{9}{11}%         \SMALL (\scriptsize)
%     \do{10}{12}%        \Small (\footnotesize)
%     \do{11}{13.5}%      \small
%     \do{12}{14.5}%      \normalsize
%     \do{14}{17}%        \large
%     \do{17}{20}%        \Large
%     \do{20}{24}%        \LARGE
%     \do{25}{30}%        \huge
%     \do{30}{34}%        \Huge
% }%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                           MISC MACROS                            %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\?}{}

\newcommand{\since}[1]{\unskip\nobreak~[#1]}

\newcommand{\bc}{\textsc{b.c.}}
\newcommand{\ad}{\@ifstar{\textsc{a.d\@.}}{\textsc{a.d.}}}

\newcommand{\book}[1]{\textsc{#1}\@.}

\newcommand{\prop}[2]{\textsc{\romannumeral#1}.~#2}

\newcommand{\byline}[2]{%
\begin{flushright}
#1
\end{flushright}
\begin{flushleft}
#2
\end{flushleft}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                           PROPOSITIONS                           %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{proposition}

\newenvironment{proposition}{%
    \par
    \refstepcounter{proposition}%
    \section*{Proposition~\theproposition}
}{%
    \par
    \addvspace\medskipamount
}

\newenvironment{statement}{%
    \par
    \itshape
}{%
    \par
    \addvspace\medskipamount
}

\renewenvironment{proof}{%
    \par
}{%
    \par
}

\newenvironment{notes}{%
    \par
%    \Small
}{%
    \par
}

\newenvironment{commentary}{%
    \par
    \bigskip
%    \small
}{%
    \par
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                            TITLEPAGE                             %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewenvironment{titlepage}{%
    \clearpage
    \thispagestyle{empty}%
    \phantomsection
    \pdfbookmark[0]{Title page}{\@currentHref}%
}{%
    \if@restonecol\twocolumn \else \newpage \fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                    SECTIONING, HEADINGS, ETC.                    %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\part{%
    \@ifstar{\@dblarg\@part}{\cleardoublepage\@dblarg\@part}%
}

\def\@part[#1]#2{%
    \thispagestyle{empty}%
    \refstepcounter{part}%
    \@stpelt{footnote}%
    \addtocontents{toc}{\protect\contentsline{part}{#1}{\thepart}
        {\@currentHref}%
    }
    \pdfbookmark[0]{#2}{\@currentHref}%
%    \markall{#1}{#1}{}%
    \begingroup
        \centering
        \interlinepenalty \@M
        \normalfont
        \huge
%        \textsc{\partname\enskip\thepart}\par
%        \vskip 5\p@
        \textsc{\lowercase{#2}}\par
    \endgroup
    \bigskip
}

\endinput
