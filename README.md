##Experiment Notes from the original dataset:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


##Original Dataset
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

The original data set can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


##Data Records
Each record includes:
* An identifier for the subject who performed the experiment
* The activity performed
* An average of each mean and standard deviation feature


##Files
The dataset includes the following files:
* 'README.md'
* 'CODEBOOK.md'
* 'run_analysis.R'

The following files will be created by running the script run_analysis()
* 'meanStdData.csv': This contains the test and training data sets combined into one set, with only columns of mean and standard deviation included.
* 'tidyDataSet.csv': This contains the tidy dataset with subjectid, activity, and average of each mean and standard deviation feature.

run_analysis() requires the UCI HAR Dataset to be unzipped in your working directory prior to running.

##Data Notes:
* Features are normalized and bounded within [-1,1].
* Mean and standard deviation features include all features where mean or std were in the field name.  There are several computed fields (weighted averages or averaging signals on angles) that are included because the original requestor was  unavailable for clarification, and it is easier to subset them out in downstream work than to require modification the script after the fact.
