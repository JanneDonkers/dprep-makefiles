## makefile data-preparation


all: ../../data/reviews.csv ../../data/listings.csv ../../temp/aggregated_df.csv

../../data/reviews.csv ../../data/listings.csv: download.R
	R --vanilla < download.R

../../temp/aggregated_df.csv: Clean.R ../../data/reviews.csv ../../data/listings.csv
	R --vanilla < Clean.R