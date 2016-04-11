
30 subjects participate in the experiment wearing smartphones and take six activities
described in the Code Book.
 
The smartphone records data from accelerometer and gyroscope

In this project the raw data is transformed into the tidy data as described below.. 

Raw data for smartphone record is downloaded from the link refered to in the project. 

The following tables are read into R

X_train.txt' - Training data for 70% of the subjects.
y_train.txt' - The labels for activities in the training data.
subject_train.txt - Subject id for the training set. 

X_test.txt' - Test data for 30% of the subjects.
y_test.txt' - The labels for activities in the test data.
subject_train.txt - Subject id for the testing set.

features.txt - The file containing all the variables. 

activity_labels.txt - Provides activity labels. 

The tidy data is obtained by running the R script "run_analysis.R".
The script load the data into R, binds the training and test data, selects
only variables with mean and std, renames the fields to descriptive names.

