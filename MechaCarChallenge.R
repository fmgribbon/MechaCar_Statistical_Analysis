library(dplyr)
# Linear Regression
mecha_car <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) )# generate summary statistics
suspension_coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import suspension_coil dataset

total_summary <- suspension_coil %>%summarize(Mean = mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD = sd(PSI))
            
group_total_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot)  %>%
  summarize(Mean = mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD = sd(PSI),
            .groups = 'keep')







                     