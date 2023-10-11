setwd("/Users/michaeljoshua/Desktop/Data Analytics/DataAnalytics_Fall2023_Michael_Fababeir/Labs/Lab 02")
EPI_data <- read.csv("2010EPI_data.csv")

names(EPI_data) = EPI_data[1,]
EPI_data = EPI_data[-1,]
View(EPI_data)

mode_func = function(values) {
  return(sort(-table(values))[1])
}

attach(EPI_data)
AIR_E <- as.numeric(AIR_E)
tf <- is.na(AIR_E) # records True values if the value is NA
A <- AIR_E[!tf] # filters out NA values, new array
mean(A)
median(A)
mode_func(A)
range(A)
WATER_E <- as.numeric(WATER_E)
tf <- is.na(WATER_E)
W <- WATER_E[!tf]
mean(W)
median(W)
mode_func(W)
range(W)

AIR_H <- as.numeric(AIR_H)
WATER_H <- as.numeric(WATER_H)
boxplot(A, EPI)
boxplot(A, WATER_E)
boxplot(A, AIR_H)
boxplot(A, WATER_H)
boxplot(A, W)
boxplot(W, EPI)
boxplot(W, WATER_E)
boxplot(W, AIR_H)
boxplot(W, WATER_H)

NOX_pt <- as.numeric(NOX_pt)
tf <- is.na(NOX_pt)
N <- NOX_pt[!tf]
mean(N)
median(N)
mode_func(N)
range(N)

SO2_pt <- as.numeric(SO2_pt)
tf <- is.na(SO2_pt)
S <- SO2_pt[!tf]
mean(S)
median(S)
mode_func(S)
range(S)

OZONE_pt <- as.numeric(OZONE_pt)
WQI_pt <- as.numeric(WQI_pt)
boxplot(OZONE_pt, EPI)
boxplot(OZONE_pt, WATER_E)
boxplot(OZONE_pt, A)
boxplot(OZONE_pt, N)
boxplot(OZONE_pt, WQI_pt)
boxplot(OZONE_pt, WQI_pt)
boxplot(WQI_pt, EPI)
boxplot(WQI_pt, WATER_E)
boxplot(WQI_pt, A)
boxplot(WQI_pt, N)

CLIMATE <- as.numeric(CLIMATE)
tf <- is.na(CLIMATE)
C <- CLIMATE[!tf]
mean(C)
median(C)
mode_func(C)
range(C)

AGRICULTURE <- as.numeric(AGRICULTURE)
tf <- is.na(AGRICULTURE)
AG <- AGRICULTURE[!tf]
mean(AG)
median(AG)
mode_func(AG)
range(AG)

FISHERIES <- as.numeric(FISHERIES)
NMVOC_pt <- as.numeric(NMVOC_pt)
boxplot(FISHERIES, EPI)
boxplot(FISHERIES, C)
boxplot(FISHERIES, AG)
boxplot(FISHERIES, WATER_E)
boxplot(FISHERIES, WQI_pt)
boxplot(FISHERIES, NMVOC_pt)
boxplot(NMVOC_pt, EPI)
boxplot(NMVOC_pt, C)
boxplot(NMVOC_pt, AG)
boxplot(NMVOC_pt, WATER_E)

qqplot(AIR_E, WATER_E)
qqplot(NOX_pt, SO2_pt)
qqplot(OZONE_pt, WQI_pt)
qqplot(CLIMATE, AGRICULTURE)
qqplot(FISHERIES, NMVOC_pt)
