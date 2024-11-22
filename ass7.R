#1
n <- 100
df <- n - 1

random_t_values <- rt(100, df)

# Plot the histogram
hist(random_t_values, 
     main = paste("Histogram of t-distribution with df =", df), 
     xlab = "t-values", 
     col = "lightblue", 
     border = "black", 
     breaks = 30)
#2

# Set the sample size and degrees of freedom
x<- rchisq(100,2)
y<-rchisq(100,10)
z<-rchisq(100,25)
par(mfrow=c(1,3))
hist(x,col="pink")
hist(y,col="lightblue")
hist(z,col="yellow")
par(mfrow=c(1,1))
#3

# Step 1: Generate a vector of 100 values between -6 and 6
x_values <- seq(-6, 6, length.out = 100)

# Step 2: Compute the values of the t-distribution for different degrees of freedom
df<-c(1,4,10,30)
colors<-c("red","yellow","lightblue","pink")
plot(x_values,dt(x_values,df[4]),col=colors[4],xlab = "x", ylab = "Density" )
for(i in 1:3){lines(x_values,dt(x_values,df[i]),col=colors[i])
}

#4
#i)
# (i) Find the 95th percentile of the F-distribution with df1 = 10 and df2 = 20
v1 <- 10
v2 <- 20
percentile_95 <- qf(0.95, df1 = v1, df2 = v2)
percentile_95

#(ii)
# (ii) Area under the F-curve for the intervals [0, 15] and [15, ∞) with v1 = 10 and v2 = 20
area_0_1.5 <- pf(1.5, df1 = v1, df2 = v2)
area_1.5_infinity <- 1 - area_0_1.5  # The area to the right of 15

# Print results
area_0_1.5
area_1.5_infinity


# (iii) Quantiles for given probabilities under the curve for F-distribution with v1 = 10 and v2 = 20
probabilities <- c(0.25, 0.50, 0.75, 0.999)
quantiles <- qf(probabilities, df1 = v1, df2 = v2)

# Print the quantiles
quantiles

# (iv) #Generate 1000 random values from the F-distribution and plot a histogram
set.seed(123)  # For reproducibility
random_f_values <- rf(1000, df1 = v1, df2 = v2)

# Plot histogram
hist(random_f_values, breaks = 30, col = "lightblue", border = "black", 
     main = "Histogram of F-distribution (v1 = 10, v2 = 20)", 
     xlab = "F-values", ylab = "Frequency")