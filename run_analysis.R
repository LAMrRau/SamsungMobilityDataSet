library(dplyr)
#
setwd("./GettingAndCleaningData/finalProj") # set the wd to the repository directory path
source("./mergeTestAndTrainSet.R")
source("./renameActivityData.R")
#
# 1.) Merging training and test sets to one set
#     order: first test set then training set
# 2.) Keep only mean and standard deviation for measurement
#
   fileTestX <- "./UCI HAR Dataset/test/X_test.txt"
   fileTrainX <- "./UCI HAR Dataset/train/X_train.txt"
   fileTestY <- "./UCI HAR Dataset/test/y_test.txt"
   fileTrainY <- "./UCI HAR Dataset/train/y_train.txt"
   fileColumnNames <- "./UCI HAR Dataset/features.txt"
   dataSet <- mergeTestAndTrainSet(fileTestX,
                                   fileTestY,
                                   fileTrainX,
                                   fileTrainY,
                                   fileColumnNames)
#   
# 5.) process this data to: average of each variable for each activity and each subject
#   
   dataSet2 <- dataSet %>% group_by(Activity) %>% summarise_all(funs(mean))
#
# 3.) substitute activity numbers with descriptive names (rows) .. based on
#     activity label file
#
   fileActivityLabels = "./UCI HAR Dataset/activity_labels.txt"
   dataSet <- renameActivityColumnData (dataSet, fileActivityLabels)
   dataSet2 <- renameActivityColumnData (dataSet2, fileActivityLabels)
#
# 4.) name the variables descriptive and clearly (columns)
#
   names(dataSet) <- sub( "-", "", sub("-", "", sub( "\\(\\)","",tolower( names( dataSet ) ) ) ) )
   names(dataSet2) <- sub( "-", "", sub("-", "", sub( "\\(\\)","",tolower( names( dataSet2 ) ) ) ) )
#
# writing the data sets
#
   write.csv(dataSet, file = "MeanAndStdDataSet.csv")
   write.csv(dataSet2, file = "AveragedDataSet.csv")
   write.table(dataSet2, file = "AveragedDataSet2.txt", row.name=FALSE)
   