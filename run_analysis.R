library(reshape2) 

dataFile <-"getdata-projectfiles-UCI HAR Dataset.zip" ##The data zip file
dataDir <-"UCI HAR Dataset" ##Data directory once the data file is unzipped

##Let's check to see if the data zip file is here, if not, download it. 
if (!file.exists(dataFile)) {
        fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, dataFile)
} else{print("You're  good")}
##Let's extract those data files
if (!file.exists(dataDir)) {
        unzip(dataFile)
}else{print("Very good, actually")}

testDir <- paste0(dataDir, "/test") #create vector for test directory
trainDir <- paste0(dataDir, "/train") #create vector for train directory

## Load ALL THE DATA FILES!
testSubject <- read.table(paste0(testDir, "/subject_test.txt"))
testX <- read.table(paste0(testDir, "/X_test.txt"))
testY <- read.table(paste0(testDir, "/y_test.txt"))

trainSubject <- read.table(paste0(trainDir, "/subject_train.txt"))
trainX <- read.table(paste0(trainDir, "/X_train.txt"))
trainY <- read.table(paste0(trainDir, "/y_train.txt"))

features <- read.table(paste0(dataDir, "/features.txt"))
activityLabels <- read.table(paste0(dataDir, "/activity_labels.txt"))

## 1. Merges the training and the test sets to create one data set.
## We're going to skip #2 from the assignment for now, we will address it a little later
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.

subject <- rbind(testSubject, trainSubject) #combine test/train subject
names(subject) <- "subject" #name subject variable

x <- rbind(testX, trainX) #combine test/training data
names(x) <- features[, 2] #name those variables

y <- rbind(testY, trainY) #combine test/training activities
y <- merge(y, activityLabels, by = 1)[, 2] #merge activity labels

data <- cbind(subject, y, x) #column bind subject/data/activities together
names(data)[2] <- "label"  #name the activity label variable

## Now we can get to #2
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

matchData <- grep("-mean\\(|-std\\(", names(data)) ##pattern match measurement for mean/std
data.mean_std <- data[, c(1, 2, matchData)] ## return that shiz


## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

melted <- melt(data.mean_std, id.var = c("subject", "label")) ##melt it
means <- dcast(melted , subject + label ~ variable, mean) ##cast it 
write.table(means, file="tidy_data.txt", row.name=FALSE) ##write it with row.name=FALSE

