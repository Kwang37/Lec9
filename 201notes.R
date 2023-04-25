library(stringr)
# E.g. str_detect, str_sub
# Notes
# 4 assignments 40%
# reading  15%  (due each Friday)
# Final project  35%
# In-class exercises  10%  (graded on completion not accuracy)

# Comparison/relational operators:
# 5  >  2.   True  (same to boolean values) , 3 == 7.   False
# & = And , | = Or , !  = Not

# Assignment Operators <-

# Variables
# Name it and assign it a value to point at:
# my_var <- 6
# Only letters, numbers, underscore characters( _ ), and/or the period 
# character( . )
# Lowercase with an underscore separating the word is best.
# Number not, space not, a special character not( # ).
# can be reassigned

# Data Types
# Character:  “ YES”  (with quotation marks)
# Numeric: 1, 2, 3.0, 5.9090
# Logical: TRUE, FALSE
# Integer: 2L, 3L, 4L
# Complex: 2 + 3i
# Raw: not use

# Built-in Functions
print("Hello!")
print(sum(1,2))
print(seq(3,6))
print(typeof(5))

# Functions and Conditionals
# Function format
# xx_xxx <- function(a,b){
# return()
# }

# String Formatting
cat("Hello!","Xuan")
print(paste("Hello!","Xuan"))

print_many_greet <- function(name_1, name_2){
  print(sprintf("Hello %s and %s!", name_1, name_2))
}
print_many_greet("Xuan","Kai")

# string detect
print(str_detect("here is a string that i am typing", "string"))

# Conditionals 
num <- 0
if(num < 0){
  print("negative")
}else if (num == 0){
  print("special case")
}else{
  print("positive")
}

# Data Structures - Vectors
# Vectors are 1D collections of homogeneous data points.
# all the data must be the same data type.

colors <- c("blue","yellow","orange")
# Can not created nested vectors

# Indexing Vectors : Starting at 1
print(colors[1]) # get index
print(length(colors))
print(colors[length(colors)]) # a vector's length is the maximum index
print(colors[-2]) # delete the 2nd index value
print(colors[c(1,2)]) # specific index value

# Mask(vector of logical indices)
print(colors[c(TRUE,FALSE)])

numbers <- 1:6 # convenient way of show a sequence of 1-6
print(numbers)

# Coercion
# Data types from the most to least flexible:
# 1.logical, 2.integer, 3.double, 4.character

# Vectorized Operations
# 1. multiple 2. add: index +/- index 3. Compare 2 vectors
v1 <- c(1,2,3)
v2 <- c(0,1,2)
v3 <- v1 * v2
print(v3)

shoe_size <- c(5,6,7,8,9)
small_size <- shoe_size < 6
print(small_size)

# Add two vectors with different length: Recycling
v1 <- c(1,2,3)
v2 <- c(0,1,2,4,2,1)
v3 <- v1 + v2
print(v3)

# Working with Vectors
names1 <- c("Adam", "Grant", "Xuange", "KaiZi")

print(str_replace_all(names1, "a", "@"))

age <- c(10,20,30)
print(mean(age))

# Lists : heterogeneous vectors: homogeneous
# Access elements by index/key
# Add/remove available
my_list <- list(name = "Grant", age = 19) # names called tags

# Access elements by index: double brackets
print(my_list[[1]])

# Access elements by key(tag)
print(my_list[["name"]])
print(my_list$name)

# Create new elements: single bracket return a list
my_list$job <- "student"
print(my_list["name"])

# Data-frame (DF): 2D, like a table
# a list of vectors: each column is a vector
height <- 180:187
weight <- 60:67
my_data <- data.frame(height,weight)
print(my_data)

# Indexing data-frames
print(my_data$height)
print(my_data[["weight"]])

# 2D selectors [row,column]
print(my_data[,2]) # 2nd column
print(my_data[2,]) # 2nd row

# Complex indexing
print(my_data[my_data$height < 185, 'height'])

# I/O with Data-frames
# loading csv doc
# female_names_data <- read.csv("~/Desktop/female_names.csv")

# Working with data-frame

# Select data

# select(female_names_data,name,prop,year)
# select(female_names_data,name:year) # all columns from "name" to "year"
# select(female_names_data,-name) # all columns except "name"

# Filter data
# filter(female_names_data, year == 2013)

# The mutate(female_names_data,name = vector) function allows you to 
# create additional columns for your data frame

# arrange() # in increasing order/ - in decreasing order

#
