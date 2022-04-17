#Exercises 12.1
#12.1a Write an stop error message from Exercise 11.3b
recursivefunctionstop <- function(x){
  if(x<0){
    stop(x," variable must be a positive integer.  End function.")
  }
  if(x==0){
    return(1)
  } else {
    return(x*recursivefunctionstop(x-1))
  }
}
recursivefunctionstop(5) #print 120
recursivefunctionstop(8) #print 40320
recursivefunctionstop(-8)
'''
Error in recursivefunctionstop(-8) : 
  -8 variable must be a positive integer.  End function.
'''
#12.1b
matrixinversionfunction <- function(listx,cantinvert=NA,notamatrix="Not a matrix",silent=TRUE){
  if(!is.list(listx)){
    stop("listx variable must be a list.")
  }
  lengthlistx <- length(listx)
  if(lengthlistx==0){
    stop("listx list is empty")
  }
  if(!is.character(notamatrix)){
    warning("Attempting to coerce notamatrix variable to a character string")
    notamatrix <- as.character(notamatrix)
  # }
  for(i in 1:lengthlistx){
    if(is.matrix(listx[[i]])){
      attempt <- try(solve(listx[[i]]),silent=silent)
      if(class(attempt)=="try-error"){
        listx[[i]] <- cantinvert
      } else {
        listx[[i]] <- attempt
      }
    } else {
      listx[[i]] <- notamatrix
    }
  }
  return(listx)
}
x <- list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2))
matrixinversionfunction(x)
'''
[[1]]
[1] "Not a matrix"

[[2]]
[1] NA

[[3]]
[1] NA

[[4]]
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
'''
matrixinversionfunction(x,cantinvert=Inf,notamatrix=666)
'''
Warning messages:
1: In matrixinversionfunction(x, cantinvert = Inf, notamatrix = 666) :
  Attempting to coerce notamatrix variable to a character string
2: In if (class(attempt) == "try-error") { :
  the condition has length > 1 and only the first element will be used
'''
matrixinversionfunction(x,cantinvert=Inf,notamatrix=666,silent=F)
'''
[[1]]
[1] "666"

[[2]]
[1] Inf

[[3]]
[1] Inf

[[4]]
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

Warning message:
In if (class(attempt) == "try-error") { :
  the condition has length > 1 and only the first element will be used
'''
x <- list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
matrixinversionfunction(x,cantinvert="unsuitable matrix")
'''
[[1]]
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
 [1,]    1    0    0    0    0    0    0    0    0
 [2,]    0    1    0    0    0    0    0    0    0
 [3,]    0    0    1    0    0    0    0    0    0
 [4,]    0    0    0    1    0    0    0    0    0
 [5,]    0    0    0    0    1    0    0    0    0
 [6,]    0    0    0    0    0    1    0    0    0
 [7,]    0    0    0    0    0    0    1    0    0
 [8,]    0    0    0    0    0    0    0    1    0
 [9,]    0    0    0    0    0    0    0    0    1

[[2]]
[1] "unsuitable matrix"

[[3]]
             [,1]       [,2]        [,3]        [,4]
[1,]  0.019900498 -0.2288557  0.35820896 -0.79104478
[2,]  0.203980100  0.1542289 -0.32835821  0.64179104
[3,] -0.009950249  0.1144279 -0.17910448  0.89552239
[4,] -0.054726368  0.1293532  0.01492537 -0.07462687

[[4]]
[1] "unsuitable matrix"

[[5]]
           [,1] [,2]
[1,] -0.3333333  0.4
[2,]  0.3333333 -0.2

[[6]]
[1] "Not a matrix"

Warning messages:
1: In if (class(attempt) == "try-error") { :
  the condition has length > 1 and only the first element will be used
2: In if (class(attempt) == "try-error") { :
  the condition has length > 1 and only the first element will be used
3: In if (class(attempt) == "try-error") { :
  the condition has length > 1 and only the first element will be used
'''
x <- "hello"
matrixinversionfunction(x) #return Error in matrixinversionfunction(x) : listx variable must be a list.
x <- list()
matrixinversionfunction(x) #return Error in matrixinversionfunction(x) : listx list is empty

#Exercises 12.2
#12.2a  Include an ellipsis in its argument list to take values for the additional argument in txtProgressBar
fancyprogresstest <- function(n,...){
  result <- 0
  progressbar <- txtProgressBar(min=0,max=n,...)
  for(i in 1:n){
    print(result)
    Sys.sleep(0.5)
    setTxtProgressBar(progressbar,value=i)
    result <- result+1
  }
  close(progressbar)
  return(result)
}
timerstart <- Sys.time()
fancyprogresstest(50,style=3,char="r")
timerend <- Sys.time()
timerend-timerstart
'''
  |                                                                           |   0%[1] 0
  |rr                                                                         |   2%[1] 1
  |rrr                                                                        |   4%[1] 2
  |rrrr                                                                       |   6%[1] 3
  |rrrrrr                                                                     |   8%[1] 4
  |rrrrrrrr                                                                   |  10%[1] 5
  |rrrrrrrrr                                                                  |  12%[1] 6
  |rrrrrrrrrr                                                                 | 
...  
90%[1] 45
  |rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr      |  92%[1] 46
  |rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr     |  94%[1] 47
  |rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr   |  96%[1] 48
  |rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr |  98%[1] 49
  |rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr| 100%
[1] 50
> timerend <- Sys.time()
> timerend-timerstart
Time difference of 25.19019 secs
'''
fancyprogresstestcat <- function(n,...){
  result <- 0
  progressbar <- txtProgressBar(min=0,max=n,...)
  for(i in 1:n){
    cat("print result here ",result)
    Sys.sleep(0.5)
    setTxtProgressBar(progressbar,value=i)
    result <- result+1
  }
  close(progressbar)
  return(result)
}
timerstart <- Sys.time()
fancyprogresstestcat(50,style=3,char="r")
timerend <- Sys.time()
timerend-timerstart
'''
  |rr                                                                         | 0%print result here  1
[1] 50
...
  |rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr| 100%print result here  49
[1] 50
> timerend <- Sys.time()
> timerend-timerstart
Time difference of 25.14027 secs
'''
#12.2b  Include a progress bar style=3 for the Fibonacci sequence
fibonaccifunction <- function(n){
  if(n<0){
    warning("Warning function.  You number is negative.  Convert to positive.")
    n <- abs(n)
  } else if(n==0){
    stop("Stop function.  Number ns is uninterpretable at 0.")
  }
  if(n==1||n==2){
    return(1)
    } else {
      return(fibonaccifunction(n-1)+fibonaccifunction(n-2))
  }
}
fibonaccifunctionprogressbartry <- function(numberofvectors){
  numberofterms <- length(numberofvectors)
  result <- rep(0,numberofterms)
  progressbar <-  txtProgressBar(min=0,max=numberofterms,style=3,char="-")
  for(i in 1:numberofterms){
    attempt <- try(fibonaccifunction(numberofvectors[i]),silent=T)
    if(class(attempt)=="try-error"){
      result[i] <- NA
    } else {
      result[i] <- attempt
    }
    setTxtProgressBar(progressbar,value=i)
  }
  close(progressbar)
  return(result)
}
fibonaccifunctionprogressbartry(numberofvectors = c(3,2,7,0,9,13))
'''
  |---------------------------------------------------------------------------| 100%
[1]   2   1  13  NA  34 233
'''
timerstart <- Sys.time()
fibonaccifunctionprogressbartry(1:35)
timerend <- Sys.time()
timerend-timerstart
'''
  |---------------------------------------------------------------------------| 100%
 [1]       1       1       2       3       5       8      13      21      34      55
[11]      89     144     233     377     610     987    1597    2584    4181    6765
[21]   10946   17711   28657   46368   75025  121393  196418  317811  514229  832040
[31] 1346269 2178309 3524578 5702887 9227465
> timerend <- Sys.time()
> timerend-timerstart
Time difference of 18.74432 secs
'''
#12.2c  A stand-alone for loop fibonacci vector
timerstart <- Sys.time()
fibonaccivector <- c(1,1,rep(NA,33))
for(i in 3:35){
  fibonaccivector[i] <- fibonaccivector[i-2]+fibonaccivector[i-1]
}
fibonaccivector
timerend <- Sys.time()
timerend-timerstart
'''
 [1]       1       1       2       3       5       8      13      21      34      55
[11]      89     144     233     377     610     987    1597    2584    4181    6765
[21]   10946   17711   28657   46368   75025  121393  196418  317811  514229  832040
[31] 1346269 2178309 3524578 5702887 9227465
> timerend <- Sys.time()
> timerend-timerstart
Time difference of 0.00462985 secs
'''
