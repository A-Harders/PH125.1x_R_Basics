#Config
install.packages("dslabs")
library(dslabs)
data(movielens)

# Question 1
a <- 2
b <- -1
c <- -4

solution_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

solution_1
solution_2

# Question 2
log(1024, 4)

# Question 3 & 4
str(movielens)

# Question 5 & 6
class(movielens$title)
class(movielens$genres)

# Question 7
nlevels(movielens$genres)