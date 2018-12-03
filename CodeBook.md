# CodeBook

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## The data source

* Original Data before any manipulations were appied: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Variable Names

Data Set consists of 81 variable and 180 observations. Each observation represents the average of each measurement grouped by each type of activity for each volunteer (total number - 30). The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Therefore, the variables names in data set are as follows:

An identifier of the subject who carried out the experiment.
- volunteerId 

Type of activity.
- activity 

The Mean value of duration of body acceleration signals measured by accelerometer for each direction X, Y, Z. 
- tBodyAccMeanX 
- tBodyAccMeanY
- tBodyAccMeanZ

The Standard deviation value of duration of body acceleration signals measured by accelerometer for each direction X, Y, Z. 
- tBodyAccStdX
- tBodyAccStdY
- tBodyAccStdZ

The mean value of duration of gravity acceleration signals measured by accelerometer for each direction X, Y, Z. T: 
- tGravityAccMeanX
- tGravityAccMeanY
- tGravityAccMeanZ

The Standard deviation value of duration of gravity acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tGravityAccStdX
- tGravityAccStdY
- tGravityAccStdZ

The Mean value of duration of body linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tBodyAccJerkMeanX
- tBodyAccJerkMeanY
- tBodyAccJerkMeanZ

The Standard deviation value of duration of linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tBodyAccJerkStdX
- tBodyAccJerkStdY
- tBodyAccJerkStdZ

The Mean value of duration of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroMeanX       
- tBodyGyroMeanY
- tBodyGyroMeanZ

The Standard deviation value of duration of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroStdX        
- tBodyGyroStdY
- tBodyGyroStdZ

The Mean value of duration of angular velocity signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroJerkMeanX
- tBodyGyroJerkMeanY
- tBodyGyroJerkMeanZ

The Standard deviation value of duration of angular velocity signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroJerkStdX
- tBodyGyroJerkStdY
- tBodyGyroJerkStdZ

The Mean magnitude value of duration of body acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tBodyAccMagMean

The Standard deviation magnitude value of duration of body acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tBodyAccMagStd

The Mean magnitude value of duration of gravity acceleration signals measured by accelerometer for each direction X, Y, Z:
- tGravityAccMagMean

The Standard deviation magnitude value of duration of gravity acceleration signals measured by accelerometer for each direction X, Y, Z:
- tGravityAccMagStd

The Mean magnitude value of duration of body linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tBodyAccJerkMagMean

The Standard deviation magnitude value of duration of linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- tBodyAccJerkMagStd

The Mean magnitude value of duration of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroMagMean

The Standard deviation value of duration of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroMagStd

The Mean magnitude value of duration of angular velocity signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroJerkMagMean

The Standard deviation magnitude value of duration of angular velocity signals measured by gyroscope for each direction X, Y, Z: 
- tBodyGyroJerkMagStd

The Mean value of frequency of body acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccMeanX
- fBodyAccMeanY
- fBodyAccMeanZ

The Standard deviation value of frequency of body acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccStdX
- fBodyAccStdY
- fBodyAccStdZ

The Mean value of frequency of body linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccJerkMeanX
- fBodyAccJerkMeanY
- fBodyAccJerkMeanZ

The Standard deviation value of frequency of linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccJerkStdX
- fBodyAccJerkStdY
- fBodyAccJerkStdZ

The Mean value of frequency of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- fBodyGyroMeanX
- fBodyGyroMeanY
- fBodyGyroMeanZ

The Standard deviation value of duration of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- fBodyGyroStdX
- fBodyGyroStdY
- fBodyGyroStdZ

The Mean magnitude value of frequence of body acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccMagMean

The Standard deviation magnitude value of frequence of body acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccMagStd

The Mean magnitude value of frequency of body linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccJerkMagMean

The Standard deviation magnitude value of frequency of body linear acceleration signals measured by accelerometer for each direction X, Y, Z: 
- fBodyAccJerkMagStd

The Mean magnitude value of frequency of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- fBodyGyroMagMean

The Standard deviation magnitude value of duration of body acceleration signals measured by gyroscope for each direction X, Y, Z: 
- fBodyGyroMagStd

The Mean magnitude value of frequency of angular velocity signals measured by gyroscope for each direction X, Y, Z: 
- fBodyGyroJerkMagMean

The Standard deviation magnitude value of frequency of angular velocity signals measured by gyroscope for each direction X, Y, Z: 
- fBodyGyroJerkMagStd

           

