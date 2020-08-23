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
