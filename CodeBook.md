##Data Collection Description

The purpose of this data collection is to provide average data on the measurements collected
by a smartphone when worn by a person while performing one of six activities.

The features selected for this dataset are the mean and standard deviation features released
with the original dataset.

##Original Dataset Feature description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal   
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

This excerpt is take from the dataset:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

It can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Transformation Steps
* The features names were modified to be more descriptive - this is achieved through the getDescriptiveNames(features) function.
	a) Camel case and periods were used to make the names for readable
	b) Abbreviations were transformed into full words
* The descriptive feature names were set as the appropriate column headings
* The test and training datasets were combined into one large dataset
* A subset of data including only mean and standard deviation features was extracted
* The subject and activity data was bound to the dataset
* The activity description was merged into the dataset
* The dataset was melted and dcast into a tidy dataset with one row per subject and activity and a column for each feature mean

##Data Features for this dataset
subjectid  
&nbsp;&nbsp;&nbsp;&nbsp;ID that indicates which subject performed the activity  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 1..30
	
activity
	Activity Performed
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
		
time.Body.Acceleration.Mean.X
	Mean of the mean body acceleration along the X axis in time

time.Body.Acceleration.Mean.Y
	Mean of the mean body acceleration along the Y axis in time

time.Body.Acceleration.Mean.Z
	Mean of the mean body acceleration along the Z axis in time

time.Body.Acceleration.StandardDeviation.X
	Mean of the Standard Deviation of body acceleration along the X axis in time
	
time.Body.Acceleration.StandardDeviation.Y
	Mean of the Standard Deviation of body acceleration along the Y axis in time

time.Body.Acceleration.StandardDeviation.Z
	Mean of the Standard Deviation of body acceleration along the Z axis in time

time.Gravity.Acceleration.Mean.X
	Mean of the mean gravity acceleration along the X axis in time

time.Gravity.Acceleration.Mean.Y
	Mean of the mean gravity acceleration along the Y axis in time

time.Gravity.Acceleration.Mean.Z
	Mean of the mean gravity acceleration along the Z axis in time

time.Gravity.Acceleration.StandardDeviation.X
	Mean of the Standard Deviation of gravity acceleration along the X axis in time
	
time.Gravity.Acceleration.StandardDeviation.Y
	Mean of the Standard Deviation of gravity acceleration along the Y axis in time

time.Gravity.Acceleration.StandardDeviation.Z
	Mean of the Standard Deviation of gravity acceleration along the Z axis in time

time.Body.Acceleration.Jerk.Mean.X
	Mean of the mean Jerk signal derived in time for body acceleraton along the X axis

time.Body.Acceleration.Jerk.Mean.Y
	Mean of the mean Jerk signal derived in time for body acceleraton along the Y axis

time.Body.Acceleration.Jerk.Mean.Z
	Mean of the mean Jerk signal derived in time for body acceleraton along the Z axis

time.Body.Acceleration.Jerk.StandardDeviation.X
	Mean of the Standard Deviation of the Jerk signal derived in time for body acceleraton along the X axis

time.Body.Acceleration.Jerk.StandardDeviation.Y
	Mean of the Standard Deviation of the Jerk signal derived in time for body acceleraton along the Y axis

time.Body.Acceleration.Jerk.StandardDeviation.Z
	Mean of the Standard Deviation of the Jerk signal derived in time for body acceleraton along the Z axis

time.Body.Gyroscope.Mean.X
	Mean of the mean body tilt of the gyroscope along the X axis in time

time.Body.Gyroscope.Mean.Y
	Mean of the mean body tilt of the gyroscope along the Y axis in time

time.Body.Gyroscope.Mean.Z
	Mean of the mean body tilt of the gyroscope along the Z axis in time

time.Body.Gyroscope.StandardDeviation.X
	Mean of the Standard Deviation of body tilt of the gyroscope along the X axis in time

time.Body.Gyroscope.StandardDeviation.Y
	Mean of the Standard Deviation of body tilt of the gyroscope along the Y axis in time

time.Body.Gyroscope.StandardDeviation.Z
	Mean of the Standard Deviation of body tilt of the gyroscope along the Z axis in time

time.Body.Gyroscope.Jerk.Mean.X
	Mean of the mean Jerk signal derived in time for body tilt of the gyroscope along the X axis

time.Body.Gyroscope.Jerk.Mean.Y
	Mean of the mean Jerk signal derived in time for body tilt of the gyroscope along the Y axis

time.Body.Gyroscope.Jerk.Mean.Z
	Mean of the mean Jerk signal derived in time for body tilt of the gyroscope along the Z axis

time.Body.Gyroscope.Jerk.StandardDeviation.X
	Mean of the Standard Deviation of the Jerk signal derived in time for tilt of the gyroscope along the X axis

time.Body.Gyroscope.Jerk.StandardDeviation.Y
	Mean of the Standard Deviation of the Jerk signal derived in time for tilt of the gyroscope along the Y axis

time.Body.Gyroscope.Jerk.StandardDeviation.Z
	Mean of the Standard Deviation of the Jerk signal derived in time for tilt of the gyroscope along the Z axis

time.Body.Acceleration.Magnitude.Mean
	Mean of the mean magnitude of body acceleration 

time.Body.Acceleration.Magnitude.StandardDeviation
	Mean of the Standard Deviation of magnitude of body acceleration

time.Gravity.Acceleration.Magnitude.Mean
	Mean of the mean magnitude of gravity acceleration

time.Gravity.Acceleration.Magnitude.StandardDeviation
	Mean of the Standard Deviation of magnitude of gravity acceleration

time.Body.Acceleration.Jerk.Magnitude.Mean
	Mean of the mean magnitude of Jerk signals for body acceleration

time.Body.Acceleration.Jerk.Magnitude.StandardDeviation
	Mean of the Standard Deviation of magnitude of Jerk signals for body acceleration

time.Body.Gyroscope.Magnitude.Mean
	Mean of the mean magnitude of body tilt of the gyroscope
	 
time.Body.Gyroscope.Magnitude.StandardDeviation
	Mean of the Standard Deviation of magnitude of body tilt of the gyroscope
	
time.Body.Gyroscope.Jerk.Magnitude.Mean
	Mean of the mean magnitude of Jerk signals for body tilt of the gyroscope
	
time.Body.Gyroscope.Jerk.Magnitude.StandardDeviation
	Mean of the Standard Deviation of magnitude of Jerk signals for body tilt of the gyroscope
	
frequency.Body.Acceleration.Mean.X
	Mean of the mean Fast Fourier Transform (FFT) of body acceleration along the X axis

frequency.Body.Acceleration.Mean.Y
	Mean of the mean Fast Fourier Transform (FFT) of body acceleration along the Y axis

frequency.Body.Acceleration.Mean.Z
	Mean of the mean Fast Fourier Transform (FFT) of body acceleration along the Z axis

frequency.Body.Acceleration.StandardDeviation.X
	Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of body acceleration along the X axis
	
frequency.Body.Acceleration.StandardDeviation.Y
	Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of body acceleration along the Y axis
	
frequency.Body.Acceleration.StandardDeviation.Z
	Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of body acceleration along the Z axis

frequency.Body.Acceleration.meanFrequency.X
	Mean of the Fast Fourier Transform (FFT) of the weighted average of the frequency components (meanFrequency) of body acceleration along the X axis
	
frequency.Body.Acceleration.meanFrequency.Y
	Mean of the Fast Fourier Transform (FFT) of the weighted average of the frequency components (meanFrequency) of body acceleration along the Y axis
	
frequency.Body.Acceleration.meanFrequency.Z
	Mean of the Fast Fourier Transform (FFT) of the weighted average of the frequency components (meanFrequency) of body acceleration along the Z axis
	
frequency.Body.Acceleration.Jerk.Mean.X
	Mean of the Fast Fourier Transform (FFT) of the mean Jerk signals for body acceleration along the X axis
	
frequency.Body.Acceleration.Jerk.Mean.Y
	Mean of the Fast Fourier Transform (FFT) of the mean Jerk signals for body acceleration along the Y axis
	
frequency.Body.Acceleration.Jerk.Mean.Z
	Mean of the Fast Fourier Transform (FFT) of the mean Jerk signals for body acceleration along the Z axis
	
frequency.Body.Acceleration.Jerk.StandardDeviation.X
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of Jerk signals for body acceleration along the X axis
	
frequency.Body.Acceleration.Jerk.StandardDeviation.Y
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of Jerk signals for body acceleration along the Y axis
	
frequency.Body.Acceleration.Jerk.StandardDeviation.Z
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of Jerk signals for body acceleration along the Z axis
	
frequency.Body.Acceleration.Jerk.meanFrequency.X
	Mean of the Fast Fourier Transform (FFT) of the Jerk signals for the weighted average of the frequency components (meanFrequency) along the X axis

frequency.Body.Acceleration.Jerk.meanFrequency.Y
	Mean of the Fast Fourier Transform (FFT) of the Jerk signals for the weighted average of the frequency components (meanFrequency) along the Y axis

frequency.Body.Acceleration.Jerk.meanFrequency.Z
	Mean of the Fast Fourier Transform (FFT) of the Jerk signals for the weighted average of the frequency components (meanFrequency) along the Z axis

frequency.Body.Gyroscope.Mean.X
	Mean of the mean Fast Fourier Transform (FFT) of body tilt of the gyroscope along the X axis

frequency.Body.Gyroscope.Mean.Y
	Mean of the mean Fast Fourier Transform (FFT) of body tilt of the gyroscope along the Y axis

frequency.Body.Gyroscope.Mean.Z
	Mean of the mean Fast Fourier Transform (FFT) of body tilt of the gyroscope along the Z axis

frequency.Body.Gyroscope.StandardDeviation.X
	Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of body tilt of the gyroscope along the X axis

frequency.Body.Gyroscope.StandardDeviation.Y
	Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of body tilt of the gyroscope along the Y axis

frequency.Body.Gyroscope.StandardDeviation.Z
	Mean of the Standard Deviation of the Fast Fourier Transform (FFT) of body tilt of the gyroscope along the Z axis

frequency.Body.Gyroscope.meanFrequency.X
	Mean of the Fast Fourier Transform (FFT) of the weighted average of the frequency components (meanFrequency) of body tilt of the gyroscope along the X axis

frequency.Body.Gyroscope.meanFrequency.Y
	Mean of the Fast Fourier Transform (FFT) of the weighted average of the frequency components (meanFrequency) of body tilt of the gyroscope along the Y axis

frequency.Body.Gyroscope.meanFrequency.Z
	Mean of the Fast Fourier Transform (FFT) of the weighted average of the frequency components (meanFrequency) of body tilt of the gyroscope along the Z axis

frequency.Body.Acceleration.Magnitude.Mean
	Mean of the Fast Fourier Transform (FFT) of the mean magnitude of body acceleration

frequency.Body.Acceleration.Magnitude.StandardDeviation
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of the magnitude of body acceleration

frequency.Body.Acceleration.Magnitude.meanFrequency
	Mean of the Fast Fourier Transform (FFT) of the magnitude of the weighted average of the frequency components (meanFrequency) for body acceleration

frequency.Body.Body.Acceleration.Jerk.Magnitude.Mean
	Mean of the Fast Fourier Transform (FFT) of the mean magnitude of the Jerk signals for body acceleration

frequency.Body.Body.Acceleration.Jerk.Magnitude.StandardDeviation
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of the magnitude of the Jerk signals for body acceleration

frequency.Body.Body.Acceleration.Jerk.Magnitude.meanFrequency
	Mean of the Fast Fourier Transform (FFT) of the magnitude of the Jerk signals for the weighted average of the frequency components (meanFrequency) for body acceleration

frequency.Body.Body.Gyroscope.Magnitude.Mean
	Mean of the Fast Fourier Transform (FFT) of the mean magnitude of body tilt of the gyroscope

frequency.Body.Body.Gyroscope.Magnitude.StandardDeviation
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of the magnitude of body tilt of the gyroscope

frequency.Body.Body.Gyroscope.Magnitude.meanFrequency
	Mean of the Fast Fourier Transform (FFT) of the magnitude of the weighted average of the frequency components (meanFrequency) for body tilt of the gyroscope

frequency.Body.Body.Gyroscope.Jerk.Magnitude.Mean
	Mean of the Fast Fourier Transform (FFT) of the mean magnitude of the Jerk signals for body tilt of the gyroscope
	
frequency.Body.Body.Gyroscope.Jerk.Magnitude.StandardDeviation
	Mean of the Fast Fourier Transform (FFT) of the Standard Deviation of the magnitude of the Jerk signals for body tilt of the gyroscope
	
frequency.Body.Body.Gyroscope.Jerk.Magnitude.meanFrequency
	Mean of the Fast Fourier Transform (FFT) of the magnitude of the Jerk signals for the weighted average of the frequency components (meanFrequency) for body tilt of the gyroscope

Additional vectors obtained by averaging the signals in a signal window sample used on the angle features:
angle.time.Body.Acceleration.Mean.Gravity
angle.time.Body.Acceleration.Jerk.Mean.Gravity.Mean
angle.time.Body.Gyroscope.Mean.Gravity.Mean
angle.time.Body.Gyroscope.Jerk.Mean.Gravity.Mean
angle.X.Gravity.Mean
angle.Y.Gravity.Mean
angle.Z.Gravity.Mean
