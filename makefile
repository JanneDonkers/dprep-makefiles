## main build rule
all: output/plot_all.pdf output/plot_Antwerp.pdf

## 
data/reviews.csv data/listings.csv: src/data-preparation/download.R
	R --vanilla < src/data-preparation/download.R

temp/aggregated_df.csv: src/data-preparation/Clean.R data/reviews.csv data/listings.csv
	R --vanilla < src/data-preparation/Clean.R

temp/pivot_table.csv: src/analysis/pivot_table.R temp/aggregated_df.csv
	R --vanilla < src/analysis/pivot_table.R

output/plot_all.pdf: src/analysis/plot_all.R temp/aggregated_df.csv
	R --vanilla < src/analysis/plot_all.R
	
output/plot_Antwerp.pdf: src/analysis/plot_Antwerp.R temp/pivot_table.csv
	R --vanilla < src/analysis/plot_Antwerp.R
	
