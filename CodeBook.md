---
title: "Code book"
author: "LAMrRau"
date: "7/18/2017"
output:
   html_document:
      toc: true
      toc_depth: 2
---
This code book shall explain the procedure to convert the raw data (10299 observations for 562 variables), as presented here: <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>, to the two datasets (10299 obsercations for 67 variables) included in this repository. Furthermore, the column variables of the datasets are summarized.

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

Description for the 67 variables contained in the data sets. normalized and centered

####  1. ```activity```:
   Activity performed by subject during measurement.
   
   Values:
   
   * walking
   * walkingupstairs
   * walkingdownstairs
   * sitting
   * standing
   * laying

####  2. ```tbodyaccmeanx```:
   Mean body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.2743
   
####  3. ```tbodyaccmeany```:
   Mean body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.01774
   
####  4. ```tbodyaccmeanz```:
   Mean body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.10892
   
####  5. ```tbodyaccstdx```:
   Standard deviation for body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6078
   
####  6. ```tbodyaccstdy```:
   Standard deviation for body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.51019
   
####  7. ```tbodyaccstdz```:
   Standard deviation for body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6131
   
####  8. ```tgravityaccmeanx```:
   Mean gravity acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.6692
   
####  9. ```tgravityaccmeany```:
   Mean gravity acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.004039
   
#### 10. ```tgravityaccmeanz```:
   Mean gravity acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.09215
   
#### 11. ```tgravityaccstdx```:
   Standard deviation for gravity acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.9652
   
#### 12. ```tgravityaccstdy```:
   Standard deviation for gravity acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.9544
   
#### 13. ```tgravityaccstdz```:
   Standard deviation for gravity acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.9389
   
#### 14. ```tbodyaccjerkmeanx```:
   Mean jerk signal for the body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.07894
   
#### 15. ```tbodyaccjerkmeany```:
   Mean jerk signal for the body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.007948
   
#### 16. ```tbodyaccjerkmeanz```:
   Mean jerk signal for the body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.004675
   
#### 17. ```tbodyaccjerkstdx```:
   Standard deviation for jerk signal for the body linear acceleration in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6398
   
#### 18. ```tbodyaccjerkstdy```:
   Standard deviation for jerk signal for the body linear acceleration in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6080
   
#### 19. ```tbodyaccjerkstdz```:
   Standard deviation for jerk signal for the body linear acceleration in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7628
   
#### 20. ```tbodygyromeanx```:
   Mean body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.03098
   
#### 21. ```tbodygyromeany```:
   Mean body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.07472
   
#### 22. ```tbodygyromeanz```:
   Mean body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = 0.08836
   
#### 23. ```tbodygyrostdx```:
   Standard deviation for body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7212
   
#### 24. ```tbodygyrostdy```:
   Standard deviation for body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6827
   
#### 25. ```tbodygyrostdz```:
   Standard deviation for body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6537
   
#### 26. ```tbodygyrojerkmeanx```:
   Mean jerk signal for body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.09671
   
#### 27. ```tbodygyrojerkmeany```:
   Mean jerk signal for body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.04232
   
#### 28. ```tbodygyrojerkmeanz```:
   Mean jerk signal for body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.05483
   
#### 29. ```tbodygyrojerkstdx```:
   Standard deviation for jerk signal for body angular velocity in X direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7313
   
#### 30. ```tbodygyrojerkstdy```:
   Standard deviation for jerk signal for body angular velocity in Y direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7861
   
#### 31. ```tbodygyrojerkstdz```:
   Standard deviation for jerk signal for body angular velocity in Z direction (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7399
   
#### 32. ```tbodyaccmagmean```:
   Mean magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5482
   
#### 33. ```tbodyaccmagstd```:
   Standard deviation of magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5912
   
#### 34. ```tgravityaccmagmean```:
   Mean magnitude for gravity linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5482
   
#### 35. ```tgravityaccmagstd```:
   Standard deviation of magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5912
   
#### 36. ```tbodyaccjerkmagmean```:
   Mean jerk of magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6494
   
#### 37. ```tbodyaccjerkmagstd```:
   Standard deviation of jerk for magnitude for body linear acceleration(time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6278
   
#### 38. ```tbodygyromagmean```:
   Mean magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6052
   
#### 39. ```tbodygyromagstd```:
   Standard deviation of magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6625
   
#### 40. ```tbodygyrojerkmagmean```:
   Mean of jerk for magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7621
   
#### 41. ```tbodygyrojerkmagstd```:
   Standard deviation of jerk for magnitude for body angular velocity (time domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7780
   
#### 42. ```fbodyaccmeanx```:
   Mean body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6228
   
#### 43. ```fbodyaccmeany```:
   Mean body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5375
   
#### 44. ```fbodyaccmeanz```:
   Mean body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6650
   
#### 45. ```fbodyaccstdx```:
   Standard deviation for body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6034
   
#### 46. ```fbodyaccstdy```:
   Standard deviation for body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.52842
   
#### 47. ```fbodyaccstdz```:
   Standard deviation for body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6179
   
#### 48. ```fbodyaccjerkmeanx```:
   Mean jerk signal for the body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6567
          
#### 49. ```fbodyaccjerkmeany```: 
   Mean jerk signal for the body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6290 
                    
#### 50. ```fbodyaccjerkmeanz```:
   Mean jerk signal for the body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7436
          
#### 51. ```fbodyaccjerkstdx```:   
   Standard deviation for jerk signal for the body linear acceleration in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6550
            
#### 52. ```fbodyaccjerkstdy```:    
   Standard deviation for jerk signal for the body linear acceleration in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6122
           
#### 53. ```fbodyaccjerkstdz```:
   Standard deviation for jerk signal for the body linear acceleration in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7809
   
#### 54. ```fbodygyromeanx```:  
   Mean body angular velocity in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6721
                           
#### 55. ```fbodygyromeany```:  
   Mean body angular velocity in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7062
                           
#### 56. ```fbodygyromeanz```:  
   Mean body angular velocity in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6442
               
#### 57. ```fbodygyrostdx```:   
   Standard deviation for body angular velocity in X direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7386
                              
#### 58. ```fbodygyrostdy```:   
   Standard deviation for body angular velocity in Y direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6742
                              
#### 59. ```fbodygyrostdz```:   
   Standard deviation of body angular velocity in Z direction (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6904
                    
#### 60. ```fbodyaccmagmean```:      
   Mean magnitude for body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.5860
          
#### 61. ```fbodyaccmagstd```:           
   Standard deviation of magnitude for body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6595
      
#### 62. ```fbodybodyaccjerkmagmean```:           
   Mean jerk of magnitude for body-body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6208
      
#### 63. ```fbodybodyaccjerkmagstd```:         
   Standard deviation for jerk of magnitude for body-body linear acceleration (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6401
         
#### 64. ```fbodybodygyromagmean```:        
   Mean magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.6974
      
#### 65. ```fbodybodygyromagstd```:                     
   Standard deviation of magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7000
      
#### 66. ```fbodybodygyrojerkmagmean```:
   Mean jerk of magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7798
      
#### 67. ```fbodybodygyrojerkmagstd```:                
   Standard deviation for jerk of magnitude for body-body angular velocity (frequency domain)
   
   Value range:
   
   * maxVal =  1.0000
   * minVal = -1.0000
   * mean = -0.7922
      