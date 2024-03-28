TeXInputs = TEXINPUTS=.:

all: build/vlba.pdf

build/vlba.pdf: FORCE | build
	$(TeXInputs) latexmk -r ./latexmkrc vlba.tex

build:
	mkdir -p build/

clean:
	rm -rf build

FORCE:

.PHONY: FORCE all clean
