## Assignment: Raw data to suggested data sets (MeanAndStdDataSet.csv and AveragedDataSet.txt)

Before you run the R script, make sure the working directory is set to the repository directory!

The main method, **run_analysis.R**, sources the methods defined in **MergeTestAndTrainSet.R** and **renameActivityData.R**. This method works on the Samsung Mobility data set which is included in the repository.

#### What happens in run_analysis.R

The first step is the definition of the input files and the call for *mergeTestAndTrainSet(...)*. This call returns the merged data sets of the training and test set, called dataSet. Here, the variables (columns) are already filtered to contain only mean and standard deviation variables.

The second step is the creation of the activity group averaged data set, called dataSet2.

In the third step for both data sets the nomenclature for the activity variable is changed from numerical description (int numbers 1 to 6) to wording (walking, laying, sitting...).

In the fourth step the variable names of both sets are transformed to lowercase. And non-character chars are removed.

In the end the data sets are stored as csv/txt files. 

* dataSet - MeanAndStdDataSet.csv
* dataSet2 - AveragedDataSet.txt