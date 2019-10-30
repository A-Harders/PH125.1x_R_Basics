# config
install.packages("dplyr")
library(dplyr)
library(dslabs)
data(murders)

# mutate() adds a column to an existing table
murders <- mutate(murders,rate=total/population*100000)
murders
    # total and population arent defined in the workspace
    # mutate() knows to look for these variables in the data frame, not the workspace

# filter() takes the data table and filters on the conditional statement
filter(murders, rate <= 0.71)

# select() takes the columns from a data table so they can be assigned to a new data table
new_table <- select(murders, state, region, rate)
filter(new_table,rate <= 0.71)

# %>% allows us to transfer the result from one function to another, minimising the number of intermediate objects
murders %>% select(state,region,rate) %>% filter(rate <= 0.71)