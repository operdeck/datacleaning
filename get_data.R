# Download the source data into the working folder
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# For Linux like systems, the 'curl' method needs to be specified
# but for Windows, 'curl' cannot be specified - we're trying both

tryCatch( {
  download.file(fileURL, destfile = "./UCI HAR Dataset.zip", method="curl")
}, finally = {
})

tryCatch( {
  download.file(fileURL, destfile = "./UCI HAR Dataset.zip")
}, finally = {
})
