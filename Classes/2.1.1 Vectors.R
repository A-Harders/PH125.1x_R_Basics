# c() to create a vector
codes <- c(380,124,818)

# use "" to signify characters
country <- c("italy","canada","egypt")

# define the data in a vector by using "="
codes <- c(italy=380,canada=124,egypt=818)
codes
# the class codes, remains to be numeric though
class(codes)

# we can use the names() to assign data to a vector also
codes <- c(380,124,818)
country <- c("italy","canada","egypt")
names(codes) <- country
codes

# seq() is useful as we can set sequences, third argument defines the spacing, this defaults to one
seq(1,10,0.1)
# there is a shorthand for consecutive integers
1:10

# subsetting by using [] allows us to pick specific vectors from data
codes[2]
codes[c(1,3)]
codes[1:2]

# if the entries of a vector are named, they can be subset by using that name
codes["canada"]
codes[c("italy","egypt")]