#This CodeBook explains the data found in the file tidydata.txt 

### Identifiers
* SubjectID  - Left it from 1 to 30
* ActivityID - Replaced the integer values with descriptions from the activity_lables file
       * 1 WALKING
       * 2 WALKING_UPSTAIRS
       * 3 WALKING_DOWNSTAIRS
       * 4 SITTING
       * 5 STANDING
       * 6 LAYING
       
### Variables
All variabels are the mean values from the orginal data
The variables were made easier to read by replacing some of the orginal terms.
f -> frequency
t -> time
Gyro -> Gyroscope
Acc -> Accelerate
Mag -> Magnitute
BodyBody -> Body

  * "timeBodyAccelerate-mean()-X"
  * "timeBodyAccelerate-mean()-Y"
  * "timeBodyAccelerate-mean()-Z"
  * "timeBodyAccelerate-std()-X"
  * "timeBodyAccelerate-std()-Y"
  * "timeBodyAccelerate-std()-Z"
  * "timeGravityAccelerate-mean()-X"
  * "timeGravityAccelerate-mean()-Y"
  * "timeGravityAccelerate-mean()-Z"
  * "timeGravityAccelerate-std()-X"
  * "timeGravityAccelerate-std()-Y"
  * "timeGravityAccelerate-std()-Z"
  * "timeBodyAccelerateJerk-mean()-X"
  * "timeBodyAccelerateJerk-mean()-Y"
  * "timeBodyAccelerateJerk-mean()-Z"
  * "timeBodyAccelerateJerk-std()-X"
  * "timeBodyAccelerateJerk-std()-Y" 
  * "timeBodyAccelerateJerk-std()-Z"
  * "timeBodyGyroscope-mean()-X"
  * "timeBodyGyroscope-mean()-Y"
  * "timeBodyGyroscope-mean()-Z"
  * "timeBodyGyroscope-std()-X"
  * "timeBodyGyroscope-std()-Y"
  * "timeBodyGyroscope-std()-Z"
  * "timeBodyGyroscopeJerk-mean()-X"
  * "timeBodyGyroscopeJerk-mean()-Y"
  * "timeBodyGyroscopeJerk-mean()-Z"
  * "timeBodyGyroscopeJerk-std()-X"
  * "timeBodyGyroscopeJerk-std()-Y"
  * "timeBodyGyroscopeJerk-std()-Z"
  * "timeBodyAccelerateMagnitute-mean()"
  * "timeBodyAccelerateMagnitute-std()"
  * "timeGravityAccelerateMagnitute-mean()"
  * "timeGravityAccelerateMagnitute-std()"
  * "timeBodyAccelerateJerkMagnitute-mean()"
  * "timeBodyAccelerateJerkMagnitute-std()"
  * "timeBodyGyroscopeMagnitute-mean()"
  * "timeBodyGyroscopeMagnitute-std()"
  * "timeBodyGyroscopeJerkMagnitute-mean()"
  * "timeBodyGyroscopeJerkMagnitute-std()"
  * "frequencyBodyAccelerate-mean()-X"
  * "frequencyBodyAccelerate-mean()-Y"
  * "frequencyBodyAccelerate-mean()-Z"
  * "frequencyBodyAccelerate-std()-X"
  * "frequencyBodyAccelerate-std()-Y"
  * "frequencyBodyAccelerate-std()-Z"
  * "frequencyBodyAccelerate-meanFreq()-X"
  * "frequencyBodyAccelerate-meanFreq()-Y"
  * "frequencyBodyAccelerate-meanFreq()-Z"
  * "frequencyBodyAccelerateJerk-mean()-X"
  * "frequencyBodyAccelerateJerk-mean()-Y"
  * "frequencyBodyAccelerateJerk-mean()-Z"
  * "frequencyBodyAccelerateJerk-std()-X"
  * "frequencyBodyAccelerateJerk-std()-Y"
  * "frequencyBodyAccelerateJerk-std()-Z"
  * "frequencyBodyAccelerateJerk-meanFreq()-X"
  * "frequencyBodyAccelerateJerk-meanFreq()-Y"
  * "frequencyBodyAccelerateJerk-meanFreq()-Z"
  * "frequencyBodyGyroscope-mean()-X"
  * "frequencyBodyGyroscope-mean()-Y"
  * "frequencyBodyGyroscope-mean()-Z"
  * "frequencyBodyGyroscope-std()-X"
  * "frequencyBodyGyroscope-std()-Y"
  * "frequencyBodyGyroscope-std()-Z"
  * "frequencyBodyGyroscope-meanFreq()-X"
  * "frequencyBodyGyroscope-meanFreq()-Y"
  * "frequencyBodyGyroscope-meanFreq()-Z"
  * "frequencyBodyAccelerateMagnitute-mean()"
  * "frequencyBodyAccelerateMagnitute-std()"
  * "frequencyBodyAccelerateMagnitute-meanFreq()"
  * "frequencyBodyAccelerateJerkMagnitute-mean()"
  * "frequencyBodyAccelerateJerkMagnitute-std()"
  * "frequencyBodyAccelerateJerkMagnitute-meanFreq()"
  * "frequencyBodyGyroscopeMagnitute-mean()"
  * "frequencyBodyGyroscopeMagnitute-std()"
  * "frequencyBodyGyroscopeMagnitute-meanFreq()"
  * "frequencyBodyGyroscopeJerkMagnitute-mean()"
  * "frequencyBodyGyroscopeJerkMagnitute-std()"
  * "frequencyBodyGyroscopeJerkMagnitute-meanFreq()"  
