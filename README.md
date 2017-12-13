JHU Unofficial Thesis Readme
============================
Author: R. Jacob Vogelstein <br>
Updated by Noah J. Cowan, March 1, 2010 <br>
Updated by [Brian D. Weitzner](https://github.com/weitzner), April 29, 2014 as available at [GitHub](https://github.com/weitzner/jhu-thesis-template) and as an [Overleaf template](https://www.overleaf.com/latex/templates/johns-hopkins-phd-dissertation-template/jmdrczzbrhyx#.Vw7LVhMrL64) as uploaded by Karla Hernandez (see how to support PDF/A files at the end of this README)<br>
Updated by [John Muschelli](https://github.com/muschellij2), January 29, 2016 and now uses a makefile as available [here](https://github.com/muschellij2/PhD_Thesis) <br>
Updated by [Leonardo Collado Torres](https://github.com/lcolladotor) on April 13, 2016 as available at this [repo](https://github.com/weitzner/jhu-thesis-template) or as an [Overleaf template](https://www.overleaf.com/latex/templates/johns-hopkins-university-unofficial-thesis-template/tqdzgmrxgbtg#.Vw-NrRMrJuU) (The template is missing [this small change](https://github.com/lcolladotor/jhu-thesis-template/commit/37f7151d3bb0ac1c5a487e5788fe6071bffc7d8b)).

This archive is intended to simplify the process of creating a thesis
in LaTeX that complies with the JHU formatting requirements found [here](http://guides.library.jhu.edu/etd/formatting).

# Makefile version

Muschelli added a `makefile` and `Rnw` files to his thesis. Collado Torres simply took Muschelli's thesis, made it into a template and submitted it to Overleaf. The rest of the README is as-is from the time Weitzner modified. To use this version you will have to modify the `main.tex` file and add chapters as necessary. Then you will have to update the `makefile` with the names of the new chapters. 

If you want to reproduce the current `PhD_Thesis.pdf` file, simply run

```sh
make
```

To clean the files that you won't need, run

```sh
make clean
```

To open the PDF file run

```sh
make open
```

Finally to start editing `main.tex` run

```sh
make edit
```

The file `RJournal_nogeom.sty` is used to change the color of some links and other style changes.

It might be best to simply clone this repository, start editing and committing your changes in case you want to rollback or remember why you changed something. 

If you want to check a complete PhD Thesis see [John Muschelli's](https://github.com/muschellij2/PhD_Thesis). It contains more `LaTeX` tricks that you might need to use.


## Use at Overleaf

If you don't want to install `LaTeX` simply use [Overleaf](https://www.overleaf.com/) or [ShareLaTeX](https://www.sharelatex.com/). You won't need the `makefile` in that case. 

In particular, you might want to see this [read-only version at Overleaf](https://www.overleaf.com/read/tqdzgmrxgbtg). It doesn't have a `makefile` because they are currently not supported (see [this tweet](https://twitter.com/fellgernon/status/720360139233050624)). Also, the `Rnw` chapter is basically a regular chapter when using Overleaf since you have to create the `tex` file yourself using `knitr::knit()` and upload the resulting `tex` file and figures to Overleaf.

To go ahead and use this template in Overleaf, go to the [Overleaf template](https://www.overleaf.com/latex/templates/johns-hopkins-university-unofficial-thesis-template/tqdzgmrxgbtg#.Vw-NrRMrJuU) and click on _open as template_.

# Previous information

The files described below are still available under the `unused_files` directory. Some of the previous information is still valid. You might be interested in using either the files last edited by [Brian D. Weitzner](https://github.com/weitzner) at [weitzner/jhu-thesis-template under commit d8ba0a](https://github.com/weitzner/jhu-thesis-template/tree/d8ba0a4c524a674258202b5338edd50249026443) or the original [JHU-Biostats template](http://www.biostat.jhsph.edu/research/thesis.shtml) included here as `unused_files/OLD_FORMAT.tex`.

## Quick Start


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

## What's Included?


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

## Figures

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

## Use at Overleaf

The version by [Brian D. Weitzner](https://github.com/weitzner) is available as an Overleaf template that Karla Hernandez uploaded. View it [here](https://www.overleaf.com/latex/templates/johns-hopkins-phd-dissertation-template/jmdrczzbrhyx#.Vw7LVhMrL64). Note that it does not include support for PDF/A files as of the version available on April 13, 2016. However, you can add PDF/A file support by following the instructions available [here](https://www.overleaf.com/latex/examples/creating-pdf-slash-a-and-pdf-slash-x-files/bbbycnbyqhnm#.Vw6_XBMrLm1).

