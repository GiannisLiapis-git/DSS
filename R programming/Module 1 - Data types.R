
# Atomic classes ----------------------------------------------------------


attributes(cars) # gives you the attributes of an object

x <- c(1,2,3)
class(x) # gives you the class of a variable/vector

y <- 0:6
class(y)
y <- as.numeric(y) #as.logical(), as.character()
as.character(y)

z <- list(1, "a", TRUE, 1+4i)
z # elements are indexed with [[]]


# Matrices ----------------------------------------------------------------

m <- matrix(nrow = 2, ncol = 3)
dim(m) # the dimensions
attributes(m)

m1 <- matrix(1:6,nrow = 2, ncol = 3)
m1 # matrices are constructed column-wise

m2 <- 1:10
m2
dim(m2) <- c(2,5) # Giving dimentions
m2


# cbind and rbind ---------------------------------------------------------

x1 <- 1:3
x2 <- 10:12

cbind(x1, x2) # combine as columns
rbind(x1, x2) # combine as rows


# Factors -----------------------------------------------------------------

factor1 <- factor(c("yes", "no", "yes", "yes"))
factor1

table(factor1)

unclassed_factor <- unclass(factor1)
unclassed_factor # factor converted into an integer yes <- 2 and no <- 1

# Setting the baseline level

factor1
factor2 <- factor1 <- factor(c("yes", "no", "yes", "yes"),
                             levels = c("yes", "no"))
factor2 # Now the baseline level is "yes"


# Missing Values ----------------------------------------------------------

missing <- c(1,2,NA,10,3)
is.na(missing)


# Data frames -------------------------------------------------------------

first_data_frame <- data.frame(foo = 1:4, bar = c(T,T,F,F))
first_data_frame
nrow(first_data_frame)
ncol(first_data_frame)


# Names Attribute ---------------------------------------------------------

my_var <- 1:3
names(my_var)

names(my_var) <-c("foo", "bar", "norf")
names(my_var)

my_matrix <- matrix(1:4, 2, 2)
dimnames(my_matrix) <- list(c("a", "b"), c("c", "d"))
my_matrix

# Subsetting --------------------------------------------------------------


vector_1 <- c("a","b", "c", "c", "d", "a")
vector_1[1]

vector_1[vector_1 > "a"]

u <- vector_1 > "a"
u
vector_1[u]

# removing missing values

na_vector <- c(1,2,NA,4,NA,5)
bad <- is.na(na_vector)

na_vector[!bad]

na_vector1 <- c("a", "b", NA, NA, "c", NA)
good <- complete.cases(na_vector, na_vector1)

na_vector[good]

airquality[1:6,]
good1 <- complete.cases(airquality)
airquality[good1,][1:6,]



names(hw1_data)
hw1_data[1:2,]
nrow(hw1_data)
last_rows <-hw1_data[152:153,]
last_rows

hw1_data[47,"Ozone"]
sum(is.na(hw1_data$Ozone))
mean(hw1_data$Ozone, na.rm = T)

#q18
q18 <- hw1_data |> 
  filter(Ozone > 31,
         Temp > 90)

mean(q18$Solar.R, na.rm = T)

#q19
q19 <- hw1_data |> 
  filter(Month == 6)

mean(q19$Temp, na.rm = T)

library(tidyverse)

names(hw1_data)

hw1_data |> 
  filter(Month == 5) |> 
  max(Ozone)

hw1_data |> 
  filter(Month == 6) |> 
  summarize(mean_temp = mean(Temp, na.rm = TRUE))

hw1_data[, "Month"]





