#config
library(dslabs)
data(heights)

#Question 1 - IFELSE Statement for Sex
head(heights)
gender <- ifelse(heights$sex == "Male", 2, 1)
sum(gender)

#Question 2 - IFELSE Statement for Hieght > 72
greater_than_72 <- ifelse(heights$height > 72, heights$height, 0)
mean(greaterThan72)

#Question 3 - incheas to feet function
inches_to_feet <- function(x){
    x/12
}
inches_to_feet(144)

less_than_60 <- ifelse(heights$height < 60, 1,0)
sum(less_than_60)

#Question 4 - TRUE & FALSE test
any(TRUE, TRUE, TRUE)
any(TRUE, TRUE, FALSE)
any(TRUE, FALSE, FALSE)
any(FALSE, FALSE, FALSE)

all(TRUE, TRUE, TRUE)
all(TRUE, TRUE, FALSE)
all(TRUE, FALSE, FALSE)
all(FALSE, FALSE, FALSE)

#Question 5 - Factorial Function
m <- 10
f_n <- vector(length = m)

for(n in  1:m){
    f_n[n] <- factorial(n)
}
f_n

# 100%