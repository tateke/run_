## Load all necessary libraries
library(dplyr)
library(data.table)

## 1. Merges the training and the test sets to create one data set.

    # Download the files and unzip them
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile=".\\UCIData.zip")
    unzip(zipfile = ".\\UCIData.zip")

    #Read the Test dataset
    xtest <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
    ytest <- fread(".\\UCI HAR Dataset\\test\\y_test.txt")
    subjectTest <- fread(".\\UCI HAR Dataset\\test\\subject_test.txt")
    
    #Combine the test dataset into a single variable
    testData <- cbind(ytest,subjectTest,xtest)

    #Cleanup unused df
    rm(xtest,ytest,subjectTest)
    
    #Read the Train dataset
    xtrain <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
    ytrain <- fread(".\\UCI HAR Dataset\\train\\y_train.txt")
    subjectTrain <- fread(".\\UCI HAR Dataset\\train\\subject_train.txt")

    #Combine the train dataset into a single variable
    trainData <- cbind(ytrain,subjectTrain,xtrain)

    #cleanup unused df
    rm(xtrain,ytrain,subjectTrain)

    #Read the features
    featuresData <-fread(".\\UCI HAR Dataset\\features.txt")
    features <- featuresData[[2]]
    
    #Merge the datasets
    mergeData <- rbind(testData,trainData)

    rm(testData,trainData)

## 4. Appropriately labels the data set with descriptive variable names. 
    setnames(mergeData, c("Subjects","Activity",features))
    
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    meanStd <- grep("Activity|Subjects|[Mm]ean|[Ss]td", names(mergeData))

    filterData <- mergeData[,meanStd, with = FALSE]

## 3. Uses descriptive activity names to name the activities in the data set
    activities <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
                    "SITTING", "STANDING", "LAYING")
    
    filterData$Activity <- factor(filterData$Activity, levels = c(1:6), labels = activities)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    # Summarize the data by Subjects and Activity and then order the final result
    tidyData <- 
        filterData %>%
        group_by(Subjects,Activity) %>%
        summarise_each(funs(mean)) %>%
        arrange(Subjects,Activity)

    write.table(tidyData, file = ".\\TidyData.txt", row.names=F)
