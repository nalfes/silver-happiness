---
title: "Getting and Cleaning data - Project"
author: "Claude Belanger"
date: "11/1/2020"
output: html_document
---

Notice
=================
Important information the folder 'UCI HAR Dataset' needs to be in the working folder for the script to work and the library dplyr needs to be loaded.

Content explanation
=================
The variables are build from the following information for 1:66, the last 2 being explain directly. For 'df_merge' table the definition is direct. For the table 'df_summary' the column are the sames except that all the variables (except subject and activity) have been average by suject and activity combinaison. 



**1.a. time **<br>
These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

**1.b. frequency** <br>
indicate frequency domain signals

**2.a. bodyaccelerometer** <br>
Fast Fourier Transform (FFT) was applied to some of these signals producing

**2.b. gravityaccelerometer** <br>
 Fast Fourier Transform (FFT) was applied to some of these signals producing
 
**2.c. bodygyroscope** <br>

**2.d. bodyaccelerometerjerk** <br>
Fast Fourier Transform (FFT) was applied to some of these signals producing
In physics, jerk or jolt is the rate at which an object's acceleration changes with respect to time.

**2.e. bodygyroscopejerk** <br>
In physics, jerk or jolt is the rate at which an object's acceleration changes with respect to time.

**3. magnitude** <br>
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm

**4.a. mean** <br>
the value represent a mean value.

**4.b. standarddeviation** <br>
the value represent a standard deviation.

**5.a. x, y or z**  <br>
is used to denote 3-axial signals in the X, Y and Z directions.

**subject **  <br>
unique number from 1 to 30 representing which subject the data come from.

**activity **  <br>
describe the activity performed when data was taken for the subject.

Details fields names build from previous explanation.

**df_merge table content:** <br>

1 timebodyaccelerometermeanx <br>
2 timebodyaccelerometermeany <br>
3 timebodyaccelerometermeanz <br>
4 timebodyaccelerometerstandarddeviationx <br>
5 timebodyaccelerometerstandarddeviationy <br>
6 timebodyaccelerometerstandarddeviationz <br>
7 timegravityaccelerometermeanx <br>
8 timegravityaccelerometermeany <br>
9 timegravityaccelerometermeanz <br>
10 timegravityaccelerometerstandarddeviationx <br>
11 timegravityaccelerometerstandarddeviationy <br>
12 timegravityaccelerometerstandarddeviationz <br>
13 timebodyaccelerometerjerkmeanx <br>
14 timebodyaccelerometerjerkmeany <br>
15 timebodyaccelerometerjerkmeanz <br>
16 timebodyaccelerometerjerkstandarddeviationx <br>
17 timebodyaccelerometerjerkstandarddeviationy <br>
18 timebodyaccelerometerjerkstandarddeviationz <br>
19 timebodygyroscopemeanx <br>
20 timebodygyroscopemeany <br>
21 timebodygyroscopemeanz <br>
22 timebodygyroscopestandarddeviationx <br>
23 timebodygyroscopestandarddeviationy <br>
24 timebodygyroscopestandarddeviationz <br>
25 timebodygyroscopejerkmeanx <br>
26 timebodygyroscopejerkmeany <br>
27 timebodygyroscopejerkmeanz <br>
28 timebodygyroscopejerkstandarddeviationx <br>
29 timebodygyroscopejerkstandarddeviationy <br>
30 timebodygyroscopejerkstandarddeviationz <br>
31 timebodyaccelerometermagnitudemean <br>
32 timebodyaccelerometermagnitudestandarddeviation <br>
33 timegravityaccelerometermagnitudemean <br>
34 timegravityaccelerometermagnitudestandarddeviation <br>
35 timebodyaccelerometerjerkmagnitudemean <br>
36 timebodyaccelerometerjerkmagnitudestandarddeviation <br>
37 timebodygyroscopemagnitudemean <br>
38 timebodygyroscopemagnitudestandarddeviation <br>
39 timebodygyroscopejerkmagnitudemean <br>
40 timebodygyroscopejerkmagnitudestandarddeviation <br>
41 frequencybodyaccelerometermeanx <br>
42 frequencybodyaccelerometermeany <br>
43 frequencybodyaccelerometermeanz <br>
44 frequencybodyaccelerometerstandarddeviationx <br>
45 frequencybodyaccelerometerstandarddeviationy <br>
46 frequencybodyaccelerometerstandarddeviationz <br>
47 frequencybodyaccelerometerjerkmeanx <br>
48 frequencybodyaccelerometerjerkmeany <br>
49 frequencybodyaccelerometerjerkmeanz <br>
50 frequencybodyaccelerometerjerkstandarddeviationx <br>
51 frequencybodyaccelerometerjerkstandarddeviationy <br>
52 frequencybodyaccelerometerjerkstandarddeviationz <br>
53 frequencybodygyroscopemeanx <br>
54 frequencybodygyroscopemeany <br>
55 frequencybodygyroscopemeanz <br>
56 frequencybodygyroscopestandarddeviationx <br>
57 frequencybodygyroscopestandarddeviationy <br>
58 frequencybodygyroscopestandarddeviationz <br>
59 frequencybodyaccelerometermagnitudemean <br>
60 frequencybodyaccelerometermagnitudestandarddeviation <br>
61 frequencybodybodyaccelerometerjerkmagnitudemean <br>
62 frequencybodybodyaccelerometerjerkmagnitudestandarddeviation <br>
63 frequencybodybodygyroscopemagnitudemean <br>
64 frequencybodybodygyroscopemagnitudestandarddeviation <br>
65 frequencybodybodygyroscopejerkmagnitudemean <br>
66 frequencybodybodygyroscopejerkmagnitudestandarddeviation <br>
67 activity <br>
68 subject <br>
 <br>








