# silver-happiness

This repository contain the data, R script and codebook for this project which is based on the publication found in reference below. From the data used in this publication (available in this repository) 5 tasks needed to be performed to create a clean and summarize table of information. All the variables content and description can be found in the codebook. 

the 5 task are:

	1. Merges the training and the test sets to create one data set.
                1.1 First all the relevant table for the test data and training data were read
                1.2.the data was then merge in the same data frame 'df_merge'
                
	2. Extracts only the measurements on the mean and standard deviation for each measurement.
	        2.1 the list of columns was read to a variable
	        2.2 the element from the list containing either mean() or std() where identify
	        NOTE: 'mean' alone in the names without the () was not considered.
	        2.3 the data frame was reduce to include only the relevant column.
	        
	3. Uses descriptive activity names to name the activities in the data set
	        3.1 the table with the activity names was read
	        3.2 the content of the activity column was updated for the name of the activity instead of number
	       
	4. Appropriately labels the data set with descriptive variable names.
	        4.1 the starting letter (either t or f) was replace in the name for time or frequency respectively
	        4.2 other accronym (like Acc, Mag, Gyro, ...) where replace by the full name (see R script for                           details)
	        4.3 then '-' and '()' were also remove
	        4.4 all names were force to lower case 
	        4.5 finally the subject and activity column name were added and updated in the data frame df_merge
	        
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable            for each activity and each subject.
	        5.1 base on 'df_merge' the table was Group by subject and activity and the other variables were                          applied a mean function
	        5.2 The table column names were updated to respect tidy data.
	 



Reference:
Script and dataset is coming from the following paper:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.