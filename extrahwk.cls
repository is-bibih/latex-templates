\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{extrahwk}[2021/11/02 Class for extra homeworks.]

\newif\ifusingtwocols
\usingtwocolsfalse

\DeclareOption{twocolumn}{
  \usingtwocolstrue
}
\ProcessOptions\relax
\LoadClassWithOptions{article}
\RequirePackage{titlesec}

\newcommand{\suptitle}[1]{\def\@suptitle{#1}}
\renewcommand{\normalsize}{\fontsize{12}{14.4}\selectfont}

\renewcommand{\maketitle}{{
  \ifusingtwocols
    \twocolumn[
  \else
  \fi
    \centering
    \large \@suptitle \\
    \LARGE \textbf{\@title} \\
    \vspace{-0.7em}
    \hrulefill
    \vspace{0.3em} \\
    \large \@author \\ \@date \\
    \vspace{2em}
  \ifusingtwocols
    ]
  \else
  \fi
}}

\titleformat{\section}{\normalfont\Large\bfseries}{\thesection.}{0.5em}{}
