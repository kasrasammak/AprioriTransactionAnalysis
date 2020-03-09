
#Daneille Jeffery and Kasra Sammak
#Version 1
##Graph number of Rules created when inputting different support and confidence levels
#Idea and Graph and Set up from Danielle, Matrix and completion from Kasra

# Support and confidence values
supportLevels <- c(0.0009, 0.0007, 0.0005, 0.0003)
confidenceLevels <- c(0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1)

#create the matrix with empty values with the length of the arrays above
rulesMat <- matrix(nrow=length(supportLevels), ncol=length(confidenceLevels))

#plug in the empty values of the matrix with the apriori rules generated for each combination
for (s in 1:length(supportLevels)) {
  # Apriori algorithm with a support level of 0.09%
  for (i in 1:length(confidenceLevels)) {
    #to analyze different data frames just replace the first argument of apriori below
    rulesMat[s, i] <- length(apriori(idOrderAndSkuOther,
                                    parameter = list(sup = supportLevels[s],
                                                     conf = confidenceLevels[i],
                                                     minlen = 2,
                                                     target = "rules")))
  }
}

#print rules in the matrix in the console
print(rulesMat)

#Graph the number of rules per confidence levels for each different support level

# Data frame
num_rules <- data.frame(rulesMat[1,], 
                        rulesMat[2,], 
                        rulesMat[3,], 
                        rulesMat[4,], 
                        confidenceLevels)
# Number of rules found with a support level of 0.09%, 0.07%, 0.05% and 0.03%
ggplot(data = num_rules, aes(x = confidenceLevels)) +
  # Plot line and points (support level of 0.09%)
  geom_line(aes(y = rulesMat[1,], colour = "Support level of 0.09%")) + 
  geom_point(aes(y = rulesMat[1,], colour = "Support level of 0.09%")) +
  # Plot line and points (support level of 0.07%)
  geom_line(aes(y = rulesMat[2,], colour = "Support level of 0.07%")) +
  geom_point(aes(y = rulesMat[2,], colour = "Support level of 0.07%")) +
  # Plot line and points (support level of 0.05%)
  geom_line(aes(y = rulesMat[3,], colour = "Support level of 0.05%")) + 
  geom_point(aes(y = rulesMat[3,], colour = "Support level of 0.05%")) +
  # Plot line and points (support level of 0.03%)
  geom_line(aes(y = rulesMat[4,], colour = "Support level of 0.03%")) +
  geom_point(aes(y = rulesMat[4,], colour = "Support level of 0.03%")) +
  # Labs and theme
  labs(x = "Confidence levels", y = "Number of rules found", 
       title = "Apriori algorithm with different support levels") +
  theme_bw() +
  theme(legend.title=element_blank())