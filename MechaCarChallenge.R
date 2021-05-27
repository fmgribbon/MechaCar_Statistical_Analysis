library(dplyr)
# Linear Regression
mecha_car <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) )# generate summary statistics
suspension_coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import suspension_coil dataset

# Statistical summary for the entire population
total_summary <- suspension_coil %>%summarize(Mean = mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD = sd(PSI))
# Statistical summary for each Manufacturing Lots            
group_total_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot)  %>%
  summarize(Mean = mean(PSI),
            Median=median(PSI),
            Variance=var(PSI),
            SD = sd(PSI),
            .groups = 'keep')



# t-test to compare population mean vs all manufacturing lots
t.test(suspension_coil$PSI, mu = 1500)


# t-test to compare means of each Manufacturing Lots

t.test(subset(suspension_coil,suspension_coil$Manufacturing_Lot == "Lot1",select = c(PSI)), mu=1500) #compare LOT1 versus population mean
                                                                  
t.test(subset(suspension_coil,suspension_coil$Manufacturing_Lot == "Lot2",select = c(PSI)), mu=1500) #compare LOT2 versus population mean

t.test(subset(suspension_coil,suspension_coil$Manufacturing_Lot == "Lot3",select = c(PSI)), mu=1500) #compare LOT2 versus population mean








                     