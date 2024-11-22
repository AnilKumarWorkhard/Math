install.packages("pracma")
library("pracma")

#Q1
#p1
f=function(x,y)
{2*(2*x+3*y)/5}
jf=integral2(f,xmin=0,xmax=1,ymin=0,ymax=1)
jf
jf$Q

#p2
g=function(y) {f(1,y)}
integrate(g,ymin=0,ymax=1)

#p3
h=function(x) {f(x,0)}
integrate(h,xmin=0,xmax=1)

#p4
f1=function(x,y)
{x*y*f(x,y)}
integral2(f,0,1,0,1)

#Q2
x=c(0:3)
y=c(0:2)
f=function(x,y)
{(x+y)/30}

#p1
m1=matrix(c(f(0:3,0),f(0:3,1),f(0:3,2)),nrow=4,ncol=3,byrow=FALSE)
m1

#p2
sum(m1)

#p3
g_x=apply(m1,1,sum)
g_x

#p4
h_y=apply(m1,2,sum)
h_y

#p5
m1[1,2]/h_y[2]

#p6

E_x <- sum(x*g_x)
E_x

E_y <- sum(y*h_y)
E_y


#E(xy)
f1=function(x,y)
{x*y*(x+y)/30}

m2=matrix(c(f1(0:3,0),f1(0:3,1),f1(0:3,2)),nrow=4,ncol=3,byrow=FALSE)
E_xy <- sum(m2)
E_xy

var_x <- sum(x^2*g_x) - (E_x)^2
var_x


var_y <- sum(y^2*h_y) - (E_y)^2
var_y

cov_xy <- E_xy - E_x*E_y
cov_xy

cof=cov_xy/sqrt(var_x)*sqrt(var_y)
cof