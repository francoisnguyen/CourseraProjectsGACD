CourseraProjectsGACD
====================

Coursera Projet Getting and Cleaning Data

CodeBook : listing of all new variables step by step

aggdata : calcule the average mean of dfall grouping by subject and activities 

dfall : creating a data frame with dfxsubject + dfx + dfy using cbind
dfxfilter : dfx filtered with only the 66 measures for mean and std 
dfsubject : all subjects by merging subject_train and subject_test using rbind
dfx : all measures by merging X_train and X_test using rbind
dfy : all activities by merging y_train and y_test using rbind

features : <- dataframe reading the file UCI HAR Dataset/features.txt"
fm : a vector to filter all the measures with the words std or mean in features

subject_train : dataframe reading the file UCI HAR Dataset/train/subject_train.txt
subject_test : dataframe reading the file UCI HAR Dataset/test/subject_test.txt
X_train : dataframe reading the file UCI HAR Dataset/train/X_train.txt
X_test : dataframe reading the file UCI HAR Dataset/test/X_test.txt"
y_test : dataframe reading the file /UCI HAR Dataset/test/y_test.txt"
y_train : dataframe reading the file UCI HAR Dataset/train/y_train.txt"








 