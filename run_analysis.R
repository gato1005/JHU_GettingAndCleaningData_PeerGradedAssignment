# Johns Hopkins University Data Science Specialization
# Course 3 : Getting and Cleaning Data
# Week 4 : Peer-Graded Assignment

# Load Packages and get the Data
install.packages("data.table")
library(data.table)

install.packages("reshape2")
library(reshape2)

# get the working directory
currDir <- getwd()

# store the provided url into a variable 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download the file from the given url
download.file(url, file.path(currDir, "dataFiles.zip"))

# Unzin the downloaded zip file from the url
unzip(zipfile = "dataFiles.zip")

# Load activity from "activity_labels.txt"
activityLabels <- fread(file.path(currDir, "UCI HAR Dataset/activity_labels.txt")
                        , col.names = c("classLabels", "activityName"))

# load features from "features.txt"
features <- fread(file.path(currDir, "UCI HAR Dataset/features.txt")
                  , col.names = c("index", "featureNames"))

# get the wanted features as required - (mean and standard deviation)
featuresWanted <- grep("(mean|std)\\(\\)", features[, featureNames])

# store all the features with "mean" and "std" in a variable
measurements <- features[featuresWanted, featureNames]

# remove the "()" notation after the feature for naming convention
measurements <- gsub('[()]', '', measurements)

# Load train datasets
train <- fread(file.path(currDir, "UCI HAR Dataset/train/X_train.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(train, colnames(train), measurements)
trainActivities <- fread(file.path(currDir, "UCI HAR Dataset/train/Y_train.txt")
                         , col.names = c("Activity"))
trainSubjects <- fread(file.path(currDir, "UCI HAR Dataset/train/subject_train.txt")
                       , col.names = c("SubjectNum"))
train <- cbind(trainSubjects, trainActivities, train)

# Load test datasets
test <- fread(file.path(currDir, "UCI HAR Dataset/test/X_test.txt"))[, featuresWanted, with = FALSE]
data.table::setnames(test, colnames(test), measurements)
testActivities <- fread(file.path(currDir, "UCI HAR Dataset/test/Y_test.txt")
                        , col.names = c("Activity"))
testSubjects <- fread(file.path(currDir, "UCI HAR Dataset/test/subject_test.txt")
                      , col.names = c("SubjectNum"))
test <- cbind(testSubjects, testActivities, test)

# merge the two datasets and add labels by binding the rows together
finalData <- rbind(train, test)

# Convert classLabels to activityName basically. More explicit. 
finalData[["Activity"]] <- factor(finalData[, Activity]
                                 , levels = activityLabels[["classLabels"]]
                                 , labels = activityLabels[["activityName"]])

finalData[["SubjectNum"]] <- as.factor(finalData[, SubjectNum])
finalData <- reshape2::melt(data = finalData, id = c("SubjectNum", "Activity"))

# the last argument is necessary otherwise if only "mean" is passed,
# r returns an error as the name "mean()" is also a function in r
finalData <- reshape2::dcast(data = finalData, SubjectNum + Activity ~ variable, fun.aggregate = mean)

# save the tidy dataset into a new text file
write.table(finalData, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)
