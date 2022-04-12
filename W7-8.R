#  W#7 İST256

# Functions

# The general definition of a function is :
MyFunction = function(arguments) { statements }


f <- function()  NULL   # Simple function

f <- function(a) print(a)
f <- function(a) {print(a)}
f <- function(a) return(a)
f <- function(a) {return(a)}

f <- function(a) print(a * a)
f <- function(a,b) print(a + b)

f <- function(a) return(a * a)
f <- function(a) {return(a * a)}

a <- 1:4
f <- function(a) return(a)


f <- function(a){
  x <- rnorm(a)     # 1st statement
  ort <- mean(a)    # 2nd statement
}
f(8)

f <- function(a){
  x <- rnorm(a)
  ort <- mean(a)
  print(a)
  return(list(ortalama = ort))
}

f <- function(x) {
  a <-  sum(x)
  return(a)
}

myfunc <- function(x){
  range <- max(x) - min(x)
  return(range)
}


# Function with more than one arguments

f <- function(x, b = 1){
  a = b*x^2
  return(a) }

a = 2
b = 1
f(5)



# The default is Euclidean, p=2
g <- function(x, p = 2) {
  y = abs(x)
  z = sum(y^p)
  z^(1/p) 
}

v = c(3,4)
g(v)



# Suppose we calculate the coefficient of variation, 
# as the st.deviation of a variable after dividing by its mean. 

x <- 1:5
cv <- function(x){
  sd(x)/mean(x)
}
cv(x)
traceback()

cv <- function(x){ 
  stopifnot(all(x>0))   # optional but a smarter way
  sd(x)/mean(x)
}
cv(x)

# 
correlation <- function(a,b){
  cor <- cor(a,b)
  plot(a,b)
  return(correlation_value = cor)
}

a <- rnorm(10)
b <- rnorm(10)
correlation(a,b)


# use the results obtained from a function in another function 

f <- function(x) {
  ort <- sum(x)/length(x)
  ortkare <- ort ^2
  return(list( ortalama = ort, ortalamakare= ortkare))
}

(y <- result$ortalama)  # get the outputs individually

g <- function(x, y) {
  ort <-  mean(rnorm(x))
  yeni_ort <- ort + y
  return(list( yeni_ortalama = yeni_ort))
}
g(100,y)    # output y is the new input of g()


# print or cat?
print("DataFlair")
cat("DataFlair \n")

int <- 24
cat(int, "DataFlair", "Big Data\n")
cat(int, "DataFlair", "Big Data\n", int+1,"\n", int+2)

# saving
sink("filename")
mat = matrix( c(1.1, 2.2, 3.3, 4.4, 5.5, 6.6), nrow=3, ncol=2 )
write.csv(mat,file="results", row.names=FALSE, col.names=FALSE)
getwd()   # used to find the address of your files created in R
setwd("/Users/mac/extra")

install.packages("MASS")
library(MASS)  # call the package
write.matrix(mat, file="mat")  # without indexing


# 1st example
corplot <- function(x,y){
  cor(x,y)
  plot(x,y)
}
corplot(c(2,5,5,6,7,7), c(3,4,6,6,7,8))

#2nd example
corplot <- function(x,y){
  a <- cor(x,y)
  plot(x,y)
  return(cor = a)
}
corplot(x=c(2,5,5,6,7,7), y=c(3,4,6,6,7,8))

# 3rd example
corplot <- function(x,y){
  a <- cor(x,y)
  b <- colMeans(cbind(x,y))
  plot(x,y)
  return(list(cor = a, means = b))
}


# 4th example
corplot <- function(x,y, plotit){
  if (plotit == TRUE) plot(x,y)
  a <- cor(x,y)
  b <- apply(data.frame(x,y),2, mean)
  return(list(cor = a, means = b))
}

powerfunc <- function(w, q) {
  # function to print w raised to the power q
  result <- w^q
  print(paste(w,"raised to the power", q, "is", result))
}


# for() loop
# for(name in vector) {commands}

answer <- 0
for (i in 1:5) print(answer + i)

answer <- 0
for (i in 1:5) answer <- answer + i
answer

answer <- 0
for (i in 1:5) {
  answer <- answer + i
  print(paste(i, ".adım",i ,"degeri alındı"));
  print(paste("Toplam:",answer))}


install.packages("magicfor")
library(magicfor)               # load library
magic_for(print, silent = TRUE) # call magic_for()

 # 1st Example              
magic_for(print, silent = TRUE) # call magic_for()
for (i in 1:3) {
    squared <- i ^ 2
    print(squared)  # print should be given as an argument in magic_for
}
magic_result_as_dataframe()

# 2nd Example 
magic_for(print, silent = TRUE) # call magic_for()
for (i in 1:3) {
      squared <- i ^ 2
      cubed <-  i ^ 3
      print(squared, cubed)
   }
magic_result_as_dataframe()

# 3rd Example: without print function, use put() instead
magic_for(silent = TRUE) # call magic_for()
for (i in 1:3) {
      squared <- i ^ 2
      cubed <-  i^ 3
      put(squared, cubed)  # it was not defined in magic_for, but it works!
     }
magic_result_as_dataframe()


# 4th Example: Never do it like this: use print or put
 for (i in 1:3) {
     squared <- i ^ 2
     cubes <-  i^ 3
  }
magic_result_as_dataframe()  # returns nothing except i. 


# if conditions
# if (condition) {commands when TRUE}
# if (condition) {commands when TRUE} else {command when FALSE}

# if (condition) {commands when TRUE} 
# else {command when FALSE}


# built-in ifelse()
x <- 3

if(x > 2) y <- 2 * x else y <- 3 * x
y  # recall y


x <- c(-90,50,38,-9)
ifelse(x > 0, "Positive", "Negative")



# while condition Loop
# while()
# {.....statements....
# }

i <- 0
while(2^i < 100)
{
  i <- i+1
}
print(c(i,2^i))


# Your Task !!!
# repeat() Loop
# replicate() Loop





