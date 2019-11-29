Getting and Cleaning Data - peer assessment project

1) The original data was shaped to tidy by follwing steps
  i)    Merging the training and the test sets to create a merged data set.
  ii)   Extracting the basic measurements on the mean and standard deviation for each variables.
  iii)  Using descriptive activity names to name the activities in the data set
  iv)   Easy to read the variable, I label the data set with descriptive activity names.
  v)    Creating a final tidy data set with the average of each variable for each activity and each subject.
 
2)  Methods of the R script
 
    As per the assignment of course work, File with R code "run_analysis.R" perform five  steps

3) Variables Transforamtion:
   x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
   x_data, y_data and subject_data merge the previous datasets to following analysis.
   features contains the correct names for the x_data dataset, which are adjusted to the column names