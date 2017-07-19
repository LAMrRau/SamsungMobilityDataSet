#
# - this scripts gets the dataSet and the file of the activity labels
# - then the labels are transformed to lower case and 
#   underscores are removed

renameActivityColumnData <- function( dataSet,
                                      fActivityLabels) {
   # read labels
   actLabels <- read.csv(fActivityLabels, sep = " ", header = FALSE)
   # transform labels
   actLabelsChar <- sub("_","", tolower(as.character(actLabels$V2)))
   # mutate Activity column
   dataSet %>% mutate(Activity = actLabelsChar[as.numeric(Activity)])
}