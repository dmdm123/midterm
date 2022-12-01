butterfly <- read.csv(file = "~/R/butterflies.csv")
time<-butterfly$DevelopmentTime
weight<-butterfly$AdultWeight
sex<- butterfly$Sex
s<-factor(sex)


lr <- ggplot(butterfly, aes(x=time,y=weight))
lr + geom_point(shape=1) + geom_smooth(method=lm) + theme_bw() + theme(aspect.ratio = 1,text = element_text(size=16)) + labs(x="Time(days)", y="Weight (g)")
             
p <- ggplot(butterfly, (aes(x=time, y=weight, color=sex))) + theme_bw() +labs(x="Time(days)", y="Weight(g)")
p + geom_point() + geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+ theme(aspect.ratio = 1,text = element_text(size=16)) + theme(legend.position = c(0.9,0.9))+theme(legend.title=element_blank())

b<-ggplot(butterfly, aes(sex, weight))
bp<-b + geom_boxplot(aes(fill=sex))+labs(x="Sex", y="Weight (g)")+theme_bw()
bp + theme(aspect.ratio = 1, text = element_text(size=16))

     