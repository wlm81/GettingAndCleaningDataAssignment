# Getting And Cleaning Data Assignment

## Script
The run_analysis.R script takes the extracted data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip file.

The file contains data from the accelerometers of the Samsung Galaxy S smartphone. The script assumes that the data was extracted from to a sub directory called "UCI HAR Dataset". 

The script will import the x, y, and subject data from test and training data sets and combine them to a single data set. All variables are renamed to a more descriptive header with mean and standard deviation data used to provide a new data set.

A tidy data set is then saved to the working directory with the average (mean) values of each activity and each subject.

## Changes to the script
Please edit the setwd to change the working directory to reflect the correct path so the run_analysis.R script with UCI HAR Dataset as a subdirectory with all the data from the downloaded zip file.
