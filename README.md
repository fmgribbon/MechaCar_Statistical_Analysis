
# MechaCar Statistical Analysis

### Linear Regression to Predict MPG
The following could be inferred based on the results of the linear regression to predict MPG.
- Based on the p-values, the vehicle length and ground clearance have a significant impact on the mpg. The p-values of these variables are less than 0.05 (the assumed significance level), therefore these variables are unlikely to contribute random values to variations of the mpg.

- The p-value of 5.35 x 10^(-11) is less than 0.05 the assumed significance level. There is enough evidence to reject the null hypothesis and infer that the linear model is statistically significant. Therefore, the slope of the linear model will not be equal to zero.
- The r-squared value of 0.71 indicates a strong correlation between the variables and the mpg. 
- Since the intercept is statistically significant, this linear model does not predict mpg of MechaCar prototypes because there may be other factors that could be affect the mpg that are not included in the dataset provided. 
- This linear model performs well with the current dataset but fails to predict generalize and predict future data correctly,


### Summary Statistics on Suspension Coil
The **entire population** of the Suspension Coil has a variance of 62.29 PSI, **meets** the design specification of suspension coils must not to exceed 100 PSI. 
##Suspension Coils Variance for each Manufacturing Lot
- **Manufacturing Lot1** has a variance of 0.98 PSI, **meets** the design specification of suspension coils not to exceed 100 PSI.
- **Manufacturing Lot2** has a variance of 7.47 PSI, **meets** the design specification of suspension coils not to exceed 100 PSI.
- **Manufacturing Lot1** has a variance of 170.29 PSI, does **not meet** the design specification of suspension coils not to exceed 100 PSI.

## T-tests on Suspension Coils
###Results
#####For all Manufacturing Lots 

  - The p-value of 0.06 is greater than 0.05 means that we have enough evidence to accept the null hypothesis. There is no statistical difference between the PSI mean of all manufacturing lots and its presumed population mean = 1500 PSI.

#####For Manufacturing Lot1 & Lot2
- For both manufacturing lots 1 and 2, the p-values of 1 and 0.06 are greater than 0.05 means that we have enough evidence to accept the null hypothesis. There is no statistical difference between the PSI mean of both manufacturing lots and its presumed population mean equal to 1500 PSI. The mean of manufacturing Lot1 is equal to the presumed population mean of 1500.

#####For Manufacturing Lot3
- The p-value of 0.04 is less than 0.05 means that we have enough evidence to reject the null hypothesis. There is a statistical difference between the PSI mean of manufacturing lot3 and its presumed population mean equal to 1500 PSI.

## Study Design: MechaCar vs Competition
This statistical study compares the MechaCar performance against the performance of vehicles from competitors. 

The factors to measure the vehicle performance that will be of interest to the consumers are:
- fuel efficiency, safety rating, vehicle cost, vehicle maintenance cost

The null hypothesis for the study : 
- The performance of the MechaCar is identical to the vehicles from competitors.

The statistical test that will be used to measure vehicle performance:
- the one-sample t-test. 
- This t-test will determine how the MechaCar performance mean compare to the vehicle from other competitors’ performance mean. 

The data that is needed for the test are:

- mpg (number of miles per gallon) city 
- mpg highway
- assigned vehicle crash rating
- number of installed vehicle engineering and technology-based safety features
- annual vehicle maintenance cost
