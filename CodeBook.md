# Getting and Cleaning Data Course Project

author: Otto Perdeck

---

The steps performed by the R 'run_analysis.R' script to get from the zip with the raw dataset
to the cleaned up and summarize dataset are as follows:

1. Unzip the dataset 
    Note: no postprocessing of the dataset has been done, as there seemed to be no
    missing values or strange outliers
2. Merge the training and the test sets to create one data set
3. Remove all measurements except for the ones for 'std()' and 'mean()'
    using the 'features.txt' file from the dataset
4. Set descriptive names using the 'features.txt' file from the dataset
5. Merge the subject data from training and test set and add to the dataset
6. Merge the activity codes, map it to activity names, and add to the dataset
7. Summarize the data by only taking the average per subject and activity 
8. Write out the resulting data to file

Dataset homepage is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Description of the fields in the resulting data set 'summary.txt':

(NOTE: the file is written without headers as per the instructions)

Column 1 : subject ID (1 thru 30)
Column 2 : activity name (one of the 6 activities WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
           SITTING, STANDING, LAYING)
Column 3 thru 68 : mean of the values for a measurement for this subject ID and this activity
           in the same order as described in the 'features.txt' file of the original dataset
           and including only the measurements for mean() and std(), see below

Measurement names in columns 3 thru 68:

 [1] tBodyAcc-mean()-X           tBodyAcc-mean()-Y           tBodyAcc-mean()-Z          
 [4] tBodyAcc-std()-X            tBodyAcc-std()-Y            tBodyAcc-std()-Z           
 [7] tGravityAcc-mean()-X        tGravityAcc-mean()-Y        tGravityAcc-mean()-Z       
[10] tGravityAcc-std()-X         tGravityAcc-std()-Y         tGravityAcc-std()-Z        
[13] tBodyAccJerk-mean()-X       tBodyAccJerk-mean()-Y       tBodyAccJerk-mean()-Z      
[16] tBodyAccJerk-std()-X        tBodyAccJerk-std()-Y        tBodyAccJerk-std()-Z       
[19] tBodyGyro-mean()-X          tBodyGyro-mean()-Y          tBodyGyro-mean()-Z         
[22] tBodyGyro-std()-X           tBodyGyro-std()-Y           tBodyGyro-std()-Z          
[25] tBodyGyroJerk-mean()-X      tBodyGyroJerk-mean()-Y      tBodyGyroJerk-mean()-Z     
[28] tBodyGyroJerk-std()-X       tBodyGyroJerk-std()-Y       tBodyGyroJerk-std()-Z      
[31] tBodyAccMag-mean()          tBodyAccMag-std()           tGravityAccMag-mean()      
[34] tGravityAccMag-std()        tBodyAccJerkMag-mean()      tBodyAccJerkMag-std()      
[37] tBodyGyroMag-mean()         tBodyGyroMag-std()          tBodyGyroJerkMag-mean()    
[40] tBodyGyroJerkMag-std()      fBodyAcc-mean()-X           fBodyAcc-mean()-Y          
[43] fBodyAcc-mean()-Z           fBodyAcc-std()-X            fBodyAcc-std()-Y           
[46] fBodyAcc-std()-Z            fBodyAccJerk-mean()-X       fBodyAccJerk-mean()-Y      
[49] fBodyAccJerk-mean()-Z       fBodyAccJerk-std()-X        fBodyAccJerk-std()-Y       
[52] fBodyAccJerk-std()-Z        fBodyGyro-mean()-X          fBodyGyro-mean()-Y         
[55] fBodyGyro-mean()-Z          fBodyGyro-std()-X           fBodyGyro-std()-Y          
[58] fBodyGyro-std()-Z           fBodyAccMag-mean()          fBodyAccMag-std()          
[61] fBodyBodyAccJerkMag-mean()  fBodyBodyAccJerkMag-std()   fBodyBodyGyroMag-mean()    
[64] fBodyBodyGyroMag-std()      fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std() 





