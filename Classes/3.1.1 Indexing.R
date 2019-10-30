# config
library(dslabs)
data(murders)

# logical operators can be used to index vectors
murders$state[which.max(murders$population)]
max(murders$population)

murder_rate <- murders$total/murders$population*100000
murder_rate
murders$state[order(murder_rate)]

index <- murder_rate <= 0.71
index

murders$abb[index]
sum(index)

west <- murders$region == "West"
safe <- murder_rate <= 1
index <- safe & west
murders$state[index]