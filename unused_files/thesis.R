rm( list = ls() )
library('bibtex')
bib_files = list.files(pattern = "[.]bib$")
drop_files = "thesis.bib"
bib_files = setdiff(bib_files, drop_files)

