# W5
## data frames:special kind of lists
# data.frame()

kidnames <- c("Mary","Mike","Billy","Joe")
age <- c(8,5,3,9)
likeIcecream <- c(T,T,F,T)
data.frame(kidnames, age,likeIcecream)
# kidnames age likeIcecream
# 1     Mary   8         TRUE
# 2     Mike   5         TRUE
# 3    Billy   3        FALSE
# 4      Joe   9         TRUE
age <- c(8,5,3,9,8)
data.frame(kidnames, age,likeIcecream)
list(kidnames, age,likeIcecream)
#[[1]]
# [1] "Mary"  "Mike"  "Billy" "Joe"  

#[[2]]
# [1] 8 5 3 9 8

#[[3]]
# [1]  TRUE  TRUE FALSE  TRUE

age <- c(8,5,3,9)
data.frame(kidnames, age,likeIcecream)
#  kidnames age likeIcecream
#1     Mary   8         TRUE
#2     Mike   5         TRUE
# 3    Billy   3        FALSE
#4      Joe   9         TRUE
data.frame(xxx = kidnames, age, likeIcecream)
#   xxx age likeIcecream
#1  Mary   8         TRUE
#2  Mike   5         TRUE
#3 Billy   3        FALSE
#4   Joe   9         TRUE
children <- data.frame(xxx = kidnames, age,likeIcecream)
children
#    xxx age likeIcecream
#1  Mary   8         TRUE
#2  Mike   5         TRUE
#3 Billy   3        FALSE
#4   Joe   9         TRUE
children[1,2]
#[1] 8
children[1,4]
#NULL
children[4,2]   
#[1] 9

children[4,]
# xxx age likeIcecream
#4 Joe   9         TRUE
children[,3]
#[1]  TRUE  TRUE FALSE  TRUE
children
#   xxx age likeIcecream
#1  Mary   8         TRUE
#2  Mike   5         TRUE
#3 Billy   3        FALSE
#4   Joe   9         TRUE

children[2:4, c(1,3)]

children$xxx
#[1] Mary  Mike  Billy Joe  
# Levels: Billy Joe Mary Mike
children$age
#[1] 8 5 3 9

rbind(children,children)  # add another data frame row-wise
cbind(children,children)  # add another data frame column-wise
dim(children)  # length() is not enough for data frames,it just prints ncol.

colnames(children)     # get the names of the columns in a data frame
rownames(children)     # get the names of the rows in a data frame
colnames(children) <- c("X","Y","Z")  # change the column names
children["X"]  # or use $ to access the values in X

children$X
children[c("X","Z")]  # columns X and Z from data frame




# Matrices   ###########################
matrix(1:6, nrow = 2,ncol = 3)
# [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

matrix(1:6, nrow = 2)
# [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
matrix(1:6, nrow = 2, byrow = TRUE)
# [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6

# A list of important matrix operators

# A %*% B   for matrix multiplication
# det(A)      for determinant
# t(A)        for tranposition
# solve(A,b)  linear equation system solving Ax=b
# diag(A)     for a diagonal matrix
# eigen(A)    for eigenvalue analysis
# summary statistics on matrices:
# colSums 
# rowsums
# colMeans
# rowMeans

diag(4)
# [,1] [,2] [,3] [,4]
# [1,]    1    0    0    0
# [2,]    0    1    0    0
# [3,]    0    0    1    0
# [4,]    0    0    0    1

# eigen(A) for eigenvectors and eigenvalues
#     2 0
#     0 2 
#   
A <- matrix(c(2,0,0,2),nrow = 2)
A
# [,1] [,2]
# [1,]    2    0
# [2,]    0    2
2 * diag(2)
# [,1] [,2]
# [1,]    2    0
# [2,]    0    2

#  1 3
#  2 4
#   
B <- matrix(1:4,2, 2)
#  B <- matrix(1:4,2)
B
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
B <- matrix(c(1,3,2,4),2)
B
# [,1] [,2]
# [1,]    1    2
# [2,]    3    4
B <- matrix(c(1,3,2,4),2,byrow = TRUE)
B
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4

B <- matrix(c(1,3,2,4),2,byrow = FALSE)
B
# [,1] [,2]
# [1,]    1    2
# [2,]    3    4
B <- matrix(c(1,2,3,4),2,byrow = FALSE)
B
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
A+B
# [,1] [,2]
# [1,]    3    3
# [2,]    2    6
A-B
# [,1] [,2]
# [1,]    1   -3
# [2,]   -2   -2
A
# [,1] [,2]
# [1,]    2    0
# [2,]    0    2
B
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
A*B   # Element-wise multiplicatiob
# [,1] [,2]
# [1,]    2    0
# [2,]    0    8
A%*%B  
# [,1] [,2]
# [1,]    2    6
# [2,]    4    8
det(B)
# [1] -2
# eigen(B)
# eigen() decomposition
# $values
# [1]  5.3722813 -0.3722813
# 
# $vectors
# [,1]       [,2]
# [1,] -0.5657675 -0.9093767
# [2,] -0.8245648  0.4159736
# 
# eigen(B)$valuyes
# NULL
eigen(B)$values
# [1]  5.3722813 -0.3722813
eigen(B)$vectors
# [,1]       [,2]
# [1,] -0.5657675 -0.9093767
# [2,] -0.8245648  0.4159736
B
# [,1] [,2]
# [1,]    1    3
# [2,]    2    4
t(B)     # transpose of a matrix
# [,1] [,2]
# [1,]    1    2
# [2,]    3    4

 
matrix(c(1,0,0,0,2,0,0,0,3),2)   # when you did not set ncol, then nrow is set to 2.
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    2    0
# [3,]    0    0    3


C <- diag(c(1,2,3))
C
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    2    0
# [3,]    0    0    3
C[2] = 2
C
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    2    2    0
# [3,]    0    0    3
C <- diag(c(1,2,3))
C
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    2    0
# [3,]    0    0    3
C[2,2] = 4
C
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    4    0
# [3,]    0    0    3
C[,2:3]
# [,1] [,2]
# [1,]    0    0
# [2,]    4    0
# [3,]    0    3
C[2:3,]
# [,1] [,2] [,3]
# [1,]    0    4    0
# [2,]    0    0    3
C
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    4    0
# [3,]    0    0    3

which(C[,2] > 2)
# [1] 2
C
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    4    0
# [3,]    0    0    3

C[] = 1
C
# [,1] [,2] [,3]
# [1,]    1    1    1
# [2,]    1    1    1
# [3,]    1    1    1
dimnames(C)
# NULL
dimnames(C) <- list(NULL,c("two","three","four"))  # for column names
C
# two three four
# [1,]   1     1    1
# [2,]   1     1    1
# [3,]   1     1    1
dimnames(C) <- list(c("two","three","four"))   # for row names
C
# [,1] [,2] [,3]
# two     1    1    1
# three   1    1    1
# four    1    1    1

C <- C[-1,]     # removes the values in the first row
# [,1] [,2] [,3]
# three   1    1    1
# four    1    1    1

C <- C[,-1]    # removes the values in the first column

#  10 20 0
#  0  0  30
#  0  0  0
#  0  0  0
#    
# Add a new column or row
(m <- matrix(0,4,3))   # use () around an R code to see the output of an object immediately 
# [,1] [,2] [,3]
# [1,]    0    0    0
# [2,]    0    0    0
# [3,]    0    0    0
# [4,]    0    0    0

cbind(m, c(1:4))  # add 4 elements to the next column
rbind(m,c(10:8))   # add 3 elements to the next row

(colnames(m) <- c(1:2,"Last Column"))
(rownames(m) <- c(1:3,"Last Row"))

rm(list = ls())  # removes everything
rm(C)            # removes only C



## Displaying Graphics   #################

# Dot plots
data(cars); attach(cars)
dotchart(speed, pch = 20, lcolor = FALSE, gpch = 11,color = "slateblue", main="Dot chart")
legend("bottomright","speed",fill = "slateblue")

# Boxplots
head(cars)
summary(cars$speed)
par(mfrow = c(1,2))
attach(cars)
#construct a boxplot with several arguments
boxplot(speed, main = "Figure 1", col = "#88398A", border = "Violet", horizontal = FALSE)

# add a legend or comment to the plot
legend("right",c("Speed"), fill = c("#88398A"),cex = 0.5)
boxplot(speed, main = "Figure 2", col = "#88398A", border = "Violet", horizontal=TRUE,axes=FALSE)
legend("bottom",c("Speed"), fill = c("#88398A"),cex = 0.8)
text(x = boxplot.stats(speed)$stats,labels=boxplot.stats(speed)$stats,y=.7)

### study yourself: graphic parameters!
