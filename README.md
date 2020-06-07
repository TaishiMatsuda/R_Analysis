# R_Analysis
Module 15 of UofT Data Analytics Boot Camp

## Overview
To provide the technical reports based on the results of mpg testing and suspension coil testing for the MechaCar, AutosRUs’ newest prototype.

#### Objective
* Create the multiple linear regression model that represents mpg of the MechaCar and determine the factors that contribute to mpg
* Calculate basic statistics metrics and perform t-test of the weight capacity of Suspension Coils to determine that the manufacturing data meets the design specification
* Make suggestion for further development

#### Resource
* Software / Programming: R, R Studio, Jupyter Lab
* Data Source:
    1. MechaCar_mpg.csv
    2. Suspension_Coil.csv

## Results
#### MPG 
The result of statistical metrics calculated based on multiple linear regression model is as shown below.

![mpg](Image/mpg_stats.png)

The results indicate that;
* As coefficients of each independent variables are not zero, the slope of the linear model is not zero.
* Spoiler angle and presence of ADW are statistically unlikely to provide random amounts of variance to the linear model.
* Although the r-squared value of 0.71 indicates that model describes the current dataset well, low p-value of all individual variable suggests that the model will likely not represent the future data.

#### Suspension Coil
