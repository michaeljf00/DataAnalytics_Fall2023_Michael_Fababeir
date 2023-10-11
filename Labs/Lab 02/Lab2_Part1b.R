setwd("/Users/michaeljoshua/Desktop/Data Analytics/DataAnalytics_Fall2023_Michael_Fababeir/Labs/Lab 02")
EPI_data <- read.csv("2010EPI_data.csv")

names(EPI_data) = EPI_data[1,]
EPI_data = EPI_data[-1,]

attach(EPI_data)

ENVHEALTH <- as.numeric(ENVHEALTH)
DALY <- as.numeric(DALY)
AIR_H <- as.numeric(AIR_H)
boxplot(ENVHEALTH, DALY, AIR_H, WATER_H)
lmENVH <- lm(ENVHEALTH ~ DALY + AIR_H + WATER_H)
summary(lmENVH)
cENVH <- coef(lmENVH)

DALYNEW <- c(seq(5, 95, 5))
AIR_HNEW <- c(seq(5, 95, 5))
WATER_HNEW <- c(seq(5, 95, 5))
NEW <- data.frame(DALYNEW, AIR_HNEW, WATER_HNEW)
pENV <- predict(lmENVH, NEW, interval ="prediction")
cENV <- predict(lmENVH, NEW, interval = "confidence")

boxplot(AIR_E, CLIMATE, AIR_H, WATER_H)

Model1 <- lm(AIR_E ~ DALY + AIR_H + WATER_H) 

Model2 <- lm(CLIMATE ~ DALY + AIR_H + WATER_H)

summary(Model1)
summary(Model2)

cAIR_E <- coef(Model1)
cCLIMATE <- coef(Model2)

predict(Model1, NEW, interval = "prediction")
predict(Model2, NEW, interval = "confidence")
