# Basics of R for Wie-IEEE at ESTU
# Date: 23.03.2021 Time:19.00-21.00
# Codes available at https://github.com/bkanx/R-Basics


# 1. Step
# Install R on www.r-project.org
# Install RStudio on www.rstudio.com
# Start > Program Files > R (for Windows)

# 2. Step
# Open File > New Script.


# 3. Step (Personalize your RStudio)
# Tools > Global Options > Appereance (theme, font etc)
# Tools > Global Options > Panel (order of the windows)

# 4. Step 
# Quit R using quit() or q().



# Contents:
# Data Types: vector, list, data frame, matrix
# Built-in Functions
# Indexing
# Displaying Graphics

###### Data Types ######
# Vector: numeric, character, factor, logical, complex
# Vectors are homogenous: only elements of the same type
# Shortcut for assign operator: Tools > Global Options > Modify Keyboard Shortcuts

# create a numeric vector (1)
c(10, 20, 30, 40, 50)    # numeric vector
# name a vector
x <- c(10, 20, 30, 40, 50)    # assign x to a numeric vector

c(0.1, 0.2, 0.3, 0.4, 0.5)    # use . as separator for decimals

# create a numeric vector (2)
1:10
10:1

# create a numeric vector with repetion (3)
rep(1, 5) 
rep(c(1, 2),5)
rep(1:3, each = 5)
rep(1:3, c(1, 2, 3))

# create a numeric vector with sequence (4)
seq(0, 10, 2)  # Even number between 10 and 10
seq(1, 10, 2)  # Odd number between 1 and 10

seq(10, 1, by = -3)  # by for specifiying the increment

seq(10, 0, length = 3)  # generate 3 numbers with equal distance
# seq(0,10, length = 3)  # increasing form

# longer vectors
c(seq(0, 10, length = 3), rep(1, 5), 0)

# character vector
c("a", "b", "c", "d", "e")   # Insert the character in "".
# name a vector 
letters <- c("d", "a", "d", "b", "a")
x <- c(20, 35, 40, 60, 80)
names(x) <- letters ; x


# factors
factor(c("A", "B", "AB", "O", "A", "AB"))   # creates factor vector
z <- factor(c("A", "B", "AB", "O", "A", "AB"))
# levels(z)  # returns the levels of a factor and sorts alphabetically
factor(z, levels = c("A", "B", "AB", "O"))      # renames levels
# as.character(z)  <- c("A", "B", "AB","O", "A", "AB")
# ifelse(z == "A", 100, ifelse(z == "B", 101, ifelse(z == "AB", 102, 103)))


# logical vector 
c(TRUE, FALSE)   # logical vector
 1 > 2           # returns TRUE or FALSE
 1 == 2
 1 != 2
 20 %% 4 == 0    # comparison of remainder after division
 (1:3) <= c(1, 3, 5)
 
# complex vector
 1i
 3 + 2
 3 + 2i
 
 # Lists
 # Lists are heterogenous: elements with single value, numeric vector, character vector, logical vector 
 list(1, "string", TRUE, 5:10)
 L <- list(name1 = 1, name2 = "string", TRUE, 5:10)
 L <- list(name1 = 1, name2 = "string", TRUE, 5:10, rep(1,5))
 
 # Data frame
 # Data frames are heterogenous: only elements with same length.
 course <- c("Math","Geo","Stat","Art")
 number_of_students <- c(8, 15, 13, 9)
 like_coding <- c(T, F, T, F)
 data.frame(course, number_of_students, like_coding)
 veri <- data.frame(course, number_of_students, like_coding)
 
 # Matrix
 matrix(1:6, nrow = 2, ncol = 3)  # 2x3 matrix 
 matrix(1:6, nrow = 2)           
 # name a matrix
 M <- matrix(1:6, nrow = 2, byrow = TRUE) ; M
 
 # use cbind() to a new column
 cbind(M, 10:11) ; cbind(M, c(0.9,0.7))
 # use rbind() to add a new row
 rbind(M, new = 100:102) 
 rownames(M) <- c("sıra 1","sıra 2")
 colnames(M) <- c() 
 # A list of important matrix operators
 
 # A %*% B for matrix multiplication
 # A + B for matrix addition
 # A - B for matrix subtraction
 # det(A) for determinant
 # t(A) for tranposition
 # diag(A) for diagonal matrix
 # solve(A,b) for linear equation system solving Ax=b
 # eigen(A) for eigen value decomposition
 
 diag(c(1,2,3))     # creates a diagonal matrix

 B <- matrix(c(1,3,2,4), 2)   # nrow is 2
 dimnames(B) <- list(c("row1","row2"))  # add row names
 B
 det(B)                       # determinant 

###### Operations    ######
 # x+y   addition
 # x-y   subtraction
 # x*y   multiplication
 # x/y   division
 # x^y   exponentiation
 # x%%y  integer division remainder
 # x%/%y integer division 
 # -x    sign inversion
 # x**2  power of x, squared of x    
 
 # abs()   absolute value
 # sqrt()  square root of a value
 # cos()  
 # sin()  
 # tan()  
 # atan()  
 # acos()  
 # asin()  
 # exp()  
 # log()  natural log.  
 # log10()  log at base 10  
 # log2()  log at base 2  
 # round(x, digits=0)   rounding   
 # floor()  floor function
 # ceiling()   ceiling function
 
 # Vector arithmetic: element-wise
 x <- 1:10
 y <- rep(2,10)
 x + y
 3 * x 
 
 
 log(10)    # logarithm at base natural
 log10(10)  # logarithm at base 10
 exp(1)     # 2.718282
 pi         # 3.141593
 
 # Statistical distribution functions
 # Normal, t, Binom, Cauchy, Poisson, Exponential, etc.
 
 ###### Auxilary Functions (Built-in Functions)  ######
 sum(x)
 mean(x)
 sqrt(x)
 median(x)
 var(x)
 sd(x)
 summary(x)
 quantile(x)
 prod(x)
 sort(x)
 length(x)
 correlation(x, y)
 covariance(x, y)
 
 ncol(D)
 nrow(D)
 colSums(D)
 rowSums(D)
 
 
 ls()
 rm(x)
 str(z)
 class(z)

 
 getwd()
 
 is.vector()
 is.numeric()
 is.na()        # Search for missing value, NA
 #replaces the NA values with 0
 veri[is.na(veri)] <- 0
 replace(z, 3 , NA)   # replace 3rd element with NA in a vector

 
 as.numeric()
 as.character()
 
# List of functions
# https://stat.ethz.ch/R-manual/R-devel/library/stats/html/00Index.html
 
###### Indexing (Subsetting) ###### 
 
 # Indexing by []
  x <- c(20, 35, 40, 60)
  x[2]  # 2nd element in x
 
  B <- matrix(x, 2, 2)
  B[2,1]  # 2nd row and 2nd col element
  D <- matrix(100:76, 5,5)
  D[c(2,3),c(4,5)]     # subset multiple elements
  
    veri <- data.frame(course, number_of_students, like_coding)
  veri[2,3]   # 2nd row and 3nd col element
  veri[3,"b"]
  veri[c(2,3),c("b","c")]
  veri$a

  b <- diag(4,2)
  b[2,1]
  b[,1]
  b[1,]

  L
  L[[1]]
  
  # Indexing by which()
  which(x > 35)
  x[which(x > 35)]
  
  # Indexing by Logical vector
   y <- c(T, F, T, F)
   x[y]; x[!y]
  
###### Displaying Graphics ######
  
  plot(x, lwd = 3, xlab = "x ekseni" , ylab = "y ekseni", type = "p")
  plot(x,y)
  boxplot(rnorm(100,10,2), col = "magenta")
  barplot(x)

  # Codes available at https://github.com/bkanx/R-Basics 

  
  
  
  
  
  
  
  
  
  
###### Extra ######
 # library(rmutil)
 # library(VaRES)
 # library(animation)
  curve(expr = dnorm(x, mean = 0, sd = 1),
        col = "black", lwd = 2,
        from = -4, to = 4)
  curve(expr = dnorm(x, mean = 0, sd = 1.5),
        col = "blue", lwd = 2,
        from = -4, to = 4,
        add = TRUE)
  curve(expr = dnorm(x, mean = 0, sd = 2),
        col = "red", lwd = 2,
        from = -4, to = 4,
        add = TRUE)
  curve(expr = dnorm(x, mean=0, sd = 1/2),
        from = -4, to = 4,
        lwd = 2, col = "white",
        xlab = "", ylab = "")
  
  for (i in 1:101) {
    curve(expr = dnorm(x, mean =0, sd = seq(.5, 20.5, .2)[i]),
          from = -4, to = 4,
          lwd = 2, col = rainbow(101)[i],
          ylim = c(0,.6),
          xlim = c(0,25),
          xlab = "", ylab = "",
          add = TRUE) }
  saveGIF({
    for (i in 1:101) {
      curve(expr = dnorm(x, mean=0, sd = seq(.5, 20.5, .1)[i]),
            from = -4, to = 4,
            lwd = 2, col = rainbow(101)[i],
            ylim = c(0,.6),
            xlim = c(-4,4),
            xlab = "", ylab = "")
      text(x = 13, y = .5, cex = 2,
           labels = paste0(sqrt(8/seq(.5, 20.5, .1)[i]))) }
  })
  