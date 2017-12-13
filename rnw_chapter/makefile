name=rnw_chapter
${name}.tex: ${name}.Rnw 
	if [ -e ${name}.aux ]; \
	then \
	rm ${name}.aux; \
	fi;
	Rscript -e "library(knitr); knit('${name}.Rnw')"

clean: 
	rm ${name}.tex

open: 
	open ${name}.tex
