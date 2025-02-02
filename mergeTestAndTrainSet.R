#
# this scripts gets the path to the four dataset files and returns
# the merged data.frame!

# column order: first column is activities, then the data
# row order: first the test set data, then the training set data

mergeTestAndTrainSet <- function( fTestX, 
                                  fTestY, 
                                  fTestSub,
                                  fTrainX, 
                                  fTrainY,
                                  fTrainSub,
                                  fColumnNames) {
   #
   # read measurement data
   testSet <- read.fwf(fTestX, widths = rep(16,561), header = FALSE) 
   trainSet <- read.fwf(fTrainX, widths = rep(16,561), header = FALSE)
   dataSet <- rbind(testSet,trainSet)
   #
   # read activity data
   testSet <- read.table(fTestY, header = FALSE) 
   trainSet <- read.table(fTrainY, header = FALSE)
   dataSet <- cbind(rbind(testSet,trainSet),dataSet)
   #
   # read subject data
   testSet <- read.table(fTestSub, header = FALSE) 
   trainSet <- read.table(fTrainSub, header = FALSE)
   #
   # combine the rest
   dataSet <- cbind(rbind(testSet,trainSet),dataSet)
   #
   # read measurement names
   colNames <- read.csv(fColumnNames, sep = " ", header = FALSE)
   #
   # add a field for the activity data and set the column names
   charVec <- c("Subject","Activity", as.character(colNames$V2))
   names(dataSet) <- charVec
   #
   # make the filter for mean and std values
   filterMean <- grepl("-mean\\(\\)", charVec)
   filterStd <- grepl("-std()", charVec)
   filter <- as.logical(filterMean + filterStd)
   filter[1:2] <- TRUE
   #
   # return the filtered dataSet
   dataSet[,filter]
}