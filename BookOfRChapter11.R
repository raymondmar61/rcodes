fibonaccifunction <- function(){
  fibonaccia <- 1
  fibonaccib <- 1
  cat(fibonaccia,", ",fibonaccib,", ",sep="")
  repeat{
    answer = fibonaccia+fibonaccib
    fibonaccia <- fibonaccib
    fibonaccib <- answer
    cat(fibonaccib,", ",sep="")
    if(fibonaccib>150){
      cat("Break now")
      break
    }
  }
}
fibonaccifunction() #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, Break now
fibonaccifunctionargument <- function(threshold){
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
}
fibonaccifunctionargument(threshold=150) #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, Break now
fibonaccifunctionargument(10000) #print 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, Break now
fibonaccifunctionvector <- function(threshold){
  fibonaccisequence <- c(1,1)
  counter <- 2
  repeat {
    fibonaccisequence <- c(fibonaccisequence,fibonaccisequence[counter-1]+fibonaccisequence[counter])
    counter <- counter+1
    if(fibonaccisequence[counter]>threshold){
      break
    }
    print(fibonaccisequence)
  }
  return(fibonaccisequence)
}
fibonaccifunctionvector(150)
'''
[1] 1 1 2
[1] 1 1 2 3
[1] 1 1 2 3 5
[1] 1 1 2 3 5 8
[1]  1  1  2  3  5  8 13
[1]  1  1  2  3  5  8 13 21
[1]  1  1  2  3  5  8 13 21 34
[1]  1  1  2  3  5  8 13 21 34 55
[1]  1  1  2  3  5  8 13 21 34 55 89
[1]   1   1   2   3   5   8  13  21  34  55  89 144
[1]   1   1   2   3   5   8  13  21  34  55  89 144 233
RM:  The last line or the line immediately above is the return(fibonaccisequence)
'''
assignreturnobject <- fibonaccifunctionvector(150)
'''
[1] 1 1 2
[1] 1 1 2 3
[1] 1 1 2 3 5
[1] 1 1 2 3 5 8
[1]  1  1  2  3  5  8 13
[1]  1  1  2  3  5  8 13 21
[1]  1  1  2  3  5  8 13 21 34
[1]  1  1  2  3  5  8 13 21 34 55
[1]  1  1  2  3  5  8 13 21 34 55 89
[1]   1   1   2   3   5   8  13  21  34  55  89 144
'''
assignreturnobject #print 1   1   2   3   5   8  13  21  34  55  89 144 233
noreturn <- function(){
  aa <- 2.5
  bb <- "string me along"
  cc <- "string 'em up"
  dd <- 4:8
}
noreturn() #print *nothing*.  RM:  if there's no return statement inside a function, the function ends at the last line and the most recently assigned or created object is returned.
assignfunctionvariable <- noreturn()
assignfunctionvariable #print 4 5 6 7 8
yesreturn <- function(){
  aa <- 2.5
  bb <- "string me along"
  cc <- "string 'em up"
  dd <- 4:8
  return(cc)
}
yesreturn() #print string 'em up
assignfunctionvariable <- yesreturn()
assignfunctionvariable #print string 'em up
yesreturnearly <- function(){
  aa <- 2.5
  bb <- "string me along"
  return(aa)
  cc <- "string 'em up"
  dd <- 4:8
  return(bb)
}
yesreturnearly() #print 2.5.  Function returns one value even with multiple return statements.  The first return is executed and the function exits.