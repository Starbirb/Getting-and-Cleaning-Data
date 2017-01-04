==========================================================================
Codebook of Variables
==========================================================================

subject/sub - Subject identification number (values from 1 to 30)

activity/act - Activity description (Laying, Sitting, Standing, Walking, Walking_Downstairs, Walking_Upstairs)

66 variables being measured that are a mean or standard deviation. The naming of these variables can be found here:

   1) Time/Frequency:
   *  'frequency' indicates the variable was measured in the frequency domain using a Fast Fourier Transform (FFT) of a corresponding time domain variable
   *  'time' indicates the variable was measured in the time domain

   2) Body/Gravity Component:
   *  Variables containing just "BodyAccelerometer" indicate it is the body acceleration signal
   *  Variables containing just "GravityAccelerometer" indicate it is the gravity acceleration signal
   
   3) Jerk:
   * "BodyAccelerometerJerk" indicates it's the Jerk signal derived from the body linear acceleration and angular velocity

   4) Magnitude:
   * "AccelerometerMagnitude" means it's a measurement of the magnitude of the 3D signal calculated using the Euclidean norm 

   5) Mean / Standard Deviation:
   * 'mean()' shows this concerns a mean value.
   *'std()' shows that this concerns a standard deviation.

   6) Variables containing 'X', 'Y', or 'Z' indicate the axial direction. 


==========================================================================
Codebook Notes
==========================================================================

Every feature in this dataset comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

Time signals were captured at a constant rate of 50 Hz. Next, they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter this time with a corner frequency of 0.3 Hz. 

The body linear acceleration and angular velocity were then derived in time to obtain Jerk signals. Also, the magnitude of these three-dimensional signals was calculated using the Euclidean norm. 

Fast Fourier Transform (FFT) was applied to some of these signals.
