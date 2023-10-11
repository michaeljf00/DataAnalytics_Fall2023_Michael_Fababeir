EPI2010_data <- read.csv("2010EPI_data.csv", nrows = 4999)

names(EPI2010_data) = EPI2010_data[1,]
EPI2010_data = EPI2010_data[-1,]

EPI2010_data$ENVHEALTH <- as.numeric(EPI2010_data$ENVHEALTH)

EPI2010_data$ECOSYSTEM <- as.numeric(EPI2010_data$ECOSYSTEM)
shapiro.test(EPI2010_data$ECOSYSTEM)

EPI2010_data$DALY <- as.numeric(EPI2010_data$DALY)
EPI2010_data$AIR_H <- as.numeric(EPI2010_data$AIR_H)
EPI2010_data$WATER_H <- as.numeric(EPI2010_data$WATER_H)

shapiro.test(EPI2010_data$ENVHEALTH)
shapiro.test(EPI2010_data$DALY)
shapiro.test(EPI2010_data$AIR_H)
shapiro.test(EPI2010_data$WATER_H)

EPI_data <- read.csv("EPI_data.csv")
names(EPI_data) = EPI_data[1,]
EPI_data = EPI_data[-1,]

attach(EPI_data)

ENVHEALTH <- as.numeric(ENVHEALTH)
DALY <- as.numeric(DALY)
AIR_H <- as.numeric(AIR_H)
WATER_H <- as.numeric(WATER_H)
dim(EPI2010_data)
shapiro.test(ENVHEALTH)
shapiro.test(DALY)
shapiro.test(AIR_H)
shapiro.test(WATER_H)

# It seems that the data for all for variables is not representative of normally
# distributed data. The significance level for all of these variables are below
# a p-value of 0.05 meaning the tests reject the hypothesis of normality. This
# ikely due too the large sample size being 4999 taken from the data set. The
# W values of each of the variables range from0.87 to 0.93, indicating that the
# variables are at a good fit to a normal distribution

