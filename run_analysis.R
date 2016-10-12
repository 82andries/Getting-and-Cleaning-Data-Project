#set the working directory
setwd('C:\\Users\\e32144\\Desktop\\R\\Getting and Cleaning Data\\Week4')

#Load libraries
library(dplyr)
library(reshape2)


# Check if derectory data exist, if not, it creates one in the workign director
if(!file.exists("data")) {
      dir.create("data")
}
# Loads URl and checks if file exist called datasets.zip, if not it downloads
# the file and call it datasets.zip
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists(".\\data/datasets.zip")) {
      download.file(fileUrl, destfile=".\\data\\datasets.zip")
}
#Unzip the data
unzip(zipfile=".\\data\\datasets.zip")
# Reading in data tables
# Test Data
x_test <- read.table('.\\UCI HAR Dataset\\test\\X_test.txt')
y_test <- read.table('.\\UCI HAR Dataset\\test\\y_test.txt')
subject_test <- read.table('.\\UCI HAR Dataset\\test\\subject_test.txt')
# Train Data
x_train <- read.table('.\\UCI HAR Dataset\\train\\X_train.txt')
y_train <- read.table('.\\UCI HAR Dataset\\train\\y_train.txt')
subject_train <- read.table('.\\UCI HAR Dataset\\train\\subject_train.txt')
# Activity Labels
activity_labels <- read.table('.\\UCI HAR Dataset\\activity_labels.txt')
# Features Labels
features <- read.table('.\\UCI HAR Dataset\\features.txt')

#Assigning names to the data coloumns
colnames(x_test) <- features[ ,2]
colnames(x_train) <- features[ ,2]
colnames(y_test) <- "ActivityID"
colnames(y_train) <- "ActivityID"
colnames(subject_test) <- "SubjectID"
colnames(subject_train) <- "SubjectID"
colnames(activity_labels) <- c("ActivityID", "ActivityName")

# Question1
# Binding the Test Date - bind the coloumns. 
TestBind <- cbind(x_test, y_test, subject_test)
# Binding the train Date - bind the coloumns. 
TrainBind <- cbind(x_train, y_train, subject_train)
# Add TestBind and TrainBind together in one dataset, bind the rows
AllBind <- rbind(TestBind, TrainBind)

# Question2
# Get Logical Value for all columns with reuired names or part of it to use as 
# a filter in the next step
match_columns <- (grepl("ActivityID", colnames(AllBind))|
                  grepl("SubjectID", colnames(AllBind)) |
                  grepl("mean", colnames(AllBind))|
                  grepl("std", colnames(AllBind)))
# Create a new data.frame with only the column names == TRUE from above result
SelectedBind <- AllBind[ , match_columns == TRUE]

# Question 3
# Replace the integer value in $ActivitID with a description
SelectedBind$ActivityID[SelectedBind$ActivityID == 1] <- "Walking"
SelectedBind$ActivityID[SelectedBind$ActivityID == 2] <- "Walking_Upstairs"
SelectedBind$ActivityID[SelectedBind$ActivityID == 3] <- "Walking_Downstairs"
SelectedBind$ActivityID[SelectedBind$ActivityID == 4] <- "Sitting"
SelectedBind$ActivityID[SelectedBind$ActivityID == 5] <- "Standing"
SelectedBind$ActivityID[SelectedBind$ActivityID == 6] <- "Laying"

# Question 4
# Replace certain parts of the variable names with more descriptive wording
names(SelectedBind) <- gsub("^f", "frequency", names(SelectedBind))
names(SelectedBind) <- gsub("^t", "time", names(SelectedBind))
names(SelectedBind) <- gsub("Gyro", "Gyroscope", names(SelectedBind))
names(SelectedBind) <- gsub("Acc", "Accelerate", names(SelectedBind))
names(SelectedBind) <- gsub("Mag", "Magnitute", names(SelectedBind))
names(SelectedBind) <- gsub("BodyBody", "Body", names(SelectedBind))

# Question 5
# reshape the data for ActivityID and SubjectID
datamelt <- melt(SelectedBind, id=c("SubjectID", "ActivityID"))
# create a new data set with the mean value of all the variables
tidydataset <- dcast(datamelt, SubjectID + ActivityID ~variable, mean)

#Writes data for assignment submission
write.table(tidydataset, "tidydata.txt", row.names = FALSE)








