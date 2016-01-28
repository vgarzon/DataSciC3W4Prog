# Programming Assignment Code Book
Coursera Data Science - 3 - Getting and Cleaning Data

## References

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. **Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.** International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

### Original repository 
[UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### File source 
[UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Data description

### From original README file

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The following data was collected:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#### Activities
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### Variables description

**NB. Variable names were modified by removing dashes '-' and parentheses '()' and capitalizing the first letter in 'Mean'and 'Std'.  Abbreviations "t", "f", "Acc" and "Mag" were expanded to "time", "freq", "Accelerat" and "Magnitude".s

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcceleratXYZ and timeGyroXYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleratXYZ and timeGravityAcceleratXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAcceleratJerkXYZ and timeBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAcceleratMagnitude, timeGravityAcceleratMagnitude, timeBodyAcceleratJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcceleratXYZ, freqBodyAcceleratJerkXYZ, freqBodyGyroXYZ, frewqBodyAcceleratJerkMagnitude, freqBodyGyroMagnitude, freqBodyGyroJerkMagnitude. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeBodyAccXYZ
- timeGravityAccXYZ
- timeBodyAccJerkXYZ
- timeBodyGyroXYZ
- timeBodyGyroJerkXYZ
- timeBodyAccMagnitude
- timeGravityAccMagnitude
- timeBodyAccJerkMagnitude
- timeBodyGyroMagnitude
- timeBodyGyroJerkMagnitude
- freqBodyAcceleratXYZ
- freqBodyAcceleratJerkXYZ
- freqBodyGyroXYZ
- freqBodyAcceleratMagnitude
- freqBodyAcceleratJerkMagnitude
- freqBodyGyroMagnitude
- freqBodyGyroJerkMagnitude

The set of variables that were estimated from these signals are: 

- Mean: Mean value
- Std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

- gravityMean
- timeBodyAcceleratMean
- timeBodyAcceleratJerkMean
- timeBodyGyroMean
- timeBodyGyroJerkMean

## Submitted data

The training data set had 2,947 rows while test data set had 7,352, resulting in a combined set of 10,299 rows.  The average was calculated for each variable, grouped per subject and activity.  

The submitted data set has 180 rows and 81 columns:

1. **subject** (integer) - identifier for test subject (1 to 30)
2. **activity** (factor) - descriptor of physical activity (described above)
4. **timeBodyAcceleratMeanX** (numeric) - averagle of combined train and test data for variable timeBodyAcceleratMeanX
5. ... _and so on for remaining variables_
