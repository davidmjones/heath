\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{heath}[2021/12/28 v0.00]

\LoadClass[12pt]{amsbook}

\RequirePackage{textcmds}
\RequirePackage{hyperref}

\RequirePackage{graphicx}

\RequirePackage{enumerate}

\RequirePackage{verbatim}

\RequirePackage{float}

\RequirePackage{ifxetex}

%\RequireXeTeX

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                              FONTS                               %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{unicode-math}[2015/09/24]

%TODO: Should always choose upright
\newfontfamily{\@greek}{Brill}
\newcommand{\greek}[1]{\@greek{\textup{#1}}}

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

\def\@typesizes{%
    \or{7}{8}%          \Tiny
    \or{8}{10}%         \tiny
    \or{9}{11}%         \SMALL (\scriptsize)
    \or{10}{12}%        \Small (\footnotesize)
    \or{11}{13.5}%      \small
    \or{12}{14.5}%      \normalsize
    \or{14}{18}%        \large
    \or{17}{20}%        \Large
    \or{20}{24}%        \LARGE
    \or{25}{30}%        \huge
    \or{30}{34}%        \Huge
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                           MISC MACROS                            %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xspace}

\newcommand{\?}[1][]{}

\newcount\roman@count@

\def\r{\afterassignment\lower@roman\roman@count@}

\def\lower@roman{\textup{\textsc{\romannumeral\roman@count@}}}

\newcommand{\emend}[2]{#2}

\newcommand{\smart@period}{%
    \futurelet\@let@token\@smart@period
}

\newcommand{\@smart@period}{%
    \ifx\@let@token.\else.\@\fi
}

\newcommand{\bc}{\textsc{b.c}\smart@period}
\newcommand{\ad}{\textsc{a.d}\smart@period}

\newcommand{\ms}{\textsc{ms}\smart@period}
\newcommand{\mss}{\textsc{mss}\smart@period}

\newcommand{\book}[1]{\textsc{#1}\smart@period}

\newcommand{\ibid}{\emph{ibid}\smart@period}

\newif\ifst@rred

\def\maybe@st@rred#1{%
    \@ifstar{\st@rredtrue#1}{\st@rredfalse#1}%
}

\DeclareRobustCommand{\prop}{\maybe@st@rred\@prop}

\newcommand{\@prop}[2]{%
    \begingroup
        \hyperref[prop:\@Roman#1_\number#2]{%
            \ifst@rred\else
                \textsc{\romannumeral#1}.~%
            \fi
            #2%
        }%
    \endgroup
}

\newcommand{\scholia}[2]{\textsc{\romannumeral#1}.~#2}

\DeclareMathOperator{\arc}{arc}
\DeclareMathOperator{\rect}{rect.}

\newcommand{\byline}[2]{%
\begin{flushright}
#1
\end{flushright}
\begin{flushleft}
#2
\end{flushleft}
}

\newcommand{\ZMP}{Zeitschrift für Math.\ u.\ Physik}

\def\macrotext{\expandafter\strip@prefix\meaning}

\def\vdef#1#2{%
    \def#1{#2}%
    \edef#1{\macrotext#1}%
}

\AtBeginDocument{\renewcommand{\pageref}[1]{[[#1]]}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                             FIGURES                              %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{wrapfig}

\newcommand{\infig}[1]{%
    \ifhmode \vadjust\fi
    {%
        \begin{figure}[H]
            \IfFileExists{#1.mps}{%
                \includegraphics{#1}%
            }{%
                \vdef\@tempa{#1}%
                \fbox{figure \texttt{\@tempa}}%
            }
        \end{figure}
    }%
}

\newcommand{\sidefig}[2][r]{%
    \begin{wrapfigure}{#1}{0pt}
    \IfFileExists{#2.mps}{%
        \includegraphics{#2}%
    }{%
        \vdef\@tempa{#2}%
        \fbox{figure \texttt{\@tempa}}%
    }
    \end{wrapfigure}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                  %%
%%                           PROPOSITIONS                           %%
%%                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newtheorem*{lemma*}{Lemma}
\newtheorem*{porism*}{Porism}

\newcounter{proposition}[part]

\newenvironment{proposition}{%
    \par
    \refstepcounter{proposition}%
    \@startsection{section}{1}%
        \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
        {\normalfont\large\scshape\centering}*{Proposition~\theproposition}
}{%
    \par
    \addvspace\medskipamount
}

\newenvironment{statement}{%
    \par
    \itshape
    \large
}{%
    \par
    \addvspace\medskipamount
}

\renewenvironment{proof}[1][\proofname]{%
    \par
    \pushQED{\qed}%
    \normalfont
    \large
}{%
    \popQED
    \@endpefalse
}

\renewcommand{\qedsymbol}{\textsc{q.e.d.\xspace}}

\newcommand{\qefsymbol}{\textsc{q.e.f.\xspace}}

\def\useqed{\def\qedsymbol}

\def\noqed{\useqed{}}

\def\qef{\useqed{\qefsymbol}}

\newcommand{\proofbreak}{\medbreak}

\newcommand{\proofrule}{%
    \smallbreak
    \centerline{\rule{10pc}{1pt}}
    \smallbreak
}

\newcommand{\0}{\par\noindent\ignorespaces}

\newcommand{\1}{%
    \par
    \leftskip3\normalparindent
    \parindent-\normalparindent
    \ignorespaces
}

\newcommand{\2}{%
    \par
    \parindent2\normalparindent
    \ignorespaces
}

\newcommand{\restore@par}{%
    \let\using@@\using@a
    \parindent\normalparindent
    \parfillskip\@flushglue
    \leftskip\z@skip
    \rightskip\z@skip
}

\let\C\relax

\newcommand{\C}{%
    \let\using@@\using@b
    \par
    \leftskip\@flushglue
    \parfillskip\@flushglue
    \parindent\@flushglue
}

\newcommand{\E}{%
    \par
    \restore@par
}

\def\smartbreak{%
    \unskip
    \nobreak
    \hfill
    \penalty 50
    \enskip
    \null
    \nobreak
}

\newcommand{\using}{\maybe@st@rred\using@}

\newcommand{\using@}[1]{%
    \ifst@rred
        \unskip\space[#1]%
    \else
        \using@@{#1}%
    \fi
}

\newcommand{\using@a}[1]{%
    \let\using@@\using@a
    \hskip 1em plus 1fil minus .7em 
    \hbox{[#1]}%
    \parfillskip\z@
    \E
}

\let\using@@\using@a

\newcommand{\using@b}[1]{%
    \let\using@@\using@a
    \hfil
    \llap{[#1]}%
    \parfillskip\z@
    \E
}

\newcommand\rpost[1]{\hyperref[post:#1]{Post.~\ref*{post:#1}}}
\newcommand\rdef[1]{\hyperref[def:#1]{Def.~\ref*{def:#1}}}
\newcommand\rcn[1]{\hyperref[cn:#1]{\emph{C.N.}~\ref*{cn:#1}}}

\newenvironment{annotations}{%
    \par
    \addvspace{\medskipamount}%
}{%
    \par
    \addvspace{\medskipamount}%
}

\newenvironment{notes}{%
    \par
    \addvspace{\medskipamount}%
}{%
    \par
    \addvspace{\medskipamount}%
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
