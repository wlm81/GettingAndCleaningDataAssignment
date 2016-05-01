# Codebook for the  run_analysis.R script

##Measurement variables in TidyData.txt
"Subject_id"
"Activity_id"
"TimeBodyAccelerationMagnitudeMean()"
"TimeBodyAccelerationMagnitudeStandardDeviation()"
"TimeGravityAccelerationMagnitudeMean()"
"TimeGravityAccelerationMagnitudeStandardDeviation()"
"TimeBodyAccelerationJerkMagnitudeMean()"
"TimeBodyAccelerationJerkMagnitudeStandardDeviation()"
"TimeBodyGyroMagnitudeMean()"
"TimeBodyGyroMagnitudeStandardDeviation()"
"TimeBodyGyroJerkMagnitudeMean()"
"TimeBodyGyroJerkMagnitudeStandardDeviation()"
"FrequencyBodyAccelerationMagnitudeMean()"
"FrequencyBodyAccelerationMagnitudeStandardDeviation()"
"FrequencyBodyAccelerationJerkMagnitudeMean()"
"FrequencyBodyAccelerationJerkMagnitudeStandardDeviation()"
"FrequencyBodyGyroMagnitudeMean()"
"FrequencyBodyGyroMagnitudeStandardDeviation()"
"FrequencyBodyGyroJerkMagnitudeMean()"
"FrequencyBodyGyroJerkMagnitudeStandardDeviation()"
"Activity_type"

##Activity ID and activity types
ID Type
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

##Description of Script variables
subject_test - Imported test data for subject who carried out the experiment
x_test - Imported test data for accelerometers
y_test - Imported test data for activity
subject_train - Imported training data for subject who carried out the experiment
x_train - Imported training data for accelerometers
y_train - Imported training data for activity
features - Features that were measured
activity - Activity 1 to 6 (from acitivity list above)
test_data - Imported test data set
training_data - Imported training data set
merged_data - Combined test and training data set
data_extract - Reduced data set with only mean and standard deviation data
column_names - Temporary column names variable
tidy_data  - Tidy data data set with mean values for each activity and subject.
