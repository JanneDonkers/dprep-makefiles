## main build rule
all: plot_all.pdf plot_Antwerp.pdf

## 
reviews.csv listings.csv: download.R
	R --vanilla < download.R

aggregated_df.csv: Clean.R reviews.csv listings.csv
	R --vanilla < Clean.R

pivot_table.csv: pivot_table.R aggregated_df.csv
	R --vanilla < pivot_table.R

plot_all.pdf: plot_all.R aggregated_df.csv
	R --vanilla < plot_all.R
	
plot_Antwerp.pdf: plot_Antwerp.R pivot_table.csv
	R --vanilla < plot_Antwerp.R
	
