# config
library(dslabs)
library(dplyr)
data(murders)

# IF-ELSE statements are the most common conditional
a <- 2
if(a!=0){
    print(1/a)
} else{
    print("No reciprocal for 0.")
}

# Using the 'murders' data set we can set up boolean tests for our data
murder_rate <- murders$total/murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
    print(murders$state[ind])
}else{
    print("No state has marder rate that low")
}

# ifelse() takes a logical and two possible answer, a true and a false answer
a <- 0
ifelse( a > 0, 1/a, NA)

#ifelse() works on vectors
a <- c(0,1,2,-4,5)
ifelse( a > 0, 1/a, NA)

# ifelse() can be used to replace missing values with 0s
data(na_example)
sum(is.na(na_example))
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))

# any()_ & all() can be used to test logical vectors
z <- c(TRUE,TRUE,FALSE)
any(z)
all(z)