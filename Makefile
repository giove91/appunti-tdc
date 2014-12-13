TEX_BASENAMES = main chapter_basics chapter_complexity chapter_p

TEX_SOURCES = $(TEX_BASENAMES:=.tex)


.PHONY: clean all

main.pdf: $(TEX_SOURCES)
	rubber --pdf main.tex

all: main.pdf

clean:
	rm -f $(TEX_BASENAMES:=.log)
	rm -f main.aux main.toc
	rm -f *~

