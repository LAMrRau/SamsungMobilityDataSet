---
title: "Code book"
author: "LAMrRau"
date: "7/18/2017"
output:
   html_document:
      toc: true
      toc_depth: 2
---
This code book shall explain the procedure how to convert the raw data (10299 observations for 563 variables), as presented here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>, to the two datasets (10299 obsercations for 68 variables) included in this repository. Furthermore, the column variables of the datasets are summarized.

## Procedure: Raw data to suggested data sets (MeanAndStdDataSet.csv and AveragedDataSet.csv)

The main method, **run_analysis.R**, sources the methods defined in **MergeTestAndTrainSet.R** and **renameActivityData.R**. 

The first step is the definition of the input files and the call for *mergeTestAndTrainSet(...)*. This call returns the merged data sets of the training and test set, called dataSet. Here, the variables (columns) are already filtered to contain only mean and standard deviation variables.

The second step is the creation of the activity group averaged data set, called dataSet2.

In the third step for both data sets the nomenclature for the activity variable is changed from numerical description (int numbers 1 to 6) to wording (walking, laying, sitting...).

In the fourth step the variable names of both sets are transformed to lowercase. And non-character chars are removed.

In the end the data sets are stored as csv files. 

* dataSet - MeanAndStdDataSet.csv
* dataSet2 - AveragedDataSet.csv and respectively AveragedDataSet2.txt

## Variable description of the data sets

Description for the 67 variables contained in the data sets. The min/max/mean values are based on the dataSet data and can be used to varify the correctness of a generated data set.

####  1. ```subject```:

####  2. ```activity```:
   Activity performed by subject during measurement.
   
   Values:
   
   * walking
   * walkingupstairs
   * walkingdownstairs
   * sitting
   * standing
   * laying

####  3. ```tbodyaccmeanx```:
   Mean body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.2743
   
####  4. ```tbodyaccmeany```:
   Mean body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.01774
   
####  5. ```tbodyaccmeanz```:
   Mean body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.10892
   
####  6. ```tbodyaccstdx```:
   Standard deviation for body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6078
   
####  7. ```tbodyaccstdy```:
   Standard deviation for body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.51019
   
####  8. ```tbodyaccstdz```:
   Standard deviation for body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6131
   
####  9. ```tgravityaccmeanx```:
   Mean gravity acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.6692
   
####  10. ```tgravityaccmeany```:
   Mean gravity acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.004039
   
#### 11. ```tgravityaccmeanz```:
   Mean gravity acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.09215
   
#### 12. ```tgravityaccstdx```:
   Standard deviation for gravity acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.9652
   
#### 13. ```tgravityaccstdy```:
   Standard deviation for gravity acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.9544
   
#### 14. ```tgravityaccstdz```:
   Standard deviation for gravity acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.9389
   
#### 15. ```tbodyaccjerkmeanx```:
   Mean jerk signal for the body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.07894
   
#### 16. ```tbodyaccjerkmeany```:
   Mean jerk signal for the body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.007948
   
#### 17. ```tbodyaccjerkmeanz```:
   Mean jerk signal for the body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.004675
   
#### 18. ```tbodyaccjerkstdx```:
   Standard deviation for jerk signal for the body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6398
   
#### 19. ```tbodyaccjerkstdy```:
   Standard deviation for jerk signal for the body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6080
   
#### 20. ```tbodyaccjerkstdz```:
   Standard deviation for jerk signal for the body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7628
   
#### 21. ```tbodygyromeanx```:
   Mean body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.03098
   
#### 22. ```tbodygyromeany```:
   Mean body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.07472
   
#### 23. ```tbodygyromeanz```:
   Mean body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.08836
   
#### 24. ```tbodygyrostdx```:
   Standard deviation for body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7212
   
#### 25. ```tbodygyrostdy```:
   Standard deviation for body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6827
   
#### 26. ```tbodygyrostdz```:
   Standard deviation for body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6537
   
#### 27. ```tbodygyrojerkmeanx```:
   Mean jerk signal for body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.09671
   
#### 28. ```tbodygyrojerkmeany```:
   Mean jerk signal for body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.04232
   
#### 29. ```tbodygyrojerkmeanz```:
   Mean jerk signal for body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.05483
   
#### 30. ```tbodygyrojerkstdx```:
   Standard deviation for jerk signal for body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7313
   
#### 31. ```tbodygyrojerkstdy```:
   Standard deviation for jerk signal for body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7861
   
#### 32. ```tbodygyrojerkstdz```:
   Standard deviation for jerk signal for body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7399
   
#### 33. ```tbodyaccmagmean```:
   Mean magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5482
   
#### 34. ```tbodyaccmagstd```:
   Standard deviation of magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5912
   
#### 35. ```tgravityaccmagmean```:
   Mean magnitude for gravity linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5482
   
#### 36. ```tgravityaccmagstd```:
   Standard deviation of magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5912
   
#### 37. ```tbodyaccjerkmagmean```:
   Mean jerk of magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6494
   
#### 38. ```tbodyaccjerkmagstd```:
   Standard deviation of jerk for magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6278
   
#### 39. ```tbodygyromagmean```:
   Mean magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6052
   
#### 40. ```tbodygyromagstd```:
   Standard deviation of magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6625
   
#### 41. ```tbodygyrojerkmagmean```:
   Mean of jerk for magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7621
   
#### 42. ```tbodygyrojerkmagstd```:
   Standard deviation of jerk for magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7780
   
#### 43. ```fbodyaccmeanx```:
   Mean body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6228
   
#### 44. ```fbodyaccmeany```:
   Mean body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5375
   
#### 45. ```fbodyaccmeanz```:
   Mean body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6650
   
#### 46. ```fbodyaccstdx```:
   Standard deviation for body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6034
   
#### 47. ```fbodyaccstdy```:
   Standard deviation for body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.52842
   
#### 48. ```fbodyaccstdz```:
   Standard deviation for body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6179
   
#### 49. ```fbodyaccjerkmeanx```:
   Mean jerk signal for the body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6567
          
#### 50. ```fbodyaccjerkmeany```: 
   Mean jerk signal for the body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6290 
                    
#### 51. ```fbodyaccjerkmeanz```:
   Mean jerk signal for the body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7436
          
#### 52. ```fbodyaccjerkstdx```:   
   Standard deviation for jerk signal for the body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6550
            
#### 53. ```fbodyaccjerkstdy```:    
   Standard deviation for jerk signal for the body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6122
           
#### 54. ```fbodyaccjerkstdz```:
   Standard deviation for jerk signal for the body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7809
   
#### 55. ```fbodygyromeanx```:  
   Mean body angular velocity in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6721
                           
#### 56. ```fbodygyromeany```:  
   Mean body angular velocity in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7062
                           
#### 57. ```fbodygyromeanz```:  
   Mean body angular velocity in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6442
               
#### 58. ```fbodygyrostdx```:   
   Standard deviation for body angular velocity in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7386
                              
#### 59. ```fbodygyrostdy```:   
   Standard deviation for body angular velocity in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6742
                              
#### 60. ```fbodygyrostdz```:   
   Standard deviation of body angular velocity in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6904
                    
#### 61. ```fbodyaccmagmean```:      
   Mean magnitude for body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5860
          
#### 62. ```fbodyaccmagstd```:           
   Standard deviation of magnitude for body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6595
      
#### 63. ```fbodybodyaccjerkmagmean```:           
   Mean jerk of magnitude for body-body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6208
      
#### 64. ```fbodybodyaccjerkmagstd```:         
   Standard deviation for jerk of magnitude for body-body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6401
         
#### 65. ```fbodybodygyromagmean```:        
   Mean magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6974
      
#### 66. ```fbodybodygyromagstd```:                     
   Standard deviation of magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7000
      
#### 67. ```fbodybodygyrojerkmagmean```:
   Mean jerk of magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7798
      
#### 68. ```fbodybodygyrojerkmagstd```:                
   Standard deviation for jerk of magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7922
      