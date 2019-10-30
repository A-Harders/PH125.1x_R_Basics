# config
library(dslabs, dplyr)
data(murders)

# use plot() to plot two objects
population_in_million <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_million, total_gun_murders)

# historgams give a general overview of the types of values contained in a dataset
rate <- murders$total/murders$population*100000
hist(rate)

# boxplots provide a more terse result than a histogram but are easier to compare
boxplot(rate~region, data = murders)