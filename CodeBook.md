Getting and Cleaning Data Course Project
author: Otto Perdeck

The steps performed by the R script to get from the zip with the raw dataset
to the cleaned up and summarize dataset are as follows:

(1) Unzip the dataset 
    Note: no postprocessing of the dataset has been done, as there seemed to be no
    missing values or strange outliers
(2) Merge the training and the test sets to create one data set
(3) Remove all measurements except for the ones for 'std()' and 'mean()'
    using the 'features.txt' file from the dataset
(4) Set descriptive names using the 'features.txt' file from the dataset
(5) Merge the subject data from training and test set and add to the dataset
(6) Merge the activity codes, map it to activity names, and add to the dataset
(7) Summarize the data by only taking the average per subject and activity 
(8) Write out the resulting data to file

Dataset homepage is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
