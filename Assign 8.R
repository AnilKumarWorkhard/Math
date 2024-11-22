
#Ques 1
#part a
data=read.csv(file.choose())
str(data)

#part b
nrow(data)
ncol(data)
dim(data)
head(data,10)

#part c
pop_mean=mean(data$Wall.Thickness)
pop_mean
hist(data$Wall.Thickness)

#part d
abline(v=pop_mean,col='blue')


#part a
n=1000
s1=c()
for(i in 1:n)
{
  s1[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
}
hist(s1)
abline(v=mean(s1))

#part b
n=1000 #random numer ha
s2=c()
s3=c()
s4=c()
for(i in 1:n)
{
  s2[i]=mean(sample(data$Wall.Thickness,50,replace=TRUE))
  s3[i]=mean(sample(data$Wall.Thickness,500,replace=TRUE))
  s4[i]=mean(sample(data$Wall.Thickness,9000,replace=TRUE))
  
}
par(mfrow=c(1,3))
hist(s2)
abline(v=mean(s2))

hist(s3)
abline(v=mean(s3))

hist(s4)
abline(v=mean(s4))


#Ques 2
x=c(58,69,43,39,63,52,47,31,74,36)
y=c(189,235,193,177,154,191,213,165,198,181)
reg=lm(y~x)
plot(x,y,pch=16,abline(reg))

#at x=60, y=?
z=predict(reg,data.frame(x=60))
z

  
#Ques 3
#level of significance + level of confidence=100% , we use confidence in function
#positive y ---y is correct (favour)
#negative y ---y is incorrect (not in favour)

x=c(145,173,158,141,167,159,154,167,145,153)
y=c(155,167,156,149,168,162,158,169,157,161)


t.test(x,y,alternative="greater",mu=0,paired=TRUE,conf.level=0.95)
#answer is -ve, so not in favour









