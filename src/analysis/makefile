## makefile analysis

all: ../../output/plot_all.pdf ../../output/plot_Antwerp.pdf

../../temp/pivot_table.csv: pivot_table.R ../../temp/aggregated_df.csv
	R --vanilla < pivot_table.R

../../output/plot_all.pdf: plot_all.R ../../temp/aggregated_df.csv
	R --vanilla < plot_all.R
	
../../output/plot_Antwerp.pdf: plot_Antwerp.R ../../temp/pivot_table.csv
	R --vanilla < plot_Antwerp.R
	