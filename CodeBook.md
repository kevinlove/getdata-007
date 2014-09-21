Getting and Cleaning Data Course Project CodeBook
========================================================
A code book that describes the variables, the data, and any transformations and work performed to clean up the data for the Getting and Cleaning Data Course Project.

Data Source
-----------

Data was provided by the ["Human Activity Recognition Using Smartphones Data Set" : Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors][1]. 

### Data Files used in the analysis
* subject_test.txt
* X_test.txt
* y_test.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* features.txt
* activity_labels.txt


Data Transformations
--------------------

The source data needed to be combined into a tidy data set. The following schematic was used as a guide for assmebling the data files into a tidy data set:

![David's project FAQ][2]  
[David's project FAQ][3]

After assembling the data files, I have reduced the data set to the variables that represent mean value and standard deviation for signals calculated by the dataset authors:

```
1                      subject
2                        label
3            tBodyAcc.mean...X
4            tBodyAcc.mean...Y
5            tBodyAcc.mean...Z
6             tBodyAcc.std...X
7             tBodyAcc.std...Y
8             tBodyAcc.std...Z
9         tGravityAcc.mean...X
10        tGravityAcc.mean...Y
11        tGravityAcc.mean...Z
12         tGravityAcc.std...X
13         tGravityAcc.std...Y
14         tGravityAcc.std...Z
15       tBodyAccJerk.mean...X
16       tBodyAccJerk.mean...Y
17       tBodyAccJerk.mean...Z
18        tBodyAccJerk.std...X
19        tBodyAccJerk.std...Y
20        tBodyAccJerk.std...Z
21          tBodyGyro.mean...X
22          tBodyGyro.mean...Y
23          tBodyGyro.mean...Z
24           tBodyGyro.std...X
25           tBodyGyro.std...Y
26           tBodyGyro.std...Z
27      tBodyGyroJerk.mean...X
28      tBodyGyroJerk.mean...Y
29      tBodyGyroJerk.mean...Z
30       tBodyGyroJerk.std...X
31       tBodyGyroJerk.std...Y
32       tBodyGyroJerk.std...Z
33          tBodyAccMag.mean..
34           tBodyAccMag.std..
35       tGravityAccMag.mean..
36        tGravityAccMag.std..
37      tBodyAccJerkMag.mean..
38       tBodyAccJerkMag.std..
39         tBodyGyroMag.mean..
40          tBodyGyroMag.std..
41     tBodyGyroJerkMag.mean..
42      tBodyGyroJerkMag.std..
43           fBodyAcc.mean...X
44           fBodyAcc.mean...Y
45           fBodyAcc.mean...Z
46            fBodyAcc.std...X
47            fBodyAcc.std...Y
48            fBodyAcc.std...Z
49       fBodyAccJerk.mean...X
50       fBodyAccJerk.mean...Y
51       fBodyAccJerk.mean...Z
52        fBodyAccJerk.std...X
53        fBodyAccJerk.std...Y
54        fBodyAccJerk.std...Z
55          fBodyGyro.mean...X
56          fBodyGyro.mean...Y
57          fBodyGyro.mean...Z
58           fBodyGyro.std...X
59           fBodyGyro.std...Y
60           fBodyGyro.std...Z
61          fBodyAccMag.mean..
62           fBodyAccMag.std..
63  fBodyBodyAccJerkMag.mean..
64   fBodyBodyAccJerkMag.std..
65     fBodyBodyGyroMag.mean..
66      fBodyBodyGyroMag.std..
67 fBodyBodyGyroJerkMag.mean..
68  fBodyBodyGyroJerkMag.std..
```

I have then performed my own subsquent mean value calculation on these variables. Please note, the units for variables containing "Acc" is standard gravity units, and the variables containing "Gyro" is radians/second.



[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012"
[2]: Slide2.png "David's project FAQ"
[3]: https://class.coursera.org/getdata-007/forum/thread?thread_id=49 "David's project FAQ"