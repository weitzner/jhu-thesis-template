fname=main
${fname}.pdf: ${fname}.tex \
	abstract/abstract.tex \
	committee/committee.tex \
	acknowledgments/acknowledgments.tex \
	intro_chapter/intro_chapter.tex \
	intro_chapter/intro_chapter.bib \
	conclusion_chapter/conclusion_chapter.tex \
	conclusion_chapter/conclusion_chapter.bib \
	rnw_chapter/rnw_chapter.bib \
	rnw_chapter/rnw_chapter.Rnw 
	if [ -e ${fname}.aux ]; \
	then \
	rm ${fname}.aux; \
	fi;
	cd rnw_chapter/ \
	make clean && make;	
	pdflatex ${fname}
	bibtex ${fname}
	bibtex ${fname}1-blx
	bibtex ${fname}2-blx
	bibtex ${fname}3-blx
	# Add more if you have more chapters
	pdflatex ${fname}
	pdflatex ${fname}
	cp ${fname}.pdf PhD_Thesis.pdf
	open PhD_Thesis.pdf
clean:
	if [ -e ${fname}.aux ]; \
	then \
	rm *.aux; \
	fi;
	if [ -e ${fname}.bbl ]; \
	then \
	rm *.bbl; \
	fi;
	if [ -e ${fname}.blg ]; \
	then \
	rm *.blg; \
	fi;
	if [ -e ${fname}.lof ]; \
	then \
	rm ${fname}.lof; \
	fi;
	if [ -e ${fname}.log ]; \
	then \
	rm ${fname}.log; \
	fi;
	if [ -e ${fname}.lot ]; \
	then \
	rm ${fname}.lot; \
	fi;
	if [ -e ${fname}.toc ]; \
	then \
	rm ${fname}.toc; \
	fi;
	if [ -e ${fname}-blx.bib ]; \
	then \
	rm ${fname}-blx.bib; \
	fi;
	if [ -e ${fname}.out ]; \
	then \
	rm ${fname}.out; \
	fi;
	if [ -e ${fname}.run.xml ]; \
	then \
	rm ${fname}.run.xml; \
	fi;
	if [ -e acknowledgments/acknowledgments.aux ]; \
	then \
	rm */*.aux; \
	fi;
	if [ -e ${fname}.pdf ]; \
	then \
	rm ${fname}.pdf; \
	fi;
	if [ -e pdfa.xmpi ]; \
	then \
	rm pdfa.xmpi; \
	fi;
open:
	open ${fname}.pdf
edit:
	open ${fname}.tex