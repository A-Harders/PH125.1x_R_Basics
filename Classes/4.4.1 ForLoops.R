# config
library(dslabs)
library(dplyr)
data(murders)

# Using functions we can create formulars the repeat until all amounts ina vector have been calculated
compute_s_n <- function(n){
    x<- 1:n
    sum(x)
}
compute_s_n(9)

# The general form of a for-loop looks like this
# for (i in range of values){
#    operations that use i,
#    which is changing across
#    the range of values
#}
for(i in 1:5){
    print(i)
}

# the for-loop for our compute_s_n function
m <- 25
# create an empty vector
s_n <- vector(length = m)
for(n in 1:m){
    s_n[n] <- compute_s_n(n)
}
n <- 1:m
plot(n, s_n)
lines(n, n*(n+1)/2)