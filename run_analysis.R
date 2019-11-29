#Step Zero. Downloading and unzipping file 
if(!file.exists("./data")){dir.create("./data")}
#Source of the file:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip dataSet
unzip(zipfile="./data/Dataset.zip",exdir="./data")


#*****Step 1.Merges the two data set, training and the test sets, to create single data set.

# 1.1 Reading files

#  Trainings tables:

x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Testing tables:
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Feature vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Activity labels:
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# 1.2 column names:

colnames(x_train) <- features[,2]
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

#1.3 Merging 

add_train <- cbind(y_train, subject_train, x_train)
add_test <- cbind(y_test, subject_test, x_test)
setone <- rbind(add_train, mrg_test)

#dim(setone)
#[1] 10299   563

#*****Step 2. Calculate only the measurements on the mean and standard deviation for each measurement.


#2.1 Reading column names:

colNames <- colnames(setone)

#2.2 generate vector for defining ID, mean and standard deviation:

mean_and_std <- (grepl("activityId" , colNames) | 
                   grepl("subjectId" , colNames) | 
                   grepl("mean.." , colNames) | 
                   grepl("std.." , colNames) 
)

#2.3 Making nessesary subset from setone:

setForMeanAndStd <- setone[ , mean_and_std == TRUE]

#*****Step 3. adjust descriptive activity names to name the activities


setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                              by='activityId', 
                              all.x=TRUE)

#***** Step 4. Added the descriptive variable names in part of the previous sections

## this is done before

#*****Step 5.  Average of each variable for each activity and each subject to arrange tidy data set

#5.1 Making a tidy data set

TidyData <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
TidyData <- TidyData[order(TidyData$subjectId, TidyData$activityId),]

#5.2 Writing tidy data set in txt file

write.table(TidyData, "FinalData.txt", row.name=FALSE)

