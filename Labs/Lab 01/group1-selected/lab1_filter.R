#Landlock
Landlock <- as.numeric(Landlock)
EPILand<-EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
#
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)

ELand  
tf <- is.na(ELand)
E <- EPI[!tf]

summary(as.numeric(ELand)) 
fivenum(as.numeric(ELand),na.rm=TRUE)
stem(as.numeric(ELand))		 
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
lines(density(ELand,na.rm=TRUE,bw=1.)) 
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 

par(pty="s") 
qqnorm(ELand); qqline(ELand)

x <- rt(250, df = 5)
qqnorm(x); qqline(x)

qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

ELand <- as.numeric(ELand)
hist(ELand)
hist(ELand, seq(0., 100., 1.0), prob=TRUE)

lines(density(ELand,na.rm=TRUE,bw=1.))
rug(ELand)

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 

par(pty="s") 
qqnorm(ELand); qqline(ELand)

x <- rt(250, df = 5)
qqnorm(x); qqline(x)

qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

boxplot(ELand, DALY)
qqplot(ELand, DALY)

boxplot(ELand, ECOSYSTEM)
qqplot(Eland, ECOSYSTEM)

boxplot(Eland, ENVHEALTH)
qqplot(ELand, ENVHEALTH)

boxplot(ELand, BIODIVERSITY)
qqplot(ELand, BIODIVERSITY)

boxplot(ELand, AIR_E)
qqplot(ELand, AIR_E)

No_surface_water <- as.numeric(No_surface_water)
boxplot(EPI, No_surface_water)
qqplot(EPI, No_surface_water)

Desert <- as.numeric(Desert)
boxplot(EPI, Desert)
qqplot(EPI, Desert)

High_Population_Density <- as.numeric(High_Population_Density)
boxplot(EPI, High_Population_Density)
qqplot(EPI, High_Population_Density)

EPI_South_Asia_Region <- EPI[EPI_regions == "South Asia"]
EPI_South_Asia_Sub_Region <- EPI[GEO_subregion == "South Asia"]
