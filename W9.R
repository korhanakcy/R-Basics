# W9

# Importing .txt  (.sav, .xls, .xlsx, .csv, etc ) ##############
mydata.txt <- read.table("~/Desktop/Savings/trafik.txt")
head(mydata.txt)

mydata.txt <- read.csv("/Users/mac/Desktop/Savings/trafik.txt")
head(mydata.txt)   # irregular data, to correct it use "sep"

mydata.txt <- read.csv("/Users/mac/Desktop/Savings/trafik.txt",sep="\t")
head(mydata.txt)

mydata.txt <- read.csv2("/Users/mac/Desktop/Savings/trafik.txt",sep="\t")
head(mydata.txt)

#What you can not is
mydata.txt <- read.xls("/Users/mac/Desktop/Savings/trafik.txt",sep="\t")


# Import .csv ############
mydata.csv <- read.table("/Users/mac/Desktop/Savings/bodyfat.csv")
head(mydata.csv)   # irregular data, to correct it use "sep"

mydata.csv <- read.table("/Users/mac/Desktop/Savings/bodyfat.csv", sep=",")
head(mydata.csv)

mydata.csv <- read.csv("/Users/mac/Desktop/Savings/bodyfat.csv")
head(mydata.csv) # irregular data, to correct it use "sep"

mydata.csv <- read.csv2("/Users/mac/Desktop/Savings/bodyfat.csv", sep=",")
head(mydata.csv)

mydata.csv <- read.xls("/Users/mac/Desktop/Savings/trafik.txt",sep="\t")

# If header exists, use header=TRUE


# Import Excel file (xls) (or xlsx)
# Install readxl by install.packages("readxl") or xlxs then call library(readxl)
install.packages("readxl")
library(readxl)
mydata.xls <- read_excel("~/Desktop/Savings/Anket.xls")
mydata.xlsx <- read_excel("~/Desktop/Savings/data.xlsx")
head(mydata.xlsx)

# Specify sheet by its name or by numbers
my_data <- read_excel("~/Desktop/Savings/data.xlsx", sheet = "Gerekli bilgiler")
my_data <- read_excel("~/Desktop/Savings/data.xlsx", sheet = "Ham")

# Specify sheet by its index
my_data <- read_excel("~/Desktop/Savings/data.xlsx", sheet = 2)


# 2nd Option to Import is using Bottom-right Panel > File > Choose your file
# 3rd Option to Import a File into R
txt <- read.table(file.choose())

# (.)apply family
data(trees)
apply(trees, 2, mean)
apply(trees, 2, summary)

# lapply() for lists
lapply(trees, mean)

# sapply function 
# applies a function to a vector or list and 
# returns a vector, a matrix or an array.
sapply(trees, summary)


# Generate a custom function in (.)apply family
sapply(2, function(x) x^(1:5))

# Iterate it over avector

for(x in 1:5){print(2^x)}


# Question : How can we join the column means obtained from apply function?
# Answer
trees[32,] <- sapply(trees, mean)  # as trees has 31 rows, the new row including means will be the 32nd.

# or 
tail(rbind(mydata, apply(mydata, 2, mean)))  # use rbind() to add a row and tail() to see added row values
