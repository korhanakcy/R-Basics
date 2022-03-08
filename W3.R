# W3
# Calculations

# Missing Values
# NA (not available), NaN (is not number), Inf (Infinity)

1/0
# [1] Inf
0/0
# [1] NaN
NaN+100
# [1] NaN
-1/Inf
# [1] 0
-Inf+100
# [1] -Inf
Inf-Inf
# [1] NaN
Inf/0
# [1] Inf

# Built-in Functions- Predefined functions
round(pi)
# [1] 3
pi
# [1] 3.141593
round(pi,2)
# [1] 3.14

#  3.2.10^(-2)
3.2e-2
# [1] 0.032


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

floor(3.4)
# [1] 3
ceiling(3.4)
# [1] 4
floor(3.6)
#[1] 3
ceiling(3.6)
# [1] 4
# auxiliary functions-yardımcı fonksiyonlar
# sum(x)
z <- 1:5 
z
# [1] 1 2 3 4 5
sum(z)
# [1] 15
1+2+3+4+5
# [1] 15
#  prod(z) products of elements
prod(z)
# [1] 120
# mean(z) arithmetic mean
mean(z)
# [1] 3
(1+2+3+4+5)/5
#[1] 3
# var(z) varince 
var(z)  
# [1] 2.5
# sd(z) sd.deviation 
sqrt(var(z))  
# [1] 1.581139
sd(z)  
# [1] 1.581139
# rank(x) sample ranks 
rank(z)
# [1] 1 2 3 4 5
# min()
# max()
z
# [1] 1 2 3 4 5
# x <-(5,2,3,4)
# Hata: beklenmeyen durum, ',' in "x <-(5,"
x <- c(5,2,3,4)
x
# [1] 5 2 3 4
rank(x)
# [1] 4 1 2 3

sort(c(2,8,4,1,5))
# 1 2 4 5 8
min(c(5,6))
max(c(5,6))

cumsum(c(2,8,4,1,5))   # ∑ x_i
#  2 10 14 15 20
cumprod(c(2,8,4,1,5))    # ∏ x_i 
#  2  16  64  64 320


# Mathematical operations
# exp()
log(exp(3))   # log to the base e
# [1] 3
log(3)
# [1] 1.098612
log10(10)
# [1] 1
log2(2)
# [1] 1

log(9,3)  # log to base 3 of number 9
exp(1)   # antilog of x 


factorial(5) # X!

choose( )  # N!/X!(N-X)!



# Variables
x = 100
x
# [1] 100
x <- 100
x
# [1] 100
1/(1 + 100)^100
# [1] 3.697112e-201
1/(1 + x)^x
# [1] 3.697112e-201
x <- 10
1/(1 + x)^x
#[1] 3.855433e-11
x <- 1:5
x
# [1] 1 2 3 4 5
1/(1+x)^x
# [1] 0.5000000000 0.1111111111 0.0156250000 0.0016000000 0.0001286008
x
# [1] 1 2 3 4 5


sum(6/(1:100)^2)
# [1] 9.809903
sqrt(sum(6/(1:100)^2))
#[1] 3.132077
sqrt(sum(6/(1:1000)^2))
#[1] 3.140638
sqrt(sum(6/(1:10000)^2))
#[1] 3.141497
sqrt(sum(6/(1:100000)^2))
#[1] 3.141583
pi
# [1] 3.141593


length(x)
# [1] 11
# compute mean and median
mean(x)
# [1] 3.818182
median(x)
#[1] 3
sort(x)
# [1]  1  1  2  2  2  3  3  4  5  9 10
x[6]
# [1] 3
# compute variance and sd. dev.
x
# [1]  1  2  3  4  2  3  1  2  5  9 10
var(x)
# [1] 9.363636
sd(x)
# [1] 3.060006
sqrt(var(x))
# [1] 3.060006
x = c(1,2,3,4,2,3,1,2,5,9,1000)
median(x)
# [1] 3

objects()   # synonym ls(), lists all objetcs to the screen

quantile(x)
# 0%    25%    50%    75%   100% 
# 1.0    2.0    3.0    4.5 1000.0 
quantile(x.25)
# Error in quantile(x.25) : 'x.25' nesnesi bulunamadı
quantile(x,.25)
# 25% 
# 2 
# IQR=Q3-Q1
x = c(1,2,3,4,2,3,1,2,5,9,10)
Q1 = quantile(x,.25)
Q3 = quantile(x,.75)
IQR = Q3-Q1
IQR
# 75% 
# 2.5 
#outliers:smaller than Q1-1.5*IQR and larger than Q3+1.5*IQR
I1 = Q1-1.5IQR  # error
# Hata: unexpected symbol in "I1= Q1-1.5IQR"
(I1 = Q1-1.5*IQR)
(I2 = Q3+1.5*IQR)
I1
# 25% 
# -1.75 
I2
# 75% 
# 8.25 
which(x < I1)
#integer(0)
x
# [1]  1  2  3  4  2  3  1  2  5  9 10
which(x > I2)
# [1] 10 11
x[which(x > I2)]
# [1]  9 10

summary(x)                       
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 1.000   2.000   3.000   3.818   4.500  10.000 
boxplot(x)
boxplot(x,col = "orange")
boxplot(x,col = orange)  # error
# Error in boxplot.default(x, col = orange) : 'orange' nesnesi bulunamadı
boxplot(x,col = "orange")
boxplot(x,col = "blue")
boxplot(x,col = "blue",horizontal = TRUE)
plot(x)
x
# [1]  1  2  3  4  2  3  1  2  5  9 10
?plot
# starting httpd help server ... done
plot(x,type ="l")
plot(x,type ="p")
plot(x,type ="p",col ="red")
plot(x,type ="l",col ="red")
y <- c(185,181,188,182,183,180,156,171,186,155,164)
length(y)
# [1] 11
plot(x,y)
plot(y)
plot(x,y)


w + y
# [1] 60 60 60 60 60
w <- c(50,40,30,20)
w + y
# [1]  60  60  60  60 100

# x+y  addition
# x-y  subtraction
# x*y  element-wise multiplication
# x/y  division
# x^y  exponentiation
# x%%y  integer division remainder
# x%/%y  integer division 
# -x     sign inversion
# x**2   power of x, squared of x     


# Extract the 6th value from x
 x[6]
# [1] 3
x[6:7]
# [1] 3 1
 x[c(1,4,7)]   # arbitrary=keyfi
# [1] 1 4 1
x[-6]
# [1]  1  2  3  4  2  1  2  5  9 10
x
# [1]  1  2  3  4  2  3  1  2  5  9 10
x[-6]   # negative indices for avoding elements
# [1]  1  2  3  4  2  1  2  5  9 10
x[-(6:7)]   # negative indices for avoding elements
# [1]  1  2  3  4  2  2  5  9 10
x[-c(1,4,7)]   # choose arbitrary=keyfi numbers
# [1]  2  3  2  3  2  5  9 10
x
# [1]  1  2  3  4  2  3  1  2  5  9 10
x[12] <-NA  # add NA into vector
x
# [1]  1  2  3  4  2  3  1  2  5  9 10 NA
x[-12]  # remove NA
# [1]  1  2  3  4  2  3  1  2  5  9 10
x
# [1]  1  2  3  4  2  3  1  2  5  9 10 NA

# vector arithmetics
x
# [1]  1  2  3  4  2  3  1  2  5  9 10 NA
 y
 # [1]  4  6  8  1  4  6  4  9  8  7 12
na.omit(x)  # removes NA from vectors
#  [1]  1  2  3  4  2  3  1  2  5  9 10
# attr(,"na.action")
# [1] 12
# attr(,"class")
# [1] "omit"

x <- na.omit(x)
x
#  [1]  1  2  3  4  2  3  1  2  5  9 10

y
#  [1]  4  6  8  1  4  6  4  9  8  7 12
 x+y
# [1]  5  8 11  5  6  9  5 11 13 16 22

x-y
#  [1] -3 -4 -5  3 -2 -3 -3 -7 -3  2 -2

 x*y   # element-wise multiplication-eleman elemana çarpma
#  [1]   4  12  24   4   8  18   4  18  40  63 120

y
#  [1]  4  6  8  1  4  6  4  9  8  7 12
y**2
#  [1]  16  36  64   1  16  36  16  81  64  49 144
y^2
# [1]  16  36  64   1  16  36  16  81  64  49 144
 -y
# [1]  -4  -6  -8  -1  -4  -6  -4  -9  -8  -7 -12
 y %% 2
# [1] 0 0 0 1 0 0 0 1 0 1 0
 
rm(y)   # removes objects you have assigned previously
 y
# Error: object 'y' not found
range(x)
# [1]  1 10
x
 [1]  1  2  3  4  2  3  1  2  5  9 10

 range( c(5,6,9,0,1) )
# [1] 0 9        # prints out something else
 
 # range= max-min
 range( c(5,6,9,0,1) )[1]
# [1] 0
 range( c(5,6,9,0,1) )[2] 
# [1] 9
 range( c(5,6,9,0,1) )[2] - range( c(5,6,9,0,1) )[1]
# [1] 9


 # More indexing
 x   # recall x 
 # [1]  1  2  3  4  2  3  1  2  5  9 10

which( x == max(x))
# [1] 11   # position of the x value that is equal to max of x.
 which( x == min(x)) # position of the x value that is equal to min of x.
# [1] 1 7
 
 # Check what these are??
 
 x[which(x == max(x))]
# [1] 10
# [1] 1 1    # It is clear that x has two values (1 and 1) equals to min of x.
 
 x[1]
# [1] 1
 x[7]
# [1] 1
which( x != min(x))
# [1]  2  3  4  5  6  8  9 10 11
which( x != max(x))
# [1]  1  2  3  4  5  6  7  8  9 10
 which.min(x)
# [1] 1
which.max(x)
# [1] 11
x[which.min(x)]   # x[1]
# [1] 1
x[which.max(x)]   # x[11]
# [1] 10
x[x>2]
# [1]  3  4  3  5  9 10   # prints our not the positions but the values


#################################################################################