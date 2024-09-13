#Question 1(a)
#chest=c(rep("gold",20),rep("silver",30),rep("bronze",50))
#sample(x = chest , size = 10)

#Question 1(b)
#options_vector = c("success" , "failure")
#prob = c(0.9,0.1)
#sample(x = options_vector, size= 10 ,replace = TRUE, prob = prob )   # Replace = TRUE Means replacement hogi after taking out one coin

#Question 2
birthday_prob = function(n){
  if (n>365){
    return (1)
  }
  
  prob_not_shared = 1
  for (i in range (0:n-1)){
    prob_not_shared = prob_not_shared * (365-i)/365
  }
  
  prob_shared <- 1 - prob_not_shared
  return(prob_shared)
}

n_values = 2

probabilities = sapply(n_values, birthday_prob)
results <- data.frame(n = n_values, Probability = probabilities)
print(results)




#Question 3
#cond_prob = function(PA , PB , PA_B){
#  PB_A = (PA_B * PB)/PA
# return (PB_A)
#}
#PA = 0.4
#PB = 0.2
#PA_B = 0.85
#cond_prob(PA, PB , PA_B)

#Question 4
#data = iris
#head(data)
#str(iris)
#range(data$Sepal.Length)
#mean(data$Sepal.Length)
#median(data$Sepal.Length)
#quantile(data$Sepal.Length , 0.25)
#quantile(data$Sepal.Length , 0.75)
#range = quantile(data$Sepal.Length , 0.75) - quantile(data$Sepal.Length , 0.25)
#print(range)
#IQR (data$Sepal.Length)  #DIRECT FORMULA FOR RANGE
#sd (data$Sepal.Length)

#(Lapply [ , 1:4] , var)   --> for variance or std variation
#summary(data)

#Question 5
#calculate_mode = function(data_vector){
#  value_counts = table(data_vector)
#  max_frequency = max(value_counts)
#  
#  mode_values = names(value_counts[value_counts == max_frequency])
#  return (mode_values)
#}

#data_vector = c(1, 2, 3, 2, 4, 1, 2, 3, 2, 4)
#mode_ans = calculate_mode(data_vector)
#print (mode_ans)

