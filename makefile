#Overall makefile 
## When calling make this makefil starts the makefiles in analysis and data-preparation
	
all: data-preparation analysis 

data-preparation: 
	make -C src/data-preparation
	
analysis: 
	make -C src/analysis
	
clean: 
	R -e "unlink('data', recursive = TRUE)"
	R -e "unlink('temp', recursive = TRUE)"