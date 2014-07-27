CourseraProjectsGACD
====================

Coursera Projet Getting and Cleaning Data

One of the most exciting areas in all of data science right now is wearable computing 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

We are going to 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

1. Merges the training and the test sets to create one data set.
In the train / Test repositories, there are 3 files(x,y,subject) that we are going to merge
- reading the files in train reposository
- reading the files in test repository
- merge these files using rbind (row bind)

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
We will read the features.txt 
and then create a vector with all the the measures with the word mean or std
we can now filter the 561 measures to only 66 measures

3.Uses descriptive activity names to name the activities in the data set
we are renaming the activities using the factor and the list of activities given by the activity_labels.txt 

4. Appropriately labels the data set with descriptive variable names. 
we are renaming the labels using names() function

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
we calculate this tidy data set : average of each variable grouping by subject and activities
and then export this data to a file

 
 