JHU Thesis Readme
=================
Author: R. Jacob Vogelstein <br>
Updated by Noah J. Cowan, March 1, 2010 <br>
Updated by Brian D. Weitzner, April 29, 2014


This archive is intended to simplify the process of creating a thesis
in LaTeX that complies with the JHU formatting requirements.  

Quick Start
-----------

1. Install LaTeX and a decent editor (ideally emacs+AUCTeX+RefTeX) on
your computer.

2. To compile the included sample document, type "latex root".  If you want to test
the references and everything, use the usual magic sequence of commands: 

```sh
pdflatex root
bibtex root
pdflatex root
pdflatex root
```
Extra compiles may be needed for accurate TOC, List of Figures, etc.

What's Included?
----------------

* `thesis.cls` – The TeX class file that contains many of the formatting commands.  

* `jhu12.clo` – The 12pt font "class option" file that contains the specific formatting commands for a 12-point font JHU thesis document.

* `IEEEtran.bst` – A recent version (as of May 2007) of the BibTeX style file for formatting citations in the style used by IEEE Transactions journals.  

* `thesis.bib` – A sample bibliography file in BibTeX format.

* `root.tex` – The "root" LaTeX file that contains the LaTeX preamble as well as "include" statements for each of your thesis chapters.

* `chapter0.tex` – A sample chapter with some formatting/header options.

* `chapter1.tex` – Another sample chapter with some different formatting/header options.

* `rjvheadshot.jpg` – A sample graphic with the right dimesions for the headshot used on the Vita page.

* `root.pdf` – A compiled version of the sample document.

* `jhu10.clo` – **USE AT YOUR OWN RISK** – An old version of a 10pt font "class option" file that DOES NOT FULLY COMPLY with the JHU thesis formatting requirements, but is better than nothing if you want to use a smaller font.

* `jhu11.clo` – **USE AT YOUR OWN RISK** – An old version of an 11pt font "class option" file that DOES NOT FULLY COMPLY with the JHU thesis formatting requirements, but is better than nothing if you want to use a smaller font.

Figures
-------
Figures should be generated as such:

```tex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=\columnwidth]{myfigure}
  \caption{My caption}
  \label{fig:myfig}
\end{figure}
```

Where the figure `myfigure.EXT` can be located in the directory designated by the `\graphicspath` command in the `root.tex` file.

Note that no file extension is given in the `includegraphicx` command; this makes the code maximally portable for different graphics drivers. For `pdflatex`, there are many allowable extensions, including `.pdf` and `.jpg` among others. For plain latex, you generally have to use `.eps` files. But, if you hard-code the extension in your LaTeX code, then you will not be able to switch between latex and `pdflatex`.

