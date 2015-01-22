library(data.table)
# if this is the first time, install.packages('data.table')
library(plyr)

# Assume the data file exists in the working directory. Expand it.
unzip("./UCI HAR Dataset.zip")

# Merge the training and the test sets to create one data set.
train <- read.table('./UCI HAR Dataset/train/X_train.txt')
test <- read.table('./UCI HAR Dataset/test/X_test.txt')
combined <- rbind(train, test)

# We only need the measurements for 'mean' and 'std'. Using the feature descriptions,
# we get the indices of the columns for those measurements, then use this vector
# of indices to subset the dataset.
#
# We also turn it into a data table for more efficient processing.
features <- read.table('./UCI HAR Dataset/features.txt')
indices <- grep('-mean\\(\\)|-std\\(\\)',features$V2) # using grep to get cols with '-mean()' and '-std()'
dataset <- as.data.table(combined[,indices])

# Label the data set with descriptive variable names from the features descriptions. 
setnames(dataset, as.character(features[indices,2]))

# Merge in the subjects.
subjects <- rbind(read.table('./UCI HAR Dataset/train/subject_train.txt'), 
                  read.table('./UCI HAR Dataset/test/subject_test.txt'))
dataset[, subject := subjects]

# Merge in the activities. Translate the activity codes to labels.
activities <- rbind(read.table('./UCI HAR Dataset/train/y_train.txt'), 
                    read.table('./UCI HAR Dataset/test/y_test.txt'))
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
activities_byname <- activity_labels$V2[activities$V1]
dataset[, activity := activities_byname]

# Create a dataset with only the mean of each variable for each activity and each subject.
summary <- ddply(dataset, .(subject, activity), numcolwise(mean))
write.table(summary, file="./summary.txt", col.names=FALSE)

