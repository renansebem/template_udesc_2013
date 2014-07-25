% Copyright (C) 2014 Renan Sebem.
% udesc.cls is free: you can redistribute it and/or modify it.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{udesc}

\PassOptionsToClass{a5paper}{report}
\PassOptionsToClass{10pt}{report}
\PassOptionsToClass{twoside}{report}
%\PassOptionsToClass{portuguese}{report}

\LoadClassWithOptions{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MARGENS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\RequirePackage[twoside,top=2cm,bottom=1.5cm,inner=2.5cm,outer=1.5cm]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INDENTAÇÃO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{indentfirst}
\setlength\parindent{1.25cm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CODIFICAÇÃO DA FONTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\RequirePackage[T1]{fontenc}
%\RequirePackage[latin1]{inputenc}
\RequirePackage[utf8]{inputenc}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMARIO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tocloft}
\RequirePackage{etoolbox}% Capitulos e secoes em caixa alta

\makeatletter
\patchcmd{\l@chapter}
  {\cftchapfont #1}%   search pattern
  {\cftchapfont {#1}}% replace by
  {}%                  success
  {}%                  failure
\makeatother

\makeatletter
\patchcmd{\l@section}
  {\cftsecfont #1}%   search pattern
  {\cftsecfont {#1}}% replace by
  {}%                  success
  {}%                  failure
\makeatother



\renewcommand{\contentsname}{Sum\'{a}rio}
\tocloftpagestyle{empty}
\renewcommand{\cfttoctitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftaftertoctitle}{\hfill}
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
\renewcommand{\cftbeforetoctitleskip}{0cm}
\renewcommand{\cftaftertoctitleskip}{0cm}

\cftsetindents{chapter}{0in}{0.5in}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand\cftchapfont{\bfseries\MakeUppercase}
%\renewcommand{\cftchappagefont}{}



\cftsetindents{section}{0in}{0.5in}
\renewcommand{\cftsecpagefont}{}
\renewcommand{\cftsecfont}{\MakeUppercase}

\cftsetindents{subsection}{0in}{0.5in}
\renewcommand{\cftsubsecpagefont}{}
\renewcommand{\cftsubsecfont}{\bfseries}

\cftsetindents{subsubsection}{0in}{0.5in}

\cftsetindents{paragraph}{0in}{0.5in}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIGURAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{caption}

\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\figurename}{Figura}
\captionsetup[figure]{labelsep=endash}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE FIGURAS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\cftfigpresnum}{\textsc{Figura }}
\renewcommand{\cftfigaftersnum}{\ \ - \ \ }
\setlength{\cftfignumwidth}{5.5em}
\renewcommand{\cftloftitlefont}{\bfseries\MakeUppercase}
\renewcommand{\cftbeforeloftitleskip}{0cm}
\renewcommand{\cftafterloftitleskip}{0cm}
\renewcommand{\listfigurename}{Lista de Ilustra\c{c}\~{o}es}

\renewcommand{\cftfigpresnum}{\textsc{Figura }}
\renewcommand{\cftfigaftersnum}{\ \ -- \ \ }
\setlength{\cftfignumwidth}{5.5em}
\renewcommand{\cftloftitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftbeforeloftitleskip}{0cm}
\renewcommand{\cftafterloftitleskip}{0cm}
\renewcommand{\listfigurename}{Lista de Ilustra\c{c}\~{o}es}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABELAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\thetable}{\arabic{table}}
\renewcommand{\tablename}{Tabela}
\captionsetup[table]{labelsep=endash}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TABELAS %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\cfttabpresnum}{\textsc{Tabela }}
\renewcommand{\cfttabaftersnum}{\ \ -- \ \ }
\setlength{\cfttabnumwidth}{6em}
\renewcommand{\cftbeforelottitleskip}{0cm}
\renewcommand{\cftafterlottitleskip}{0cm}
\renewcommand{\cftlottitlefont}{\hfill\bfseries\MakeUppercase}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\listtablename}{Lista de Tabelas}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE ABREVIAÇÕES E LISTA DE SIMBOLOS%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{enumitem}
\RequirePackage{acro}

\newlist{acronyms}{description}{1}
\newcommand*\addcolon[1]{#1}
\setlist[acronyms]{
	labelwidth=1.7cm,
 	labelindent= 0cm,
%	leftmargin=1.9cm,
 	noitemsep,
	itemindent=!,%0cm,
	font=\addcolon
}
\acsetup{list-type=acronyms,hyperref=false}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fancyhdr}

\fancypagestyle{udesc}{%
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RO, LE]{\thepage}
}
\pagestyle{udesc}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPÍTULO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\chaptername}{}
\newcommand{\chapternumwidth}{4ex}
\newcommand{\chaptersep}{}

\makeatletter
\def\@makechapterhead#1{%
	\thispagestyle{fancy}
	\noindent%
	\parbox[b]{\textwidth}{%
		\normalfont
		\bfseries
    	\parbox[t]{\chapternumwidth}{\MakeUppercase{\chaptername} \thechapter \chaptersep}%
    	\parbox[t]{\textwidth}{
    		\interlinepenalty\@M\raggedright%
          	\MakeUppercase{#1}
			}%
		\vspace*{0cm}
    	}\\[2pt]%
	\vspace{0pt}%
}%
\makeatother

\makeatletter
\def\@makeschapterhead#1{%
	\thispagestyle{fancy}
	\noindent%
	\parbox[b]{\textwidth}{%
		\normalfont
		\bfseries
    	\parbox[t]{\chapternumwidth}{\MakeUppercase{\chaptername} \chaptersep}%
    	\parbox[t]{\textwidth}{
    		\begin{center}
    		\interlinepenalty\@M%\raggedright%
          	\MakeUppercase{#1}
          \end{center}
			}%
    	}\\[2pt]%
	\vspace{0pt}%
}%
\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SEÇÃO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[explicit]{titlesec}

%\titleformat{\section}{\MakeUppercase}{\thesection}{1em}{0cm}
\titleformat{\section}{\normalfont}{\thesection}{1em}{\MakeUppercase{#1}}

%\titleformat{hcommandi}[hshapei]{hformati}{hlabeli}{hsepi}{hbeforei}[hafteri]

\titleformat{\subsection}
  {\bfseries}
  {\thesubsection}{1em}{#1}
  
 \titleformat{\subsubsection}
  {}
  {\thesubsubsection}{1em}{#1}
  
  
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xcolor}





\providecommand{\instituicaodata}{}
\newcommand{\instituicao}[1]{\renewcommand{\instituicaodata}{ {#1} } }
\newcommand{\instituicaoformat}{\normalfont\bfseries}

\providecommand{\autordata}{}
\newcommand{\autor}[1]{\renewcommand{\autordata}{\MakeUppercase{#1}}}
\newcommand{\autorformat}{\normalfont}

\providecommand{\professordata}{}
\providecommand{\professorname}{}
\newcommand{\professor}[2][Professor:\vspace{1mm}\\]%
  {\renewcommand{\professorname}{#1}%
   \renewcommand{\professordata}{#2}}
\newcommand{\professornameformat}{}
\newcommand{\professorformat}{\large}

\providecommand{\orientadordata}{}
\providecommand{\orientadorname}{}
\newcommand{\orientador}[2][Orientador:]%
  {\renewcommand{\orientadorname}{#1}%
   \renewcommand{\orientadordata}{#2}}
\newcommand{\orientadornameformat}{}
\newcommand{\orientadorformat}{}

\providecommand{\coorientadordata}{}
\providecommand{\coorientadorname}{}
\newcommand{\coorientador}[2][Co-orientador:]%
  {\renewcommand{\coorientadorname}{#1}%
   \renewcommand{\coorientadordata}{#2}}
\newcommand{\coorientadornameformat}{}
\newcommand{\coorientadorformat}{}

\providecommand{\titulodata}{}
\newcommand{\titulo}[1]{\renewcommand{\titulodata}{ \MakeUppercase{#1}}}
\newcommand{\tituloformat}{\normalfont\bfseries}

\providecommand{\subtitulodata}{}
\newcommand{\subtitulo}[1]{\renewcommand{\subtitulodata}{\textbf{:}\\ \MakeUppercase{#1}}}
\newcommand{\subtituloformat}{\normalfont}

\providecommand{\tipodata}{}
\newcommand{\tipo}[1]{%
\ifthenelse{\equal{#1}{1}
}
{\renewcommand{\tipodata}{\MakeUppercase{Tese de Doutorado}}
\definecolor{cover_color}{rgb}{0.75,.2,.14}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{2}
}
{\renewcommand{\tipodata}{\MakeUppercase{Dissertação de Mestrado}}
\definecolor{cover_color}{rgb}{0,0.5,0.29}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{3}
}
{\renewcommand{\tipodata}{\MakeUppercase{Trabalho de Conclusão de Curso}}
\definecolor{cover_color}{rgb}{1,1,1}
\definecolor{font_color}{rgb}{0,0,0}
}
{}
\ifthenelse{\equal{#1}{4}
}
{\renewcommand{\tipodata}{\MakeUppercase{Relatório de Estágio}}
\definecolor{cover_color}{rgb}{1,1,1}
\definecolor{font_color}{rgb}{0,0,0}
}
{}
\ifthenelse{\equal{#1}{5}
}
{\renewcommand{\tipodata}{\MakeUppercase{Relatório de Pós Doutorado}}
\definecolor{cover_color}{rgb}{0.19,0.29,0.52}
\definecolor{font_color}{rgb}{1,1,1}
}
{}
\ifthenelse{\equal{#1}{6}
}
{\renewcommand{\tipodata}{\MakeUppercase{{Trabalho de Conclusão de Curso de}}\\ \MakeUppercase{Especialização}}
\definecolor{cover_color}{rgb}{0.98,0.77,0.45}
\definecolor{font_color}{rgb}{1,1,1}
}
{}

}
\newcommand{\tipoformat}{\normalfont}

\providecommand{\comentariodata}{}
\newcommand{\comentario}[1]{\renewcommand{\comentariodata}{#1}}
\newcommand{\comentarioformat}{}

\providecommand{\localdata}{}
\newcommand{\local}[1]{\renewcommand{\localdata}{\MakeUppercase{#1}}}
\newcommand{\localformat}{}

\providecommand{\anodata}{}
\newcommand{\ano}[1]{\renewcommand{\anodata}{#1}}
\newcommand{\anoformat}{}









\makeatletter
\newcommand{\capa}%
{%
\if@twocolumn
  \@restonecoltrue\onecolumn
\else
  \@restonecolfalse\newpage
\fi
\thispagestyle{empty}
\newgeometry{twoside,top=0.16cm,bottom=1.5cm,inner=2.5cm,outer=0.06cm,headsep=0cm}
\noindent
\includegraphics[scale=.18]{fig/Marca_UDESC_vertical.jpg}

\begin{flushleft}
     \setlength{\parskip}{0cm}
     \instituicaoformat\sffamily\instituicaodata\par
     \setlength{\parskip}{.3cm}\par
\end{flushleft}

\vfill

\vfill\vfill

\begin{flushright}
	\colorbox{cover_color}
	{
	\color{font_color}
		\begin{tabular}{c|l}
			\hspace{1cm}
			&
			\begin{minipage}[t]{8.3cm}
				\tipoformat\sffamily\tipodata\\
				\\
				\tituloformat\sffamily\titulodata\subtituloformat\sffamily\subtitulodata \\
			\end{minipage}
		\end{tabular}
	}
\end{flushright}

\vspace{1cm}
\vfill\vfill\vfill

\begin{center}

      \autorformat\sffamily\autordata

\end{center}

\vspace{1.8cm}

\begin{center}

      \localformat\sffamily\localdata, \anoformat	\sffamily\anodata

\end{center}

\if@restonecol\twocolumn \else \newpage \fi

\clearpage
\restoregeometry

}% end of \capa
\makeatother




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Folha de Rosto %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{ifthen}

\newcommand{\folhaderosto}%
{%
	\ifthenelse{\isodd{\value{page}}}
   	{\clearpage}
   	{\vfill\thispagestyle{empty}\cleardoublepage\newpage}
   	\thispagestyle{empty}
	
	\setcounter{page}{1}
%		\begin{center}
%		\setlength{\parskip}{.3cm}
%
%	{%
%     	\setlength{\parskip}{0cm}
%     	{\instituicaoformat\instituicaodata\par}
%     	\setlength{\parskip}{.3cm}\par
%     }
%	\end{center}
%	\vfill
%	%\ifnotempty{\autordata}%
  	{%
  	\begin{center}
    	\autorformat\autordata
  	\end{center}
  	}
\vfill\vfill\vfill

  {%
   \begin{center}
     {\tituloformat\titulodata\par}
   \end{center}
  }%
%\ifnotempty{\comentariodata}%
  {%
   \vspace{.8cm}
\begin{flushright}


     \begin{minipage}{.5\textwidth}

         {\comentarioformat\comentariodata}\par

       \vspace{.8cm}
      
       %\ifnotempty{\orientadordata}%
  {%
   {\orientadornameformat\orientadorname}
   {\orientadorformat\orientadordata}\protect
   \vspace{0.7cm} \\
  }
%\ifnotempty{\coorientadordata}
  {%
   {\coorientadornameformat\coorientadorname}
   {\coorientadorformat\coorientadordata}
  }

  {%
   {\professornameformat\professorname}
   {\professorformat\professordata}\protect
   \vspace{0.7cm}
  }
     \end{minipage}
   \end{flushright}
   }



\vfill\vfill
\begin{center}

      {{\localformat\localdata}\par}

      {{\anoformat\anodata}}

\end{center}

\pagebreak}%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE APROVACAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% width of the line and text under the line
\newlength{\signwidth}
\setlength{\signwidth}{8cm}

\newlength{\signwidthmembros}
\setlength{\signwidthmembros}{5cm}

% thickness of the line
\newlength{\signthickness}
\setlength{\signthickness}{0.4pt}

\newcommand{\orient}{Orientador: }
\newcommand{\coorient}{Co-orientador: }
\newcommand{\membro}{Membro: }








\newcommand{\assinaturaor}{\signor}

\newcommand{\signor}[1]{%
\vfill
\begin{minipage}{2.5cm}
	\noindent
  	\orient \\ \
\end{minipage}\begin{minipage}{\signwidth}
  	\vspace{1cm} \centering
  	\rule{\signwidth}{\signthickness}\\%
  	\nopagebreak #1\par  
\end{minipage}%
}
 
  
\newcommand{\assinaturacoor}{\signcoor}

\newcommand{\signcoor}[1]{%
\vfill%
\begin{minipage}{2.5cm}%
  	\coorient \\ \
\end{minipage}\begin{minipage}{\signwidth}%
  	\vspace{1cm} \centering%
  	\rule{\signwidth}{\signthickness}\\%
  	\nopagebreak #1\par%
\end{minipage}%
}
  
 % \newcommand{\csigncoor}[1]%
  %{\begingroup\par\signcoor{\centering #1}\par\endgroup}
  
  
\newcommand{\assinaturamembrotipoum}{\signmembrotipoum}

\newcommand{\signmembrotipoum}[1]{
	\vfill
	\begin{minipage}{2.5cm}%
  		\membro \\ \
	\end{minipage}\begin{minipage}{\signwidth}
		\vspace{1cm} \centering
		\rule{\signwidth}{\signthickness}\\%
		\nopagebreak #1  
	\end{minipage}
}


\newcommand{\assinaturamembrotipodois}{\signmembrotipodois}

\newcommand{\signmembrotipodois}[1]{
	\vfill
	\begin{minipage}{\signwidthmembros}
		\vspace{1.5cm} \centering
		\rule{\signwidthmembros}{\signthickness}\\%
		\nopagebreak #1  
	\end{minipage}
}
  
\providecommand{\datadata}{}
\newcommand{\data}[1]{\renewcommand{\datadata}{#1}}
\newcommand{\dataformat}{}
  
  
 \renewcommand{\local}[1]{\renewcommand{\localdata}{#1}}
\renewcommand{\localformat}{}  
  
  
  
 
\newenvironment{folhadeaprovacao}%
 {%
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty} \ \pagebreak \ }
   	
   	\thispagestyle{empty}
   	
   	\setlength\parindent{0cm}
   	
  	\begin{center}
    	\autorformat\autordata\par
    	\vspace{1cm}
		\tituloformat\titulodata\par
	\end{center}
	
}%
{


\begin{center}
\vfill
      {\localformat\localdata,} {\dataformat\datadata.}
\end{center}
\pagebreak
\clearpage
\setlength\parindent{1.25cm}
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\agradecimentoname}{Agradecimentos}

\newenvironment{agradecimento}%
{%
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty} \ \pagebreak \ }
   	
   	\thispagestyle{empty}
   	
\begin{center}
\bfseries\MakeUppercase{\agradecimentoname}
\end{center}

\normalfont

}%
{

\vfill

\pagebreak

\clearpage

}%abstract
 
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dedicatória %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\makeatletter
\newenvironment{dedicatoria}
{
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\ \vfill \thispagestyle{empty} \cleardoublepage}
   	
	\thispagestyle{empty}

\centering

\
\vfill
\begin{flushright}

\begin{minipage}{0.5 \textwidth}
\it

}
{
\end{minipage}
\end{flushright}
\vfill
%	\vspace{8cm}\endlist\pagebreak
\clearpage
\pagebreak
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Epígrafo %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\providecommand{\autorepigrafodata}{}
\newcommand{\autorepigrafo}[1]{\renewcommand{\autorepigrafodata}{ {#1} } }
%\newcommand{\instituicaoformat}{\normalfont\bfseries}


\makeatletter
\newenvironment{epigrafo}
{
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\vfill\thispagestyle{empty}\cleardoublepage}
\thispagestyle{empty}
\centering
\
\vfill
\vfill
\begin{flushright}


\begin{minipage}{0.5 \textwidth}



\it

}
{
\begin{flushright}
\vspace{10pt}  \hfill \normalfont  \autorepigrafodata\\

\end{flushright}
\end{minipage}
\end{flushright}
\vfill
%	\vspace{8cm}\endlist\pagebreak
\clearpage
}
\makeatother


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Abstract %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newenvironment{udescabstract}%
{%
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty}\cleardoublepage}
   	\thispagestyle{empty}
   	
   		\setlength{\parskip}{15pt}
\begin{center}
   \textbf{\MakeUppercase{Abstract}}
   \vspace{10pt}
\end{center}
	\setlength{\parskip}{10pt}
		\setlength{\parindent}{0pt}

}%
{
\vfill\pagebreak}
  
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resumo %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\resumoname}{Resumo}
\newenvironment{resumo}%
{%
	
	\ifthenelse{\isodd{\value{page}}}
   	{}
   	{\thispagestyle{empty}\cleardoublepage}
	\thispagestyle{empty}
	
	\setlength{\parskip}{15pt}
\begin{center}
   \textbf{\MakeUppercase{\resumoname}}

\end{center}
	\setlength{\parskip}{10pt}
	\setlength{\parindent}{0pt}
}%
{\vfill\pagebreak}
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bibliografia %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
\RequirePackage[nottoc,notlot,notlof]{tocbibind}


\renewcommand{\bibname}{Referências}

\let\oldbibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
\oldbibliography{#1}%
\setlength{\itemsep}{0pt}%
}

%\newfloatlist{diagram}{dia}{List of Diagrams}{Diagram}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APÊNDICE %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\apendice}
{
	\newpage
	\renewcommand{\chaptername}{Apêndice}
  	\setcounter{chapter}{0}
	\renewcommand{\thechapter}{\Alph{chapter}}
	\renewcommand{\chapternumwidth}{20ex}
	\renewcommand{\chaptersep}{\ -- \ }
	\addcontentsline{toc}{chapter}{Apêndices}
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ANEXO %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\anexo}
{
	\newpage
	\renewcommand{\chaptername}{Anexo}
	\addcontentsline{toc}{chapter}{Anexos}
	\setcounter{chapter}{0}
	\renewcommand*{\thechapter}{\Alph{chapter}}
	\renewcommand{\chapternumwidth}{15ex}
	\renewcommand{\chaptersep}{\ -- \ }
}




