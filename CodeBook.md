Measurements in TidyData.txt

Variables are:
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

colnames(activity) = c("Activity_id","Activity_type");
colnames(subject_test) = "Subject_id";
colnames(x_test) = features[,2]; 
colnames(y_test) = "Activity_id";
colnames(activity) = c("Activity_id","Activity_type");
colnames(subject_train) = "Subject_id";
colnames(x_train) = features[,2]; 
colnames(y_train) = "Activity_id";

c <- gsub("-mean","Mean",c)
c <- gsub("-std","StandardDeviation",c)
c <- gsub("Mag","Magnitude",c)
c <- gsub("Acc","Acceleration",c)