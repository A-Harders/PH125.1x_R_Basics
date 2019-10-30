# config
library(dslabs)
library(dplyr)
data(heights)
options(digits = 3)
names(heights)

# Question 1
avg = mean(heights$height)
ind <- which(heights$height > avg)
length(ind)

# Question 2
ind <- which(heights$height > avg & heights$sex == "Female")
length(ind)

# Question 3
mean(heights$sex == "Female")

# Question 4a
min_height <- min(heights$height)

# Question 4b
match(min_height, heights$height)

# Question 4c
heights$sex[match(min_height, heights$height)]

# Question 5a
max_height <- max(heights$height)
max_height

# Question 5b
x <- min_height:max_height
x

# Question 5c
ind <- sum(!x %in% heights$height)
ind

# Question 6a
heights2 <- mutate(heights, ht_cm = height*2.54)
heights2$ht_cm[18]

# Question 6b
mean(heights2$ht_cm)

# Question 7a
females <- which(heights2$sex == "Female")
length(females)

# Question 7b
females <- which(heights2$sex == "Female")
mean(heights2$ht_cm[females])

# Qeustion 8
data(olive)
names(olive)
plot(olive$palmitic, olive$palmitoleic)

# Quetion 9
hist(olive$eicosenoic)

# Question 10
boxplot(palmitic~region, data = olive)