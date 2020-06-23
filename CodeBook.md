# *Johns Hopkins University - Data Science Specialization*
## Course 3 - Getting and Cleaning Data
## Week 4 : Peer-Graded Assignment
***
### Modifications to the original Data
***
* Merging the training and the test sets to create one data set.
* Extracting only the measurements on the mean and standard deviation for each measurement.
* Useing descriptive activity names to name the activities in the data set
* Appropriately labeling the data set with descriptive variable names.
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject.
* The variables are changed from ...() to ...(the parenthesis is removed)

### Identififiers

* Subject: the ID of the Subject
* Activity: the Name of the Activity performed by the subject when measurements were taken

***

### Measurements
The variables remaining are just the calculatd means and standard deviations of these sets of data

#### Mean of Body Time Acceleration in XYZ dimensions

* `tBodyAcc-mean-X`
* `tBodyAcc-mean-Y`
* `tBodyAcc-mean-Z`

#### Standard Deviation of Body Time Acceleration in XYZ dimensions

* `tBodyAcc-std-X`
* `tBodyAcc-std-Y`
* `tBodyAcc-std-Z`

#### Mean of Gravity Time Acceleration in XYZ dimensions

* `tGravityAcc-mean-X`
* `tGravityAcc-mean-Y`
* `tGravityAcc-mean-Z`

#### Standard Deviation of Gravity Time Acceleration in XYZ dimensions

* `tGravityAcc-std-X`
* `tGravityAcc-std-Y`
* `tGravityAcc-std-Z`

#### Mean of Jerk Time Acceleration in XYZ dimensions

* `tBodyAccJerk-mean-X`
* `tBodyAccJerk-mean-Y`
* `tBodyAccJerk-mean-Z`

#### Standard Deviation of Jerk Time Acceleration in XYZ dimensions

* `tBodyAccJerk-std-X`
* `tBodyAccJerk-std-Y`
* `tBodyAccJerk-std-Z`

#### Mean of BodyGyro Time Acceleration in XYZ dimensions

* `tBodyGyro-mean-X`
* `tBodyGyro-mean-Y`
* `tBodyGyro-mean-Z`

#### Standard Deviation of BodyGyro Time Acceleration in XYZ dimensions

* `tBodyGyro-std-X`
* `tBodyGyro-std-Y`
* `tBodyGyro-std-Z`

#### Mean of BodyGyroJerk Time Acceleration in XYZ dimensions

* `tBodyGyroJerk-mean-X`
* `tBodyGyroJerk-mean-Y`
* `tBodyGyroJerk-mean-Z`

#### Standard Deviation of BodyGyroJerk Time Acceleration in XYZ dimensions

* `tBodyGyroJerk-std-X`
* `tBodyGyroJerk-std-Y`
* `tBodyGyroJerk-std-Z`

#### Magnitude Measurements(no dimensions, scalar quantities) for Time

* `tBodyAccMag-mean`
* `tBodyAccMag-std`
* `tGravityAccMag-mean`
* `tGravityAccMag-std`
* `tBodyAccJerkMag-mean`
* `tBodyAccJerkMag-std`
* `tBodyGyroMag-mean`
* `tBodyGyroMag-std`
* `tBodyGyroJerkMag-mean`
* `tBodyGyroJerkMag-std`

#### Mean of BodyAcc Frequency Acceleration in XYZ dimensions

* `fBodyAcc-mean-X`
* `fBodyAcc-mean-Y`
* `fBodyAcc-mean-Z`

#### Standard Deviation of BodyAcc Frequency Acceleration in XYZ dimensions

* `fBodyAcc-std-X`
* `fBodyAcc-std-Y`
* `fBodyAcc-std-Z`

#### Mean of BodyAccJerk Frequency Acceleration in XYZ dimensions

* `fBodyAccJerk-mean-X`
* `fBodyAccJerk-mean-Y`
* `fBodyAccJerkc-mean-Z`

#### Standard Deviation of BodyAccJerk Frequency Acceleration in XYZ dimensions

* `fBodyAccJerk-std-X`
* `fBodyAccJerk-std-Y`
* `fBodyAccJerk-std-Z`

#### Mean of BodyGyro Frequency Acceleration in XYZ dimensions

* `fBodyGyro-mean-X`
* `fBodyGyro-mean-Y`
* `fBodyGyro-mean-Z`

#### Standard Deviation of BodyGyro Frequency Acceleration in XYZ dimensions

* `fBodyGyro-std-X`
* `fBodyGyro-std-Y`
* `fBodyGyro-std-Z`

#### Magnitude Measurements(no dimensions, scalar quantities) for Frequency

* `fBodyAccMag-mean`
* `fBodyAccMag-std`
* `fBodyBodyAccJerkMag-mean`
* `fBodyBodyAccJerkMag-std`
* `fBodyBodyGyroMag-mean`
* `fBodyBodyGyroMag-std`
* `fBodyBodyGyroJerkMag-mean`
* `fBodyBodyGyroJerkMag-std`


***

### Activity Labels

(1) WALKING: subject was walking during the test
(2) WALKING_UPSTAIRS: subject was walking up a staircase during the test
(3) WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
(4) SITTING: subject was sitting during the test
(5) STANDING: subject was standing during the test
(6) LAYING: subject was laying down during the test

***
