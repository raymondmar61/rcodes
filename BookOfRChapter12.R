#RM:  keep the code to finish the section; I may need the functions.
warningtest <- function(x){
  if(x<=0){
    warning("x is less than or equal to zero.  I set x equal to one as the denominator for 5/x to continue warningtest function.")
    x <- 1
  }
  return(5/x)
}
errortest <- function(x){
  if(x<=0){
    stop("x is less than or equal to zero.  Stop errortest function.")
  }
  return(5/x)
}
warningtest(10) #return 0.5
warningtest(0)
'''
[1] 5
Warning message:
In warningtest(0) :
  x is less than or equal to zero.  I set x equal to one as the denominator for 5/x to continue warningtest function.
'''
errortest(10) #return 0.5
errortest(-5)
'''
Error in errortest(-5) : 
  x is less than or equal to zero.  Stop errortest function.
'''
fibonaccifunction <- function(n){
  if(n<0){
    #warning(cat("Changing the negative number",n,"to a positive number",abs(n),".")) #returns Changing the negative number -5 to a positive number 5 .Warning message:\n In fibonaccifunction(-5) : 
    warning("Changing the negative number ",n," to a positive number ",abs(n),".")
    n <- abs(n)
  } else if(n==0){
    stop("n is uninterpretable at ",n)
  }
  if(n==1|n==2){
    return(1)
  } else {
    return(fibonaccifunction(n-1)+fibonaccifunction(n-2))
  }
}
fibonaccifunction(-8)
'''
[1] 21
Warning message:
In fibonaccifunction(-8) :
  Changing the negative number -8 to a positive number 8.
'''
fibonaccifunction(0) #return Error in fibonaccifunction(0) : n is uninterpretable at 0
fibonaccifunction(6) #return 8
trystatement1 <- try(fibonaccifunction(0),silent=TRUE) #return *nothing*
trystatement1
'''
[1] "Error in fibonaccifunction(0) : n is uninterpretable at 0\n"
attr(,"class")
[1] "try-error"
attr(,"condition")
<simpleError in fibonaccifunction(0): n is uninterpretable at 0>
'''
trystatement2 <- try(fibonaccifunction(0),silent=FALSE) #return Error in fibonaccifunction(0) : n is uninterpretable at 0
trystatement3 <- try(fibonaccifunction(9),silent=TRUE) #return *nothing*
trystatement3 #return 34
trystatement4 <- try(fibonaccifunction(9),silent=FALSE) #return *nothing*
trystatement4 #return 34
trystatement5 <- try(fibonaccifunction(-3),silent=TRUE)
'''
Warning message:
In fibonaccifunction(-3) :
  Changing the negative number -3 to a positive number 3.
'''
trystatement5 #return 2
trystatement6 <- suppressWarnings(fibonaccifunction(-3))
trystatement6 #return 2
fibonaccivector <- function(vectorofindexes){
  numberofterms <- length(vectorofindexes)
  result <- rep(0,numberofterms)
  for(i in 1:numberofterms){
    result[i] <- fibonaccifunction(vectorofindexes[i])
  }
  return(result)
}
vectornumbers1 <- fibonaccivector(vectorofindexes = c(1,2,10,8))
vectornumbers1 #print 1  1 55 21
vectornumbers2 <- fibonaccivector(vectorofindexes = c(3,2,7,0,9,13))
'''
Error in fibonaccifunction(vectorofindexes[i]) : 
  n is uninterpretable at 0 
'''
fibonaccivectortry <- function(vectorofindexes){
  numberofterms <- length(vectorofindexes)
  result <- rep(0,numberofterms)
  for(i in 1:numberofterms){
    attempt <- try(fibonaccivector(vectorofindexes[i]),silent=T)
    if(class(attempt)=="try-error"){
      result[i] <- NA
    } else {
      result[i] <- attempt
    }
  }
  return(result)
}
vectornumbers3 <- fibonaccivectortry(vectorofindexes=c(3,2,7,0,9,13))
vectornumbers3 #print 2   1  13  NA  34 233

sleepcommandfunction <- function(number){
  result <- 0
  for(i in 1:number){
    print(result)
    cat("Can't use string in print().  Use cat() to separate variables and string with commas,",result)
    result <- result+1
    Sys.sleep(0.5)
  }
  return(result)
}
sleepcommandfunction(8)
'''
[1] 0
Can\'t use string in print().  Use cat() to separate variables and string with commas, 0
[1] 1
Can\'t use string in print().  Use cat() to separate variables and string with commas, 1
[1] 2
Can\'t use string in print().  Use cat() to separate variables and string with commas, 2
[1] 3
Can\'t use string in print().  Use cat() to separate variables and string with commas, 3
[1] 4
Can\'t use string in print().  Use cat() to separate variables and string with commas, 4
[1] 5
Can\'t use string in print().  Use cat() to separate variables and string with commas, 5
[1] 6
Can\'t use string in print().  Use cat() to separate variables and string with commas, 6
[1] 7
Can\'t use string in print().  Use cat() to separate variables and string with commas, 7
[1] 8
'''
textprogressbar <- function(number){
  result <- 0
  progressbarvariable <- txtProgressBar(min=0,max=number,style=1,char="=") #min and max are numeric values define the limits of the bar.  Style is an 1, 2, or 3.  Style 3 shows percentage completed.  Char is a single character string what is the progress bar appearance.
  print(result)
  for(i in 1:number){
    result <- result+1
    Sys.sleep(0.5)
    setTxtProgressBar(progressbarvariable,value=i) #Progress the bar with the bar object to update bar progressbarvariable variable and the value it should update value=i.  When progress bar is completed after exiting the loop, the progress bar must be terminated with close() close(progressbarvariable).
  }
  close(progressbarvariable)
  return(result)
}
textprogressbar(8)
'''
[1] 0
=====================================================================================
[1] 8
'''
Sys.time() #print "2022-04-16 16:19:12 PDT"
timestart <- Sys.time()
timeend <- Sys.time()
timeend-timestart #print Time difference of 0.0001838207 secs
proc.time() #return total elapsed wall clock time and computer-related CPU timings
'''
    user   system  elapsed 
   9.325    1.603 1970.502 
'''
