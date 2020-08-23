# Task:

* Create some dummy Data in Python
* Dummy Data type is Pandas DataFrame
* Convert dataframe into CSV
* Save the Data to CSV
* Get R to create a Graph with the CSV
* Get Latex to display the Graph
* Perform Regression
* Get Latex to display the new Graph

## R

### Variables:
```r
# variables cannot start with a number or underscore
variable = x #(same as Python)
variable2 <- 10 # (another way to set variables)
variable2 + 10 # will output 20
variable <- variable2 <- variable3 <- 20 # (will set all variables to 20)
assign('nameOfVariable', value) # (Another way to assign a variable)
rm(nameOfVariable) # will remove the value from nameOfVariable which will also remove it from memory
```

### Data Types:
```r
class(nameOfVariable) # Will fetch the type of data stored in nameOfVariable
# Example output: numeric, character (which is a string)
numericVarialbe <- 123
characterVariable <- "abc"
is.numeric(numericVarialbe) # will return TRUE, will also return TRUE for typical doubles/floats
is.numeric(characterVariable) # will return FALSE
```

### Functions:
```r
nChar(nameOfVariable) # will count the number of characters in a variable [SPACE IS COUNTED]
nameOfVariable <- as.Date("2000-12-28") # Create a "Date" object
sqrt(vectorNums) # square root entire vector
length(vector) # will output the size of the vector
a <- 1:10
any(a < 5) # Test if any of the numbers are less than 5
all(a < 5) # Test if all of the numbers are less than 5
```

### Logical Operators:
```r
5 == 7 # Equality is the same as Python, will return FALSE
5 != 7 # will return TRUE
5 < 5 # FALSE
5 <= 5 # TRUE
"string" == "string" # TRUE
```

### Vectors:
```r
# Vector is a list of items
vectorNums <- c(1,2,3,4,5)
vectorChars <- c("test", "test2", "Test3")
# Can perform mathematical operations to all items in a vector
vectorNums * 2 # Will output 2 4 6 8 10
# Can also do to the power ^ of x
anotherVector <- 1:5 # will make a vector of numbers 1 to 5 (inclusive)
negativeVector <- -3:-10 # will make a vector of -3 to -10 (inclusive)
a <- 1:3
b <- 7:9
a + b # Given n vectors of equal length, will make a new vector and add each item at each index
c <- 1:3
d <- 1:5
c + d # Will create 2 4 6 4 5 and will provide a warning (length is not a multiple of the other)
a <- 1:7
a < 5 # Will output TRUE TRUE TRUE TRUE FALSE FALSE FALSE
```
