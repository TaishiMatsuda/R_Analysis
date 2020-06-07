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
Two tables and a image below show the summary statistics of the capacity test of the suspension coils and the result of one sample t-test. 
The results indicate that;
* Although overall variance is lower than the design specification of less than 100, the variance of Lot3 is clearly above the design value.
* Compliance to design specification is extremely important for the car industry as the failure of the car could lead to a tragic accident and therefore strict significant level (0.001) should be applied.
* Result of t-test shows p-value of 0.03, which means that the mean of the samples are statistically different from 1500.
* Therefore the suspension coils are not meeting the design capacity and it is strongly suggested to review the manufacturing process, especially the issue that may have occured during lot 3.
* Note one sided hypothesis is used for t-test as having a suspension with higher capacity will not cause any significant issue.

Summary of all test results:
![Coil_all](Image/all_coil.png)

Test results by lots:
![Coil_byLot](Image/coil_per_lots.png)

One Sample t-test:
![Coil_ttest](Image/coil_ttest.png)

## Further Development
#### Fuel Efficiency
* Background: Fuel consumption rating is one of the most important value for the customers as it highly impact the running cost of the vehicle. In addition, there are growing concerns around the environment such as global warming and many customers are highly sensible to how clean the product is.
* Method: According to Natural Resources Canada [*1], there are specific rules or regulations around how the fuel efficiency should be tested. The fuel consumption of the engine should be tested several times for both the use within the cities and on the highways. One sample t-test can be used by comparing the mean fuel consumption of other vehicle of same class as population and the test results of MechaCar as the sample. Null hypothesis would be the mean fuel consumption of the MechaCar's engine is equal to that of other engines used by other vehicle of same class.
* Data Gathering: As stated above, the test mothod has to follow the regulation which indicates that the values of fuel consumption rate for each vehicle can easily be gathered from the automakers' web page. We can simply use the mean value of those rate as mean for the population. Sample data can be gathered by performing test on the MechaCar's engine.

## Reference
1. EnerGuide in Canada, Government of Canada, https://www.nrcan.gc.ca/energy-efficiency/energuide/12523