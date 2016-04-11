Code Book

The variables of the tidySet are described in the downloaded "feature_info.txt”.

The data comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
Prefix 't' to denotes time) were captured at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ)

Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For example, fields in the original set: 
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation



Fields in the tidy set:

subject - the number of the subject 1-30
activity - Laying,Sitting, Standing,Walking, Walking upstairs, Walking downstairs

The rest of the fields are deciphered as follows:
X, Y, Z in the name of the field - X, Y, Z directions
Gyro, ACC - accelerometer and gyroscope
Fields containing Mag - Euclidean norm was used.
Fields containing f - Fast Furier Transform was used
Fields containing body and gravity - body or gravity acceleration signals  
Fields containing mean and std - mean and standard deviation
Fields containing jerk - jerk signal
Fields containing tacc and tgyro - signals were captured at the constant 50 Hz rate, then they
were filtered with a median filter and a 3d order 20 Hz Butterworth filter used to low noise. 


