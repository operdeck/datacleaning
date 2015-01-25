#Getting and Cleaning Data Course Project

author: Otto Perdeck

---

Files in the repository:

- README.md      : This file, explaining how all of the scripts work and how they are connected
- CodeBook.md    : A code book that describes the variables, the data, and any 
                   transformations to clean up the data
- get_data.R     : An R script to download the dataset into the working directory. This needs
                   to be run once.
- run_analysis.R : An R script that does all the data analysis and eventually generates summary
                   data in a file 'summary.txt' in the working directory. Before running this, make
                   sure the dataset has been downloaded into the working directory. Als make sure
                   that the 'data.table' and 'plyr' packages are available to R. If not, install
                   them with install.packages first.

To do the analysis:

1. Make sure that the 'data.table' and 'plyr' packages are available to R. If not, install
   them with install.packages first. Also make sure you have an internet connection, otherwise
   the download in the next step will fail.

2. Run 'get_data.R'. 
   When finished, there should be a file 'UCI HAR Dataset.zip' in the working directory.
   NOTE: because of difference between Windows and Linux R in the behavior of 'download.file',
   we have embedded the call in a try-catch block, and the script will try execute both the
   Windows and Linux variation. This may result in an error/warning on the console, but the
   file should be downloaded in both cases. 

3. Run 'run_analysis.R'.
   When finished, there should be a file 'summary.txt' in the working directory
