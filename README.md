getdata-007
===========

Getting and Cleaning Data Course Project:

Source Data Files
-----------------
Source data for procesissing can be found in the project directory: [/UCI%20HAR%20Dataset](/UCI%20HAR%20Dataset)



Data Analysis Script
-------------------

The file [run_analysis.R](/run_analysis.R) will download the source dataset if it is not present, perform data transformations, and output a tidy set according to the project specifications.

[CodeBook.md](/CodeBook.md) describes the source,methods, and output in detail.


Output Files
------------

The output of [run_analysis.R](/run_analysis.R) is: [tidy_data.text](/tidy_data.txt)



Loading output data in R
------------------------
Use the following R code snippet to load the output files into R:

```
tidy_download <- download.file("https://github.com/kevinlove/getdata-007/blob/master/tidy_data.txt","tidy_data.txt",method="curl")
tidy_data <- read.table("tidy_data.txt",header=TRUE)
View(tidy_data)
```
