butterfly <- read.csv(file = "~/R/butterflies.csv")
time<-butterfly$DevelopmentTime
weight<-butterfly$AdultWeight
sex<- butterfly$Sex

#anova
m=lm(weight~sex)
anova(m)
summary(m)
#means of sex groups
mx=lm(weight~sex-1)
summary(mx)
confint(mx)

#linear regression
m1=lm(weight~time)
summary(m1)
#ow much weight changes for a one standard deviation change in time
coefs = summary(m1)$coef
(coefs[2,1]*(mean(time) + sd(time))) - (coefs[2,1]*mean(time))
#fitted models intercept
coefs[1,1]
#fitted models slope
coefs[2,1]


