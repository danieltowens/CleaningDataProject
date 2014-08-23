CleaningDataProject
===================

Class project for Getting and Cleaning Data course

-------------------

activity.labels: data frame tying the integer representation of the activity to a plain English name
feature.names: plain English names of each of the features
 
subject.test: data frame containing subject number for each data point in test set
activity.test: data frame containing activity number for each data point in test set
test.data: data frame containing subject, activity, and each of the features for the test set
 
subject.train: data frame containing subject number for each data point in training set
activity.train: data frame containing activity number for each data point in training set
train.data: data frame containing subject, activity, and each of the features for the training set
all.data: combination of test.data and train.data
split.data: all.data, split into a list of data frames by subject and activity
all.means: data frame containing mean of each feature by subject and activity