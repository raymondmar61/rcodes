#Exercises 11.1
#11.1a write another Fibonacci function with two arguments
fibonaccitwoarguments <- function(threshold, printme){
  if(printme==TRUE){
    fibonaccia <- 1
    fibonaccib <- 1
    cat(fibonaccia,", ",fibonaccib,", ",sep="")
    repeat{
      answer = fibonaccia+fibonaccib
      fibonaccia <- fibonaccib
      fibonaccib <- answer
      cat(fibonaccib,", ",sep="")
      if(fibonaccib>threshold){
        cat("Break now")
        break
      }
    }
  } else if(printme==FALSE){
    fibonaccisequence <- c(1,1)
    counter <- 2
    repeat {
      fibonaccisequence <- c(fibonaccisequence,fibonaccisequence[counter-1]+fibonaccisequence[counter])
      counter <- counter+1
      if(fibonaccisequence[counter]>threshold){
        break
      }
    }
    return(fibonaccisequence)
  }
}
fibonaccitwoarguments(threshold = 150,printme = TRUE) #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, Break now
fibonaccitwoarguments(150,T) #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, Break now
fibonaccitwoarguments(1000000,T) #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, Break now
fibonaccitwoarguments(150,F) #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
fibonaccitwoarguments(1000000,F)
'''
 [1]       1       1       2       3       5       8      13      21      34      55
[11]      89     144     233     377     610     987    1597    2584    4181    6765
[21]   10946   17711   28657   46368   75025  121393  196418  317811  514229  832040
[31] 1346269
'''
#11.1b write a function for a factorial while loop
factorialfunction <- function(int){
  factorial <- int
  answer <- 1
  if(factorial < 0){
    return(NaN)
  }
  else if(factorial == 0){
    answer <- 1
  } else {
    while(factorial>0){
      answer = factorial * answer
      factorial <- factorial-1
    }
  }
  return(answer)
}
factorialfunction(5) #print 120
factorialfunction(12) #print 479001600
factorialfunction(0) #print 1
factorialfunction(-6) #print 1
