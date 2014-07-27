

## 1.Merges the training and the test sets to create one data set.
## PS sorry for my english 

## 1.1 Reading train files for subjets, measurements and activities
subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt", quote="\"")
X_train <- read.table("~/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt", quote="\"")

## 1.2 Reading test files for subjets, measurements and activities
subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt", quote="\"")
X_test <- read.table("~/UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt", quote="\"")

## 1.3 Merging train and test
dfsubject <- rbind(subject_train,subject_test)
dfx <- rbind(X_train,X_test)
dfy <- rbind(y_train, y_test)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement
## Reading features.txt to filter only measures mean or std by creating a vector fm using regular expression
features <- read.table("~/UCI HAR Dataset/features.txt", quote="\"")
fm <- grep(pattern="mean\\(|std\\(",features$V2)
## subset the merged measurements df with these 66 cases
dfxfilter <- dfx[,fm]

## 3. Uses descriptive activity names to name the activities in the data set
dfy$V1 <- factor(dfy$V1,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

## 4. Appropriately labels the data set with descriptive variable names.
names(dfsubject) <- "subject"
names(dfxfilter) <- features$V2[fm]
names(dfy) <- "activities"

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
## binding together subject, activities and measurement.
dfall <- cbind(dfsubject,dfy,dfxfilter)
## caculate the mean by subject and activities
aggdata <- aggregate(. ~ subject + activities, dfall, mean, na.rm = TRUE)
## write the result in a table for submission
write.table(aggdata, file = "tidy.txt", sep = ",")


