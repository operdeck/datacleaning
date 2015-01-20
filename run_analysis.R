setwd('D:/cygwin64/home/perdo/datacleaning')
setwd('UCI HAR Dataset')
library(data.table)
# if this is the first time, install.packages('data.table')

#Merges the training and the test sets to create one data set.

train = read.table('train/X_train.txt')
test = read.table('test/X_test.txt')
combined <- rbind(train, test)
# check with dim() that they are combined

# 2: Extract only the measurements on the mean and standard deviation for each measurement.
#
# Instead of hardcoding the indices of these, we read the features txt file and
# obtain the relevant columns by filtering the feature names on '-mean()' and '-std()'.
features = read.table('features.txt')
indices = grep('-mean\\(\\)|-std\\(\\)',features$V2)
#print(features[indices,2])
combined_sliced <- combined[,indices]

# 4: Appropriately labels the data set with descriptive variable names. 
#
# The names are in the 'features' vector and we apply these to the columns
colnames(combined_sliced) <- features[indices,2]

# TODO: merge in the subjects
# from 'train/subject_train.txt'

# 3: Use descriptive activity names to name the activities in the data set
# First, create a vector with the activities by name, then add that vector
# to the earlier obtained data table.
activities_train = read.table('train/y_train.txt')
activities_test = read.table('test/y_test.txt')
activities_combined <- rbind(activities_train, activities_test)
activities_labels = read.table('activity_labels.txt')
activities_byname <- activities_labels$V2[activities_combined$V1]
q <- combined_sliced[, Activity := activities_byname]

# should work...
# make a data table first! b <- as.data.table(combined_sliced) - or perhaps earlier already
# a la DT[, b:=mean(x+w),by=a]

#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#txt file created with write.table() using row.name=FALSE