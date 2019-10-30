# config
install.packages("dslabs")
data(murders)

# sort() orders a vector in increasing order
sort(murders$total)

# order() orders in increasing order and returns the indices that sort the order
# we can then use the ordered index to sort the data specifically
state <- murders$state
x <- c(murders$total)
sort(x)
index <- order(x)
state[index]

# max() returns the largest result in a vector
max(murders$total)

# which.max() returns the indices of the largest vector
i_max <- which.max(murders$total)
murders$abb[i_max]

# min() returns the smallest result in a vector
min(murders$total)

# which.min() returns the indices of the smallest vector
i_min <- which.min(murders$total)
murders$abb[i_min]

# rank() ranks the data by smallest to largest, in the order that it is saved
x <- c(31,4,15,92,65)
rank(x)