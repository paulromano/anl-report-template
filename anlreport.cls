\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{anlreport}[2016/10/06]

\LoadClass[12pt]{article}
\typeout{Loading ANL technical report class: includes [12pt]{article}}
\typeout{written by Paul K. Romano (CPS)}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages needed
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{etoolbox}

\newcommand{\reportNumber}[1]{\gdef\@reportNumber{#1}}
\newcommand{\division}[1]{\gdef\@division{#1}}
\newcommand{\building}[1]{\gdef\@building{#1}}

\AfterEndPreamble{
  \noindent
  \begin{flushleft}
  \raisebox{-.5\height}{\includegraphics[width=5.5cm]{images/argonne.pdf}}
  \hfill
  {\large \bfseries \@reportNumber}\\[22ex]
  \leftskip=1cm
  {\huge \bfseries \@title}\\[0.5ex]
  \rule{\linewidth}{1.5pt}\\[15ex]
  {\large \@division}\\
  \leftskip=0cm
  \end{flushleft}
  \thispagestyle{empty}
  \newpage

  \vspace*{18ex}
  \noindent
  \parbox{.79\textwidth}{\footnotesize
    {\bfseries About Argonne National Laboratory}\\
    \raggedright
    Argonne is a U.S. Department of Energy laboratory managed by UChicago Argonne, LLC under contract DE-AC02-06CH11357. The Laboratory's main facility is outside Chicago, at 9700 South Cass Avenue, Lemont, Illinois 60439. For information about Argonne and its pioneering science and technology programs, see www.anl.gov.}\\[6ex]
  {\footnotesize \bfseries DOCUMENT AVAILABILITY}\\[1ex]
  \parbox{.79\textwidth}{\footnotesize
    \leftskip=1em
    {\bfseries Online Access:}
    U.S. Department of Energy (DOE) reports produced after 1991 and a growing number of pre-1991 documents are available free at OSTI.GOV (http://www.osti.gov/), a service of the U.S. Dept. of Energy's Office of Scientific and Technical Information}\\[2ex]
  {\footnotesize \bfseries
    Reports not in digital format may be purchased by the public from the\\
    National Technical Information Service (NTIS):}\\[1ex]
  \parbox{.78\textwidth}{\footnotesize
    \leftskip=1em
    U.S. Department of Commerce\\
    National Technical Information Service\\
    5301 Shawnee Rd\\
    Alexandria, VA 22312\\
    {\bfseries www.ntis.gov}\\
    Phone: (800) 553-NTIS (6847) or (703) 605-6000\\
    Fax: (703) 605-6900\\
    Email: {\bfseries orders@ntis.gov}}\\[2ex]
  {\footnotesize \bfseries
    Reports not in digital format are available to DOE and DOE contractors from the\\
    Office of Scientific and Technical Information (OSTI):}\\[1ex]
  \parbox{.78\textwidth}{\footnotesize
    \leftskip=1em
    U.S. Department of Energy\\
    Office of Scientific and Technical Information\\
    P.O. Box 62\\
    Oak Ridge, TN 37831-0062\\
    {\bfseries www.osti.gov}\\
    Phone: (865) 576-8401\\
    Fax: (865) 576-5728\\
    Email: {\bfseries reports@osti.gov}}\\[6ex]
  \parbox{.985\textwidth}{\scriptsize
    {\bfseries Disclaimer}\\
    \raggedright
    This report was prepared as an account of work sponsored by an agency of the United States Government. Neither the United States Government nor any agency thereof, nor UChicago Argonne, LLC, nor any of their employees or officers, makes any warranty, express or implied, or assumes any legal liability or responsibility for the accuracy, completeness, or usefulness of any information, apparatus, product, or process disclosed, or represents that its use would not infringe privately owned rights. Reference herein to any specific commercial product, process, or service by trade name, trademark, manufacturer, or otherwise, does not necessarily constitute or imply its endorsement, recommendation, or favoring by the United States Government or any agency thereof. The views and opinions of document authors expressed herein do not necessarily state or reflect those of the United States Government or any agency thereof, Argonne National Laboratory, or UChicago Argonne, LLC.}
  \thispagestyle{empty}
  \newpage

  \hspace*{\fill}{\large \bfseries \@reportNumber}\\[22ex]
  \begin{flushleft}
  \leftskip=1cm
  {\huge \bfseries \@title }\\[0.5ex]\rule{\linewidth}{1.5pt}\\[15ex]
  {\large  prepared by\\ \@author}\\[8ex]
  {\large  \@division}\\[8ex]
  \@date\\
  \leftskip=0cm
  \end{flushleft}
  \thispagestyle{empty}
  \newpage
  \pagenumbering{arabic}
}

\AtEndDocument{
  \newpage
  \noindent
  \begin{flushleft}
  \raisebox{-.5\height}{\includegraphics[width=5.5cm]{images/argonne.pdf}}\\[8ex]
  \leftskip=1cm
  {\Large \bfseries  \@division}\\
  {\large  Argonne National Laboratory\\
      9700 South Cass Avenue, Bldg. \@building\\
      Lemont, IL 60439}\\
      \vspace{4ex}
  {\large  www.anl.gov}\\
  \vfill
  \includegraphics[width=7cm]{images/DOE.pdf}\\
  \leftskip=0cm
  \end{flushleft}
  \thispagestyle{empty}
}
