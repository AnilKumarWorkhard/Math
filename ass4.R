#ASSIGNMENT 4

#QUESTION 1

#x <- c(0,1,2,3,4)
#p <- c(0.41,0.37,0.16,0.05,0.01)
#sm <- sum(x*p)
#xsm <- sum (x)
#ans <- sm/xsm
#weighted.mean (x,p)
#ans<- c(x %*% p)
#ans


#QUESTION 2

#f <- function(t){t*(0.1*exp(-0.1*t))}
#exp ke saath ^ nhi lagta. sidha bracket me power aati hai
#ans <- integrate(f,0,Inf)
#Infinity ke liye use Inf
#print(ans$value) # to only print absolute error


#QUESTION 3

#x <- c(0,1,2,3)
#p <- c(0.1,0.2,0.2,0.5)
#y = 10*x -12     #12x - 2(3-x) -18
#x ki prob and y ki prob same hogi
#weighted.mean (y,p)


#QUESTION 4

#f1 <- function(t){t*(0.5*exp(-(abs(t))))}
#fmt <- integrate(f1,1,10)
#f2 <- function(t){t^2*(0.5*exp(-(abs(t))))}
#smt <- integrate(f2,1,10)
#var <- smt$value - (fmt$value)^2


#QUESTION 5

#x <- c(1,2,3,4,5)
#fnc <- function(y){3/4*((1/4)^(sqrt(y)-1))}
#y <- x^2
#proby <- f(y)
#sm <- (y*prob)

#m1 <- weighted.mean(y,prob)
#m2 <- sum(y^2,prob)
#var <- m2 - m1^2