# config
library(dslabs)
data(murders)

x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)

# which() shows the TRUE indices
which(x)

index <- which(murders$state == "Massachusetts")
index

murder_rate <- murders$total/murders$population*100000
murder_rate[index]

# match() gets the indices of a second vector based on the first vector
ind <- match(c("New York", "Florida", "Texas"), murders$state)
ind
murder_rate[ind]

# %in% operators shows if an element is in the second vector based on the first
x <- c("a","b","c","d","e")
y <- c("a","d","f")
y %in% x