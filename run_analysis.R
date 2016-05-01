# Getting and cleaning data assignment 
# Data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# It is assumed that the data file has been downloaded and extracted to the location of the working directory
# The extracted data directory being named UCI HAR Dataset

# Clear workspace
rm(list=ls())

# Set working directory
setwd("D:/Rwork/Cleaning data/Week4")

# Load training and test data to variables
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt",header=FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt",header=FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE)
activity <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE)

# Assigin column names to the imported data
colnames(activity) = c("Activity_id","Activity_type");
colnames(subject_test) = "Subject_id";
colnames(x_test) = features[,2]; 
colnames(y_test) = "Activity_id";
colnames(activity) = c("Activity_id","Activity_type");
colnames(subject_train) = "Subject_id";
colnames(x_train) = features[,2]; 
colnames(y_train) = "Activity_id";

# Create merged data table from imported data test nd training data
test_data <- cbind(subject_test,y_test,x_test)
training_data <- cbind(subject_train,y_train,x_train)
merged_data <- rbind(test_data,training_data)

# Create data set with only the mean and standard deviation measurements (where mean() and std() and not for the separate axis)
data_extract = merged_data[grepl("_id",colnames(merged_data)) | grepl("-mean..",colnames(merged_data)) & !grepl("-meanFreq..",colnames(merged_data)) & !grepl("-mean..-",colnames(merged_data)) | grepl("-std..",colnames(merged_data)) & !grepl("-std..-",colnames(merged_data))];

# update activity with descriptive names instead of activity number
 data_extract <- merge(data_extract,activity,by="Activity_id",all.x=TRUE);


# Get column names into a variable  then rename columns names with descriptive names and put the new names back as column names 
column_names <- names(data_extract)
column_names <- gsub("^(t)","Time",column_names)
column_names <- gsub("^(f)","Frequency",column_names)
column_names <- gsub("-mean","Mean",column_names)
column_names <- gsub("-std","StandardDeviation",column_names)
column_names <- gsub("Mag","Magnitude",column_names)
column_names <- gsub("Acc","Acceleration",column_names)
column_names <- gsub("BodyBody","Body",column_names)
colnames(data_extract) = column_names;

# Create new data set for tidy data
data_extract$Subject_id <- as.factor(data_extract$Subject_id)
data_extract <- data.table(data_extract)
tidy_data <- aggregate(. ~Subject_id + Activity_id, data_extract, mean)
tidy_data <- tidy_data[order(tidy_data$Subject_id,tidy_data$Activity_id),]
write.table(tidy_data, file = "TidyData.txt", row.names = FALSE)




