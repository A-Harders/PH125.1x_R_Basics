# config
install.packages("dslabs")
library(dslabs)
data(murders)

murders$state[which.max(murders$population)]
max(murders$population)

murder_rate <- murders$total/murders$population*100000
murder_rate <- order(murder_rate)
murders$state[murder_rate]