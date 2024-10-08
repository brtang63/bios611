RMD = report.Rmd
REPORT = ./results/report.html
INPUT_DATA = ./data/input/
TEMP_DATA = ./data/temp/
RESULTS = ./results/
FIGURES = $(RESULTS)figures/

.PHONY: all build_report clean

all: build_report

build_report: $(RMD)
	@mkdir -p $(RESULTS)
	@mkdir -p $(FIGURES)
	Rscript -e "rmarkdown::render('$(RMD)', output_file='$(REPORT)')"

clean:
	rm -rf $(TEMP_DATA)*
	rm -rf $(FIGURES)*
	rm -f $(REPORT)

