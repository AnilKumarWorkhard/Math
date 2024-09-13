#ProbNdStats Assignment 3

#Question 1 (Binomial Distribution)

dbinom (7,12,1/6) + dbinom (8,12,1/6) + dbinom (9,12,1/6)
pbinom (9,12,1/6) - pbinom (6,12,1/6)
diff (pbinom(c(6,9) , size = 12 , prob = 1/6))


#Question 2 (Normal Distribution)

pnorm (84 , mean = 72 , sd = 15.2 , lower.tail = FALSE)
1 - (pnorm (84 , mean = 72 , sd = 15.2 , lower.tail = TRUE))


#Question 3 (Poisson Distribution)

dpois (0,5 , log = FALSE)
ppois(50,50,lower.tail = TRUE, log.p = FALSE) - ppois(47,50,lower.tail = TRUE, log.p = FALSE) #ppois used since hume exact nhi chahiye. 47 se minus karna cuz 48 hume include karna hai


#Question 4 (Hypergeometric Distribution)

dhyper (3,17 , 233 , 5)  #dhyper (k,K,N-K ,n) k-> exactly defective , K-> Total defective , N -> Total no. of items , n-> Sample size


#Question 5 (Binomial Distribution)

n<- 31
p <- 0.447

k <- 0:31

pmf_values <- dbinom(k, size=n, prob=p)

plot(k, pmf_values, type='h', lwd=2, col='pink',xlab='Number of Students Using Wikipedia', ylab='Probability', main='Probability Mass Function of X')

cdf_values <- pbinom (k,size=n, prob=p)
plot(k, cdf_values, type='s', lwd=2, col='purple',xlab='Number of Students Using Wikipedia', ylab='Cumulative Probability', main='Cumulative Distribution Function of X')

#Mean
mean_x <- n*p
#Variance
variance_x <- n*p*(1-p)
#Standard Deviation
std_x <- sqrt(variance_x)

cat("Mean:", mean_x, "\n")
cat("Variance:", variance_x, "\n")
cat("Standard Deviation:", std_x, "\n")