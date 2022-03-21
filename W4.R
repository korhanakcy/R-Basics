# W#4 

# Exercises with Indexing operator
# []
w <- -3:3
w
#   [1] -3 -2 -1  0  1  2  3
# third elemwent is
w[3]
w[c(3,5)]
w[-c(3,5)]

# Exercise on character-factor vectors
names <- factor(c("A", "B", "V", "F", "A","V"))
names <- factor(c("A", "B", "V", "F", "A","V"), levels=c("V","F","A","B"))


# Built-in vectors: unique() and duplicated() 
names <- c("A", "B", "V", "F", "A","V")
unique(names)
table(names)
duplicated(names)


# Built-in functions: union(), intersect() and setdiff() 

letters <- c("B","C","G","A")
union(names,letters)   # Birleşim
intersect(names, letters)
setdiff(names,letters)


# Logical vectors
# ! x for negation
# x & y for conjunction (logical AND)
# x | y for disjunction (logical OR)
# xor(x,y) for exclusive disjunction (logical XOR)

1 > 2
#  [1] FALSE
2 == 2
#  [1] TRUE
(1:3) <= c(1,3,5)
#  [1] TRUE TRUE TRUE
(1:10) <= c(3,7)   ###### recyling rule
#  [1]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE


# <, >, <=, >=, ==, !=, & and |

b <- c(13,7,8,2)
a <- c(TRUE,FALSE,TRUE,FALSE)


sum(c("TRUE","FALSE"))
#   Error in sum(c("TRUE", "FALSE")) : argümanın geçersiz 'type' (character)

sum(factor(c(TRUE,FALSE)))

x <- -10:10
x <= 1   # comparison

# built-in functions: all() and any()
all(x <= 1)
any(x <= 1)

x%%4 == 0
# [11] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE

x <- c(1,1,2,3,5,8,13)
x
# [1]  1  1  2  3  5  8 13
# show that the index positions of TRUE elements of x
which(x%%2 == 0)
#    [1] 3 6
rep(FALSE, 3)
#   [1] FALSE FALSE FALSE
rep("FALSE", 3)
#  [1] "FALSE" "FALSE" "FALSE"
rep("T", 3)
# [1] "T" "T" "T"
!c(TRUE, FALSE)
#   [1] FALSE  TRUE


# Complex numbers
1i
# [1] 0+1i
3 + 2
#  [1] 5
3 + 2i
# [1] 3+2i


x <- 1:10
x
# [1]  1  2  3  4  5  6  7  8  9 10
x[c(T,F,T,F,T,T,F,F,F,F)]
#  [1] 1 3 5 6
x[x > 5]
#  [1]  6  7  8  9 10
which(x > 5)
#  [1]  6  7  8  9 10
x <- 100:90
x
#  [1] 100  99  98  97  96  95  94  93  92  91  90
which(x > 94)
# [1] 1 2 3 4 5 6
x[x > 94]
#  [1] 100  99  98  97  96  95


### NA to denote a missing value
x <- c(1,NA,3,4)
x
#  [1]  1 NA  3  4
x[2]
#  [1] NA
x > 2
#  [1] FALSE    NA  TRUE  TRUE
subset(x, subset = x > 2)
# [1] 3 4
subset(x , x > 2)
#  [1] 3 4

# class() function is used to check out the type of an obj.
x
#   [1]  1 NA  3  4
class(x)    #  class of an object
#          [1] "numeric"
class("1")
#         [1] "character"
class(1)
#        [1] "numeric"
class(1i)
#       [1] "complex"
class(T)
#      [1] "logical"
class(F)
#     [1] "logical"
class(1:5)
#    [1] "integer"
class(0.1:0.5)
#    [1] "numeric"


# Changing the factor levels manually
wek <- c("Joe","Sam","Mary","Joe","Mary","Mary")
wek
#[1] "Joe"  "Sam"  "Mary" "Joe"  "Mary" "Mary"
class(wek)
# [1] "character"

wek <- factor(wek)
# [1] Joe  Sam  Mary Joe  Mary Mary
# Levels: Joe Mary Sam

levels(wek)
#  [1] "Joe"  "Mary" "Sam" 
levels(wek)[1]
#  [1] "Joe"
(wek)[1]
# [1] Joe
# Levels: Joe Mary Sam

levels(wek)[1]
# [1] "Joe"
levels(wek)[1] <- "Michael"
levels(wek)
# [1] "Michael" "Mary"    "Sam"    
wek[1] <- "Michael"
wek
# [1] Michael Sam     Mary    Michael Mary    Mary   
#Levels: Michael Mary Sam

table(wek)    # Frequences
prop.table(table(wek))   # Relative frequencies

#Lists 
L <- list(1,"string",TRUE,5:10)
L
# [[1]]
# [1] 1
# [[2]]
#[1] "string"

# [[3]]
#[1] TRUE

# [[4]]
#[1]  5  6  7  8  9 10

# L[[4]][3]
#[1] 7
L[[2]]
#[1] "string"
L[["string"]]
#NULL
L
#[[1]]
#[1] 1

#[[2]]
#[1] "string"

#[[3]]
#[1] TRUE

#[[4]]
#[1]  5  6  7  8  9 10


L <- list(1, string="string",TRUE,5:10)
L
#[[1]]
#[1] 1

#$string
#[1] "string"

#[[3]]
#[1] TRUE

#[[4]]
#[1]  5  6  7  8  9 10

L[["string"]]
#[1] "string"

L$string
#[1] "string"
L <- list(a = 1, string="string",c = TRUE, x = 5:10)
L
