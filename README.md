Background Peer graded Assignment Getting and Cleaning Data Course Project Oct-2016
##Getting and Cleaning Data - peer assessment project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a final tidy data set with the average of each variable for each activity and each subject.

Info about the R script
#In the run_analysis.R script, What followed in each step 

This file 'run_analysis.R' contains all the code to run the analyses described in the five steps. File is ready to run in rstudio
As per the requirement of assigned task of course work. This file "run_analysis.R" run five following steps



Merging the training and the test sets to create one data set.

1.1 Reading files-
    1) Trainings tables, 2) Testing tables, 3) Activity labels
1.2 Assigning column names
1.3 Merging all data in single set
Calculating the basic summary stats on the mean and standard deviation for each measurement
2.1 Reading column names
2.2 generate vector for defining ID, mean and standard deviation
2.3 Making nessesary subset from setone
3:0  adjust descriptive activity names to name the activities
4:0  Added the descriptive variable names in part of the previous sections
Creating a Final tidy data set with the average of each variable for each activity and each subject
5.1 Making Final tidy data set
5.2 Writing FinalData tidy data set in txt file