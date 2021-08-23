# Deliverable 1

?library
library(dplyr)

library(tidyverse)

MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg_table)

?lm
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_table)

?summary
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_table))

# Deliverable 2

Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(Suspension_Coil_table)

?summarize
total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(total_summary)

lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
head(lot_summary)

# Deliverable 3

t.test((Suspension_Coil_table$PSI),mu=1500)

t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1")$PSI),mu=(1500))
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2")$PSI),mu=(1500))
t.test((subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3")$PSI),mu=(1500))