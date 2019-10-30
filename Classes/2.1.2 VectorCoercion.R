# coercion can be unintuitive 
x <- c(1,"canada",3)
x
class(x)

# we can force coercion through different functions
x <- 1:5
x
y <- as.character(x)
y
z <- as.numeric(y)
z

# missing data is designated as NA
x <- c("1","b","3")
as.numeric(x)
x