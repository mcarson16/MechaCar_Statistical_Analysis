# MechaCar_Statistical_Analysis
## Overview
The purpose of this analysis is to offer insights on the MechaCar's production that can inform decision-making for the manufacturing team. Using R and the dplyr library, we performed a statistical analysis on two datasets pertaining to the mpg of MechaCar prototypes, and the PSI of the suspension coils in manufacturing lots, respectively.
## Resources
- Data Source: [MechaCar_mpg](https://github.com/mcarson16/MechaCar_Statistical_Analysis/blob/main/resources/MechaCar_mpg.csv), [Suspension_Coil](https://github.com/mcarson16/MechaCar_Statistical_Analysis/blob/main/resources/Suspension_Coil.csv)
- Software: RStudio
## Results
### Linear Regression to Predict MPG
![d1 Linear Regression](https://user-images.githubusercontent.com/83254435/130503442-a5d2ab28-5871-4494-8963-f4eb8ec51f54.PNG)

![d1 Summary](https://user-images.githubusercontent.com/83254435/130503492-2014c520-c2eb-4dc2-81e9-a17ad64d3cc5.PNG)

- vehicle_length and ground_clearance provided a non-random amount of variance. These variables have a high level of significance. However, there are still other factors contributing to the variance of the MechaCar's mpg, demonstrated by the Intercept.
- The slope of the linear model is non-zero. 3 of the independent variables have significant influence on the dependent variable.
- The model can be considered effective. The r-squared value estimates a correct prediction of mpg 71% of the time.

### Summary Statistics on Suspension Coils
- Design specifications state that the variance in PSI for MechaCar suspension coils must not exceed 100 PSI.

![d2 total_ummary](https://user-images.githubusercontent.com/83254435/130503532-f51255a3-0c5e-4cb4-a9a0-90b68dfd0a83.PNG)

- When analyzed in aggregate, the current variance falls within design specifications.

![d2 lot_summary](https://user-images.githubusercontent.com/83254435/130503550-3e8f9e80-d844-415b-8557-598c2c6adca5.PNG)

- When individual lots are analyzed, significant variance emerges.
- Lots 1 and 2 fall within design specifications.
- Lot 3 exceeds design specifications by almost double the alotted amount. This should be investigated immediately, as it may be indicative of a systemic rather than a human error.

### T-Tests on Suspension Coils
- T-Tests were performed to determine whether the aggregate of manufacturing lots, or the individual manufacturing lots, are statistically different from the population mean of 1500 PSI.
  - NULL Hypothesis: There is no significant difference between the mean PSI of all manufacturing lots and individual lots and population mean of 1500 PSI.
  - Alternative Hypothesis: There is significant difference between the mean PSI of all manufacturing lots and population mean of 1500 PSI

![d3 ttest total](https://user-images.githubusercontent.com/83254435/130503581-ea9027ff-bb3c-4cea-b0e7-c9b09437a29e.PNG)

- The aggregate group's p-value was greater than .05. We fail to reject the null hypothesis that there is no significant difference between the mean PSI of all manufacturing lots and individual lots and population mean of 1500 PSI.

![d3 ttest lots](https://user-images.githubusercontent.com/83254435/130503602-5ec3a78f-c8da-444d-99bb-a7dbbbb396bb.PNG)

- Lot 1 and Lot 2 have p-values greater than .05. We fail to reject the null hypothesis that there is no significant difference between the mean PSI of all manufacturing lots and individual lots and population mean of 1500 PSI.
- Lot 3 has a p-value lower than .05. This suggests strong evidence to reject the null hypothesis. Ergo, there is significant difference between the mean PSI of all manufacturing lots and population mean of 1500 PSI

### Study Design: MechaCar Competition
To compare MechaCar against the competition, we propose performing statistical analysis on Safety Ratings.

  - Data type: Categorical, Ordinal, 1 to 5 star ratings.
  - Test: Chi-Squared Test
  - NULL Hypothesis: There is no significant difference in the categorical frequencies of safety ratings for MechaCar and the competition.
  - Alternative hypothesis: There is a significant difference in the categorical frequencies of safety ratings for MechaCar and the competition.
