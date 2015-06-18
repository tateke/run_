# run_analysis.R

Project info:
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analysis.R 
1. The data is downloaded and unzipped into the working directory.
2. Read the following files:
    - test folder
      - X_test.txt
      - y_test.txt
      - subject_test.txt
    - train folder
      - X_train.txt
      - y_train.txt
      - subject_test.txt
3. Once all the data has been read (using fread and read.table) it will be combined into merged data frame with the following: Subject, Activity and a feature vector
4. Apply names for all variables. Activity will be converted from a numeric description to the correct readable label.
5. Subset the remaining data to only include Subject, Activity and features that contain either standard deviations (std) or means.
6. Produce a final tidy data set of Subject, Activity and a mean of the means or a mean of the std
