#Cumulative Density Function
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 
qqnorm(EPI); qqline(EPI)
#Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)
#Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

help(distributions)
# try different ones.....
ECOSYSTEM <- as.numeric(ECOSYSTEM)
hist(ECOSYSTEM)
hist(ECOSYSTEM, seq(0., 100., 1.0), prob=TRUE)
help(lines)
lines(density(ECOSYSTEM,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
rug(ECOSYSTEM)

plot(ecdf(ECOSYSTEM), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 
qqnorm(ECOSYSTEM); qqline(ECOSYSTEM)
#Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)
#Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

BIODIVERSITY <- as.numeric(BIODIVERSITY)
hist(BIODIVERSITY)
hist(BIODIVERSITY, seq(0., 100., 1.0), prob=TRUE)
help(lines)
lines(density(BIODIVERSITY,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
rug(BIODIVERSITY)

plot(ecdf(BIODIVERSITY), do.points=FALSE, verticals=TRUE) 
#Quantile-Quantile?
par(pty="s") 
qqnorm(BIODIVERSITY); qqline(BIODIVERSITY)
#Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)
#Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

DALY <- as.numeric(DALY)
boxplot(EPI, DALY)
qqplot(EPI, DALY)

ECOSYSTEM < as.numeric(ECOSYSTEM)
AIR_H <- as.numeric(AIR_H)
boxplot(ECOSYSTEM, AIR_H)
qqplot(ECOSYSTEM, AIR_H)

ENVHEALTH <- as.numeric(ENVHEALTH)
WATER_H <- as.numeric(WATER_H)
boxplot(ENVHEALTH, WATER_H)
qqplot(ENVHEALTH, WATER_H)

BIODIVERSITY <- as.numeric(BIODIVERSITY)
WATER_E <- as.numeric(WATER_E)
boxplot(BIODIVERSITY, WATER_E)
qqplot(BIODIVERSITY, WATER_E)

AIR_E <- as.numeric(AIR_E)
boxplot(AIR_E, EPI)
qqplot(AIR_E, EPI)



