# loading libraries
library(base)
library(dplyr)
library(reshape2)
library(plyr)

# load train text files
subject_train <- read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/train/subject_train.txt")
x_train <-  read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/train/y_train.txt")

# load test text files
subject_test <- read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/test/subject_test.txt")
x_test <-  read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/test/y_test.txt")

# load features.txt file, which contains names of variables  
features <- read.table("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data/UCI HAR Dataset/features.txt")
# assign column names for datasets 
colnames(subject_train) <- c("volunteerId")
colnames(subject_test) <- c("volunteerId")
colnames(y_train) <- c("activity")
colnames(y_test) <- c("activity")
colnames(x_train) <- features$V2
colnames(x_test) <- features$V2

# creat two datasets combining train and test data
train_dataset <- cbind(subject_train, y_train, x_train)
test_dataset <- cbind(subject_test, y_test, x_test)

# merge train and test datasets
final_dataset <- rbind(train_dataset, test_dataset)

# extract mean and standard deviation measurements
mean_sd_index <- grep("mean|std", names(final_dataset))
mean_sd_index <- append(mean_sd_index, 1:2, 0)
dataset <- final_dataset[,mean_sd_index]

# assign descriptive activities names to each activity type
dataset$activity <- mapvalues(dataset$activity, from = c(1:6), to = c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying"))

# assign decriptive names to each variable
names(dataset) <- gsub("\\()", "", names(dataset))
names(dataset) <- gsub("BodyBody", "", names(dataset))
names(dataset) <- gsub("mean", "Mean", names(dataset))
names(dataset) <- gsub("std", "Std", names(dataset))
names(dataset) <- gsub("\\-", "", names(dataset))

# creat new dataset with the average of each variable for each activity and each volunteer
dataset_melt <- melt(dataset, id=c("volunteerId","activity"))
tidy_dataset <- dcast(dataset_melt, volunteerId + activity ~ variable, mean)

# save new dataset into text file
setwd("/Users/tiurkiv/Documents/R_Studing/Getting and cleaning Data")
write.table(tidy_dataset,file="tidydataset.txt", row.name=FALSE)
