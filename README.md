# Getting-and-cleaning-data
Final assignment, course getting and cleaning data

## In order to creat tidy_dataset following actions were taken

1. Merges the training and the test sets to create one data set.
- load certain libraries
- load train text files (subject_train, x_train, y_train)
- load test text files( subject_test, x_test, y_test)
- load features.txt file, which contains names of variables
- assign column names for each of loaded files
- create two datasets combining train and test data
- merge train and test datasets

2. Extracts only the measurements on the mean and standard deviation for each measurement.
- create indexes vector of variable names containing words "mean" or "std"
- add indexes indicating position of "volunteerId", "activity" variables
- create a dataset containing appropriate variables
- create indexes vector of variable names containing the word "meanFreq"
- filtering out variable names 

3. Uses descriptive activity names to name the activities in the data set.
- assign descriptive activities names to each activity type

4. Appropriately label the data set with descriptive variable names.
- create readable and meaningful names for variables by deleting punctuation 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- group measurements by "volunteerId","activity" variables
- averaging each measurement by "volunteerId","activity"
