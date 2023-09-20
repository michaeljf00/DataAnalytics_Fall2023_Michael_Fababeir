summary(as.numeric(EPI))  # stats 
fivenum(as.numeric(EPI),na.rm=TRUE)
help(stem)
stem(as.numeric(EPI))		 # stem and leaf plot
help(hist)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
help(lines)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
help(rug)
rug(EPI) 

