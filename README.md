# DataSciC3W4Prog
Coursera Data Science - 3 - Getting and Cleaning Data
Week 4 Programming Assignment

# run_analysis.R

The script requires the packages `dplyr` and `tidyr`

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script assumes that data files are in **"./UCI HAR Dataset/"**

The data is read from the following files:

1. Test and train data sets:
  "test/X_test.txt",
  "train/X_train.txt"

2. Subject definitions: 
    "test/subject_test.txt",
    "train/subject_train.txt"

3. Activity labels data: 
    "train/y_train.txt",
    "test/y_test.txt"

4. Features and activity definitions: 
    "features.txt",
    "activity_labels.txt"

# CodeBook.md

Description of variables and submitted data set 