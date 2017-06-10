README that explains the analysis files of Week 4 cleaning data course assignment
==================================================================

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Dataset.zip includes the following files:

- 'UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt'
- 'UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt'
- 'UCI HAR Dataset/test/subject_test.txt'
- 'UCI HAR Dataset/test/X_test.txt'
- 'UCI HAR Dataset/test/y_test.txt'
- 'UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt'
- 'UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt'
- 'UCI HAR Dataset/train/subject_train.txt'
- 'UCI HAR Dataset/train/X_train.txt'
- 'UCI HAR Dataset/train/y_train.txt'
- 'UCI HAR Dataset/activity_labels.txt'
- 'UCI HAR Dataset/features.txt'
- 'UCI HAR Dataset/features_info.txt'
- 'UCI HAR Dataset/README.txt'

## Files data read are:

- 'UCI HAR Dataset/test/subject_test.txt'
- 'UCI HAR Dataset/test/X_test.txt'
- 'UCI HAR Dataset/test/y_test.txt'
- 'UCI HAR Dataset/train/subject_train.txt'
- 'UCI HAR Dataset/train/X_train.txt'
- 'UCI HAR Dataset/train/y_train.txt'
- 'UCI HAR Dataset/activity_labels.txt'
- 'UCI HAR Dataset/features.txt'

## Notes: 

###1. Merges the training and the test sets to create one data set.
Files considered necessary to create on data set are:

- 'UCI HAR Dataset/test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'UCI HAR Dataset/test/X_test.txt': Test set.
- 'UCI HAR Dataset/test/y_test.txt': Test labels.
- 'UCI HAR Dataset/train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'UCI HAR Dataset/train/X_train.txt': Training set.
- 'UCI HAR Dataset/train/y_train.txt': Training labels.
- 'UCI HAR Dataset/features.txt': List of all features.


###2. Extracts only the measurements on the mean and standard deviation for each measurement.
The set of variables estimated for this point are: 

- mean(): Mean value
- std(): Standard deviation


###3. Uses descriptive activity names to name the activities in the data set
'UCI HAR Dataset/activity_labels.txt' contains descriptive activity names that are:

- 1 WALKING
- 2 WALKING_UPSTAIRS
- 3 WALKING_DOWNSTAIRS
- 4 SITTING
- 5 STANDING
- 6 LAYING

