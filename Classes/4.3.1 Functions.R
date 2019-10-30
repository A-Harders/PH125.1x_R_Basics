# config
library(dslabs)
library(dplyr)
data(murders)

# We can right our own functions to complete repitious work more efficiently
avg <- function(x){
    s <- sum(x)
    n <- length(x)
    s/n
}
y <- 1:100
avg(y)

# There is a standard form for writing functions
# my_function < function(x,y,z){
#    operations that operate on x,y,z which
#    is defined by user of function
#    value final line is returned
# }

# Functions can be set to have multiple arguments a user can call
avg <- function(x, arithmetic=TRUE){
    n <- length(x)
    ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}
x <- 1:100
avg(x)
avg(x,FALSE)
