#R Tutorial For Absolute Beginners [2021] [fpl_ny-jX5Y]
variablex = 1 #Type variablex in the Console returns 1
assignmenty <- 2 #Type assignmenty in the Console returns 2
numerica <-  2.5
class(numerica) #print numeric
integerc <-  1L
integerc #print 1
class(integerc) #print integer
characterd <-  "Hello"
logicale <- TRUE
logicalf <- F
logicalf #print FALSE
complexf <- 1+4i
complexf #print 1+4i
class(complexf) #print complex
exponents2 <- 2^2
exponents2 #print 4
exponents3 <- 3**3
exponents3 #print 27
module1 <- 4%%2
module1 #print 0
module2 <- 5%%2
module2 #print 1
comparisonoperator1 <- 5>3
comparisonoperator1 #print TRUE
comparisonoperator2 <- 5<=3
comparisonoperator2 #print FALSE
sequence1 <- 1:10
sequence1 #print 1  2  3  4  5  6  7  8  9 10
sequencefunction <- seq(1,10, by=2)
sequencefunction #print 1 3 5 7 9
vectorconcatenatenumeric <- c(1,2,3) #c stands for concatenate
vectorconcatenatenumeric #print 1 2 3
vectorboolean <- c(TRUE,F,T)
vectorboolean #print TRUE FALSE  TRUE
vectorcharacter <- c("Candy","Land","Chutes","Ladders")
vectorcharacter #print "Candy"   "Land"    "Chutes"  "Ladders"
vectormixdatatypes <- c(T,2,"Terminated")
vectormixdatatypes #print "TRUE"       "2"          "Terminated"
class(vectormixdatatypes) #print "character"
vectormixdatatypesnumeric <- c(T,2,55.9)
vectormixdatatypesnumeric #print 1.0  2.0 55.9
class(vectormixdatatypesnumeric) #print "numeric"
matrixtablesnoheaders <- matrix(1:6,nrow = 2,ncol = 3)
matrixtablesnoheaders
'''
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
'''
#indexing slicing
matrixtablesnoheaders[1,] #print 1 3 5
matrixtablesnoheaders[,2] #print 3 4
matrixtablesnoheaders[2,3] #print 6
matrixtablesnoheaders[1,2:3] #print 3 5
#combine two vectors combine vectors to a matrix
cbind(vectormixdatatypes,vectormixdatatypesnumeric)
'''
     vectormixdatatypes vectormixdatatypesnumeric
[1,] "TRUE"             "1"                      
[2,] "2"                "2"                      
[3,] "Terminated"       "55.9"  
'''
#Lists store different data types
multipledatatypes <- list(c(1,2,3),"Numeric Strings",1:5)
multipledatatypes
'''
[[1]]
[1] 1 2 3

[[2]]
[1] "Numeric Strings"

[[3]]
[1] 1 2 3 4 5
'''
str(multipledatatypes)
'''
List of 3
 $ : num [1:3] 1 2 3
 $ : chr "Numeric Strings"
 $ : int [1:5] 1 2 3 4 5
'''
#Most useful for data analysis data frames matrix with column headers its data is a vector
standarddataframe <- data.frame(columnheader1=c("Martin","Lisa","Bob"),columnheader2=c(100,200,333))
standarddataframe
'''
  columnheader1 columnheader2
1        Martin           100
2          Lisa           200
3           Bob           333
'''
str(standarddataframe)
'''
'data.frame':	3 obs. of  2 variables:
 $ columnheader1: Factor w/ 3 levels "Bob","Lisa","Martin": 3 2 1
 $ columnheader2: num  100 200 333
'''
standarddataframe[3,]
'''
  columnheader1 columnheader2
3           Bob           333
'''
standarddataframe[,2] #print 100 200 300
deniromoviesdataframe = read.csv("/home/mar/rstudio/deniro.csv")
deniromoviesdataframe[1:5,]
'''
  Year Score         Title
1 1968    86     Greetings
2 1970    17   Bloody Mama
3 1970    73      Hi, Mom!
4 1971    40   Born to Win
5 1973    98  Mean Streets
'''
View(deniromoviesdataframe) #Opens tab deniromoviesdataframe data frame.  View data frame in another tab.
averagescore <- mean(deniromoviesdataframe[,2])
averagescore #print 58.1954
#Bonus
averagescorebeforeyear2000 <- mean(deniromoviesdataframe[1:50,2])
averagescorebeforeyear2000 #print 72.82
yeartruefalse <- (deniromoviesdataframe$Year <2000)
yeartruefalse
'''
[1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[22]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[43]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[64] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[85] FALSE FALSE FALSE
'''
year <- (deniromoviesdataframe$Year[deniromoviesdataframe$Year<2000])
year
'''
 [1] 1968 1970 1970 1971 1973 1973 1974 1976 1976 1977 1977 1978 1980 1981 1983 1984 1984 1985 1986 1987 1987 1987 1988 1989 1989
[26] 1990 1990 1990 1991 1991 1991 1991 1992 1992 1993 1993 1993 1994 1995 1995 1996 1996 1996 1997 1997 1997 1998 1998 1999 1999
'''
moviescoresbefore2000 <- deniromoviesdataframe$Score[deniromoviesdataframe$Year<2000]
mean(moviescoresbefore2000) #print 72.82
x <- 5
y <- 1
if (x > y) {print("x is larger")} #print x is larger
if (x < y) {
    print("x is larger")
} else if (x > y) {
    "y is smaller"
} else {
    "x and y are equal"
} #print y is smaller
for (i in 1:5){print("Hello")}
'''
[1] "Hello"
[1] "Hello"
[1] "Hello"
[1] "Hello"
[1] "Hello"
'''
forloopvector = c(1:5)
for (eachforloopvector in forloopvector) {
    print(eachforloopvector)
}
'''
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
'''
value = 1
while (value < 5){
    print(value)
    value = value + 1
}
'''
[1] 1
[1] 2
[1] 3
[1] 4
'''
definefunction = function() {
    print("Hello")
}
definefunction() #return "Hello"
definefunctionwithargument = function(argument1) {
    argument1**2
}
definefunctionwithargument(3) #return 9
definefunctionwithargument(5) #return 25
definefunctionwitharguments = function(arg1,arg2) {
    localvariable = arg1 + arg2
    return(localvariable)
}
definefunctionwitharguments(11,632) #return 643.  RM:  return must include parenthesis
recursivefunction = function(n) {
    if (n==0){
        return(1)
    }
    else {
        return(recursivefunction(n-1)*n)
    }
}
recursivefunction(0) #return 1
recursivefunction(6) #return 720
#Print elements between 1 and 100.  Multiplers of 3 should be fizz.  Multipliers of 5 should be buzz.  Multipliers of 3 and 5 should be fizzbuzz.
for(i in 1:100){
    if(i%%3==0 && i%%5==0){
        cat(i,"fizzbuzz","\n") #print(i,"fizzbuzz") error message invalid 'digits' argument
    }
    else if(i%%3==0){
        cat(i,"fizz","\n")
    }
    else if(i%%5==0){
        cat(i,"buzz","\n")
    }
    else{
        print(NULL)
    }
}
'''
NULL
NULL
3 fizz 
NULL
5 buzz 
6 fizz 
NULL
NULL
9 fizz 
10 buzz 
NULL
12 fizz 
NULL
NULL
15 fizzbuzz 
NULL
...
'''