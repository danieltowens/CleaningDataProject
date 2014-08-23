CleaningDataProject
===================

Class project for Getting and Cleaning Data course

-------------------

The script first reads in the meta-data from activity_labels.txt and features.txt.
Activity labels will be used to give plain English names to each of the activities.
Feature names will be used to pick out the features we are interested in; namely, each feature that includes either "mean" or "std" in the name.
 
The script then reads in the test data from the /test/ directory:
subject_test.txt contains the subject number for each data point
y_test.txt contains the activity for each data point
X_test.txt contains the processed accelerometer data
 
These three sets are combined into a single data frame and only the relevant columns from the accelerometer data are kept.
 
The Activity column in the data frame is converted to a factor, with the level names taken from activity_labels.
 
This process is repeated for the training data, and then the training data and test data are combined into a single large data frame.
 
This large data frame is split into a list of smaller data frames, based on the subject and the activity.
 
On each smaller data frame the mean of each column is calculated; the resulting matrix is converted back to a data frame. This data frame includes one row for each (subject, activity) pair, and each column is the mean of one of the relevant features.
 
The resulting data frame is then written to file.
