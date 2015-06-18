# Code Book

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Variables
  Subject: 
    The group of volunteers
    Values:
      1:30, int
  Activity: 
    The list of activities that were performed
      Values:
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
  Features:
    The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
      Values:
      "tBodyAccMeanX"                          
"tBodyAccMeanZ"                          
"tBodyAccStdY"                           
"tGravityAccMeanX"                       
"tGravityAccMeanZ"                       
"tGravityAccStdY"                        
"tBodyAccJerkMeanX"                      
"tBodyAccJerkMeanZ"                      
"tBodyAccJerkStdY"                       
"tBodyGyroMeanX"                         
"tBodyGyroMeanZ"                         
"tBodyGyroStdY"                          
"tBodyGyroJerkMeanX"                     
"tBodyGyroJerkMeanZ"                     
"tBodyGyroJerkStdY"                      
"tBodyAccMagMean"                        
"tGravityAccMagMean"                     
"tBodyAccJerkMagMean"                    
"tBodyGyroMagMean"                       
"tBodyGyroJerkMagMean"                   
"fBodyAccMeanX"                          
"fBodyAccMeanZ"                          
"fBodyAccStdY"                           
"fBodyAccMeanFreqX"                      
"fBodyAccMeanFreqZ"                      
"fBodyAccJerkMeanY"                      
"fBodyAccJerkStdX"                       
"fBodyAccJerkStdZ"                       
"fBodyAccJerkMeanFreqY"                  
"fBodyGyroMeanX"                         
"fBodyGyroMeanZ"                         
"fBodyGyroStdY"                          
"fBodyGyroMeanFreqX"                     
"fBodyGyroMeanFreqZ"                     
"fBodyAccMagStd"                         
"fBodyBodyAccJerkMagMean"                
"fBodyBodyAccJerkMagMeanFreq"            
"fBodyBodyGyroMagStd"                    
"fBodyBodyGyroJerkMagMean"               
"fBodyBodyGyroJerkMagMeanFreq"           
"angletBodyAccJerkMean,gravityMean"      
"angletBodyGyroJerkMean,gravityMean"     
"angleY,gravityMean"                 
"tBodyAccMeanY"                 
"tBodyAccStdX"                  
"tBodyAccStdZ"                  
"tGravityAccMeanY"              
"tGravityAccStdX"               
"tGravityAccStdZ"               
"tBodyAccJerkMeanY"             
"tBodyAccJerkStdX"              
"tBodyAccJerkStdZ"              
"tBodyGyroMeanY"                
"tBodyGyroStdX"                 
"tBodyGyroStdZ"                 
"tBodyGyroJerkMeanY"            
"tBodyGyroJerkStdX"             
"tBodyGyroJerkStdZ"             
"tBodyAccMagStd"                
"tGravityAccMagStd"             
"tBodyAccJerkMagStd"            
"tBodyGyroMagStd"               
"tBodyGyroJerkMagStd"           
"fBodyAccMeanY"                 
"fBodyAccStdX"                  
"fBodyAccStdZ"                  
"fBodyAccMeanFreqY"             
"fBodyAccJerkMeanX"             
"fBodyAccJerkMeanZ"             
"fBodyAccJerkStdY"              
"fBodyAccJerkMeanFreqX"         
"fBodyAccJerkMeanFreqZ"         
"fBodyGyroMeanY"                
"fBodyGyroStdX"                 
"fBodyGyroStdZ"                 
"fBodyGyroMeanFreqY"            
"fBodyAccMagMean"               
"fBodyAccMagMeanFreq"           
"fBodyBodyAccJerkMagStd"        
"fBodyBodyGyroMagMean"          
"fBodyBodyGyroMagMeanFreq"      
"fBodyBodyGyroJerkMagStd"       
"angletBodyAccMean,gravity"     
"angletBodyGyroMean,gravityMean"
"angleX,gravityMean"            
"angleZ,gravityMean"
