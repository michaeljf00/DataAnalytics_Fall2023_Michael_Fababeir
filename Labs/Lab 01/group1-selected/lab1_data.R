setwd("/Users/michaeljoshua/Desktop/Data Analytics/DataAnalytics_Fall2023_Michael_Fababeir/Labs/Lab 01/group1-selected")
EPI_data <- read.csv("2010EPI_data.csv")
#or
#EPI_data <- read.xls("2010EPI_data.xls")
# Note: replace default data frame name – cannot start with numbers!
names(EPI_data) = EPI_data[1,] # make first row the headers
EPI_data = EPI_data[-1,] # remove the first row
View(EPI_data)
#
attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI <- as.numeric(EPI)
EPI  # prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

#other data
GRUMP_data <- read.csv("GPW3_GRUMP_SummaryInformation_2010.csv")

attach(GRUMP_data)

PopulationPerUnit <- as.numeric(PopulationPerUnit)
PopulationPerUnit 
tf <- is.na(PopulationPerUnit) 
P <- PopulationPerUnit[!tf]

summary(PopulationPerUnit)  
fivenum(PopulationPerUnit,na.rm=TRUE)
stem(PopulationPerUnit)	
hist(PopulationPerUnit)
lines(density(PopulationPerUnit,na.rm=TRUE,bw=1.)) 
rug(PopulationPerUnit) 
