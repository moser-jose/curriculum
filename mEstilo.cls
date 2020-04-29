% -- Encoding UTF-8 without BOM
%---------------------------------------------------------
% Curriculun 
% Criado Por Moser José ---- 18/06/2018
%---------------------------------------------------------

\ProvidesClass{mEstilo}[Criado Por Moser José]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{fontawesome5}
\usepackage{arev}

%----------------------------------------------------------------------------------------
% Cores %
%----------------------------------------------------------------------------------------

\RequirePackage{xcolor}

%\definecolor{white}{RGB}{255,255,255}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{red}{HTML}{FF0000}

%----------------------------------------------------------------------------------------
% Fontes %
%----------------------------------------------------------------------------------------

\RequirePackage[quiet]{fontspec}
%\setmainfont[Ligatures=TeX]{Roboto}

\RequirePackage[math-style=TeX]{unicode-math}

\newfontfamily\bodyfont{Roboto-Regular}[Path=fonts/]
\newfontfamily\bodyfontit{Roboto-LightItalic}[Path=fonts/]
\newfontfamily\thinfont{Roboto-Thin}[Path=fonts/]
\newfontfamily\headingfont{RobotoCondensed-Bold}[Path=fonts/]
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Mapping=tex-text, Color=textcolor, Path = fonts/]{Roboto-Light}

%----------------------------------------------------------------------------------------
% Cabeçalho %
%----------------------------------------------------------------------------------------

\RequirePackage{tikz}

\newcommand{\mSepara}{\hspace{-0.1em} | \hspace{-0.1em}}

\newcommand{\mCabecario}[2]{\centering \fontsize{40pt}{65pt}\color{gray}%
      {\thinfont #1}{\bodyfont  #2}
       \vspace{.9\parskip}
       \\   
}
\newcommand{\mCargo}[2]{\centering \fontsize{8pt}{8pt}\color{red}%
      {\bodyfont #1 \hspace{-0.1em}	\bullet}{\hspace{0.4em}\bodyfont  #2} 
      \vspace{.7\parskip}
       \\}
      
\newcommand{\mEndereco}[1]{\centering \fontsize{12pt}{12pt} \color{gray} \faMapMarker*~\bodyfont #1 
      \vspace{-.7\parskip}
       }
       
\newcommand{\mSite}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faLink~\href{https://#1}{\bodyfont #2}}       

\newcommand{\mSiteSquare}[2]{\centering \fontsize{8.5pt}{8.5pt}\href{https://#1}{#2}}       
       
\newcommand{\mFacebook}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faFacebookSquare~\href{https://www.facebook.com/#1}{\bodyfont #2}}

\newcommand{\mLinkedin}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faLinkedin~\href{https://www.linkedin.com/in/#1}{\bodyfont #2}}

\newcommand{\mTwitter}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faTwitter~\href{https://twitter.com/#1}{\bodyfont #2}}
\newcommand{\mStackOverflow}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faStackOverflow~\href{https://pt.stackoverflow.com/users/#1}{\bodyfont #2}}

\newcommand{\mGithub}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faGithub~\href{https://www.github.com/#1}{\bodyfont #2}}

\newcommand{\mCodepen}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faCodepen~\href{https://www.codepen.io/#1}{\bodyfont #2}}

\newcommand{\mInstagram}[2]{\centering \fontsize{8.5pt}{8.5pt} \color{gray} \faInstagram~\href{https://www.instagram.com/#1}{\bodyfont #2}}

\newcommand{\mEmail}[2]{\fontsize{8.5pt}{8.5pt} \color{gray} \faEnvelope[regular]~\href{mailto:#1}{\bodyfont #2} 
      }
\newcommand{\mTelefone}[1]{\fontsize{8.5pt}{8.5pt} \color{gray} \faMobile*~{\bodyfont #1} 
      }

\newcommand{\mFrase}[1]{\centering \fontsize{12pt}{12pt} \color{gray} \vspace{.4cm} \bodyfontit{#1} \vspace{0.2cm}
      \vspace{-1\parskip}
       }
       
\newcommand{\mLink}[2]{\fontsize{8.5pt}{8.5pt} \color{gray} \faLink~\href{#1}{\bodyfont #2}}


%----------------------------------------------------------------------------------------

\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{polyglossia}

%----------------------------------------------------------------------------------------
% Estrutura %
%----------------------------------------------------------------------------------------
\RequirePackage{parskip}

\renewcommand{\section}[1]{
  {\par\vspace{\parskip}
  {%
    \LARGE\headingfont%
    \ #1%
  }
  \par\vspace{\parskip}}
  
}

\renewcommand{\subsection}[2]{
  \par\vspace{.9\parskip}%
  \Large\headingfont #2%
  \par\vspace{.25\parskip}%
}

\newcommand{\jobtitle}[1]{%
    {\color{gray}\bodyfontit #1}%
}

\pagestyle{empty}

%----------------------------------------------------------------------------------------
% Lista %
%----------------------------------------------------------------------------------------

\setlength{\tabcolsep}{0pt}
\newenvironment{entrada}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
  {{{\divider}}}\vspace{-0.5cm}
}
\renewcommand{\bfseries}{\headingfont}

\newcommand{\cursos}[4]{%
  #1&\parbox[t]{14.2cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=red} #3}\\%
    #4\vspace{\parsep}%
  }\\}


\newcommand{\lista}[4]{%
  #1&\parbox[t]{12.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=red} #3}\\%
    #4\vspace{\parsep}%
  }\\}
  
  %-------------------------------
  %dissertação
  \newcommand{\dissert}[5]{%
   #1&\parbox[t]{12.4cm}{%
    \bodyfontit{\small{#2} }%
    \hfill  \\%
   \textbf{\small{#3}}%
    \hfill \\%
    \textbf{\small{#4}}%
    \hfill \\%
    #5\vspace{\parsep}%
  }\\}
  
  %artigos
\newcommand{\public}[9]{%
  #1&\parbox[t]{14.1cm}{% ano
    \textbf{#2 \vspace{\parsep}}%tipo
    \hfill  \\%
    \textbf{\small{#3} \vspace{0.15cm}}%autor
    \hfill \\%
   \bodyfont{\small{#4}}%titulo
    \hfill \\%
    \textsf{\emph{#5}}%resumo
    \hfill \\%
    \small{#6}%nome conference or journal
    \hfill \\%
    \textsf{{\textbf{Link #7: }}~\mLink{#8} {#8}}%link
    \hfill \\%
    #9\vspace{1\parsep}%url
  }\\}

  %-------------------------------
  
\setlength{\tabcolsep}{0pt}
\newenvironment{reflist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
  {{{\divider}}}
}
  
\renewcommand{\bfseries}{\headingfont}
\newcommand{\referencia}[4]{%
  #1&\parbox[t]{15.3cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=red} #3}\\%
    #4\vspace{.9em}%
  }\\}  

%----------------------------------------------------------------------------------------
% Lado %
%----------------------------------------------------------------------------------------

\setlength{\TPHorizModule}{1.2cm}
\setlength{\TPVertModule}{0.2cm}
\newenvironment{mLado}{%
  \let\oldsection\section
  \renewcommand{\section}[1]{{\divider}
    \par\vspace{.3\parskip}{\large\headingfont ##1}
  }
  \begin{textblock}{3.5}(0.6, 1.89)
  \begin{flushright}
  \obeycr
}{%
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}

%----------------------------------------------------------------------------------------
% Outros %
%----------------------------------------------------------------------------------------

\newcommand{\mIdioma}[2]{%
\textcolor{black}{\textbf{#1}}\hfill
\foreach \x in {1,...,6}{%
  \space{\ifnumgreater{\x}{#2}{\color{black!30}}{\color{red}}\faCircle}}~%
}
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
\RequirePackage{changepage}

\setlength{\parindent}{0pt}
\newcommand{\divider}{\textcolor{black!30}{\hdashrule{\linewidth}{0.8pt}{0.7ex}}\medskip}

\newcommand{\mTag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=black!30,rounded corners,inner xsep=1ex,inner ysep =0.75ex,text height=1.5ex,text depth=.25ex]{#1};\vspace{0.1em}
}

\RequirePackage[left=5.4cm,top=1.2cm,right=0.9cm,bottom=1cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}
\hypersetup{
    pdftitle=Curriculum Vitae \textbar{} Moser José,
    pdfauthor=Moser José,
    pdfsubject=Curriculum Vitae%
    }
