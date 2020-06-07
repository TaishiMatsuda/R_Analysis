# Load mpg Testing Dataset and Suspension Coil Test Results
mpg_data <- read.csv('MechaCar_mpg.csv')
coil_data <- read.csv('Suspension_Coil.csv')

# Generate Multiple Linear Regression Model
mpg_model = lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data=mpg_data)
# Generate Summary Statistics for mpg
summary(mpg_model)

# Create Summary Table for Suspension Coil Test Results
summarize_coil <- coil_data %>% summarize(Max=max(PSI),Min=min(PSI),Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StandardDeviation=sd(PSI))
# Create Summary Table for Suspension Coil Test Results per Lots
summarize_coil_lots <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Max=max(PSI),Min=min(PSI),Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StandardDeviation=sd(PSI))

# Perform One Sample t-test
t.test(coil_data$PSI,mu=1500,alternative="less")
