##Install package needed
##install.packages("dplyr")
##library(dplyr)


## First, reading the test data to build to merge table
## Reading the data from test x
xtest <- read.table ("./UCI HAR Dataset/test/X_test.txt")
## REading the subject table for test
subjtest <- read.table ("./UCI HAR Dataset/test/subject_test.txt")
## REading the activity performed table for test data
ytest <- read.table ("./UCI HAR Dataset/test/y_test.txt")

## Merging these 3 tables into 1 data frame called 'df_merge'
df_merge <- data.frame(xtest,ytest,subjtest)

## 2nd part reading the train data to add to the merge table

## Reading the data from test x
xtrain <- read.table ("./UCI HAR Dataset/train/X_train.txt")
## REading the subject table for test
subjtrain <- read.table ("./UCI HAR Dataset/train/subject_train.txt")
## REading the activity performed table for test data
ytrain <- read.table ("./UCI HAR Dataset/train/y_train.txt")

## Adding the data at the end of the 'df_merge' to have a table with
## both test and train data

df_merge <- rbind(df_merge,data.frame(xtrain,ytrain,subjtrain))

## Identifying all the columns needs based on the 'features.txt' file
## First reading the file
features <- read.table ("./UCI HAR Dataset/features.txt")

## Assumption is we keep all the value where "mean()" and "std()"
## can be found. So looking for column names with these 2 strings
col_new <- sort(append(grep("mean\\(\\)",features$V2),grep("std\\(\\)",features$V2)))

## also adding at the activity and subject column
col_new <- append(col_new, c(562,563))

## reducing the table to only the needed columns
df_merge <- df_merge[,col_new]

## Updating the content of the 'activity' column 'df_merge$V1.1' with the
## name of the activity
activities <- read.table ("./UCI HAR Dataset/activity_labels.txt")

count = 1
for(var in df_merge$V1.1){
        
         df_merge$V1.1[[count]] <- activities[var,2]
        count <- count +1
        }
print(count)
## Adjusting names of column to be more in line with tidy data guidelines
## Selecting only the relevant names from features.
features_short <- features[col_new,2]

## replacing the starting 't' for 'time' to have clearer name
features_short <- sub("^t","time",features_short)

## replacing the starting 'f' for 'frequency' to have clearer name
features_short <- sub("^f","frequency",features_short)

## replacing the starting 'Acc' for 'accelerometer' to have clearer name
features_short <- sub("Acc","accelerometer",features_short)

## replacing the starting 'Gyro' for 'gyroscope' to have clearer name
features_short <- sub("Gyro","gyroscope",features_short)

## replacing the starting 'Mag' for 'magnitude' to have clearer name
features_short <- sub("Mag","magnitude",features_short)

## replacing the starting 'std' for 'standarddeviation' to have clearer name
features_short <- sub("std","standarddeviation",features_short)

## removing the '-' and replacing with ""
features_short <- gsub("-","",features_short)

##Removing the paranthesis from the name
features_short <- sub("\\(\\)","",features_short)

## putting everything in lower case for consistancy
features_short <- tolower(features_short)

##Adding to the 'features_short' with the 2 last columns 
##'activities' and 'subject'
features_short[67] <- "activity"
features_short[68] <- "subject"


##Building a summary table by subject and activity
colnames(df_merge) <- features_short


##Create a summary table with the mean of each column group by subject, activity
## 'df_summary' is the new table created.
df_summary <- df_merge %>% 
        group_by(subject, activity) %>% 
        summarise(across(timebodyaccelerometermeanx:frequencybodybodygyroscopejerkmagnitudestandarddeviation, list(mean)))

## Updating table names to reflext tidy data rules
## adding meanof before all variables names 
col_summary <- colnames(df_summary)
col_summary[3:length(col_summary)]<-sub("^","meanof",col_summary[3:length(col_summary)])

##removing the '_1' from the names
col_summary[3:length(col_summary)]<-sub("_1","",col_summary[3:length(col_summary)])

## Updating the names of the columns in the summary table
colnames(df_summary)<- col_summary


