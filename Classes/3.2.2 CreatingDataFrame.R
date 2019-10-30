# config
library(dslabs, dplyr)
data(murders)

# data.frames() creates a whole new data frame from the vectors entered
grades <- data.frame(names=c("John","juan","Jean","Yao"),
                     exam_1 = c(95,80,90,85),
                     exam_2 = c(90,85,85,90),
                     stringsAsFactors = FALSE)
grades