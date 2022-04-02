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

#matrixmultiplication crash course is multiply the first matrix rows by the second matrix columns then add:  first matrix row1 * second matrix column 1, first matrix row 2 * second matrix column1, first matrix row2 * second matrix column1, first matrix row2 * second matrix column2.  Number of columns first matrix equals number of rows second matrix.
matrixmultiplicationfunction <- function(inputmatrix,multiplyingmatrix,stringnotamatrix1,stringnotamatrix2){
  matrix.flags <- sapply(inputmatrix,FUN=is.matrix) #vector matrix.flags.  sapply is an implicit looping function.  Apply is.matrix to inputmatarix.  The result is a logical vector of equal length inputmatrix.
  print("function output")
  print(matrix.flags)
  if(!any(matrix.flags)){
    return(stringnotamatrix1) #if there are not matrices in inputmatrix, then function returns stringnotamatrix1
  }
  indexes <- which(matrix.flags) #get matrix member indexes
  print(indexes)
  counter <- 0
  result <- list() #store results as a list
  for(i in indexes){
    print(i)
    temp <- inputmatrix[[i]]
    print(temp)
    if(ncol(temp)==nrow(multiplyingmatrix)){
      counter <- counter+1
      result[[counter]] <- temp%*%multiplyingmatrix
    }
  }
  if(counter==0){
    return(stringnotamatrix2)
  } else {
    return(result)
  }
}
listfirsttestfunction <- list(matrix(1:4,2,2),"string here is not a matrix","another string here not a matrix",matrix(1:8,2,4),matrix(1:8,4,2))
listfirsttestfunction
'''
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
[1] "string here is not a matrix"

[[3]]
[1] "another string here not a matrix"

[[4]]
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

[[5]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matrixmultiplicationfunction(inputmatrix=listfirsttestfunction,multiplyingmatrix = diag(2),stringnotamatrix1 = "no matrices in inputmatrix",stringnotamatrix2 = "matrices in inputmatrix incorrect dimensions in multiplyingmatarix")
diag(2)
'''
     [,1] [,2]
[1,]    1    0
[2,]    0    1
'''
'''
[1] "function output"
[1]  TRUE FALSE FALSE  TRUE  TRUE
[1] 1 4 5
[1] 1
     [,1] [,2]
[1,]    1    3
[2,]    2    4
[1] 4
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
[1] 5
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
listsecondtestfunction <- list(1:4,"string here not a matrix",c(F,T,T,T),"??")
listsecondtestfunction
'''
[[1]]
[1] 1 2 3 4

[[2]]
[1] "string here not a matrix"

[[3]]
[1] FALSE  TRUE  TRUE  TRUE

[[4]]
[1] "??"
'''
matrixmultiplicationfunction(inputmatrix=listsecondtestfunction,multiplyingmatrix = diag(2),stringnotamatrix1 = "no matrices in inputmatrix",stringnotamatrix2 = "matrices in inputmatrix incorrect dimensions in multiplyingmatarix")
diag(2)
'''
     [,1] [,2]
[1,]    1    0
[2,]    0    1
'''
'''
[1] "function output"
[1] FALSE FALSE FALSE FALSE
[1] "no matrices in inputmatrix"
'''
listthirdtestfunction <- list(1:4,"string here not a matrix",c(F,T,T,T),"??",matrix(1:8,2,4))
listthirdtestfunction
'''
[[1]]
[1] 1 2 3 4

[[2]]
[1] "string here not a matrix"

[[3]]
[1] FALSE  TRUE  TRUE  TRUE

[[4]]
[1] "??"

[[5]]
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
'''
matrixmultiplicationfunction(inputmatrix=listthirdtestfunction,multiplyingmatrix = diag(2),stringnotamatrix1 = "no matrices in inputmatrix",stringnotamatrix2 = "matrices in inputmatrix incorrect dimensions in multiplyingmatarix")
'''
[1] "function output"
[1] FALSE FALSE FALSE FALSE  TRUE
[1] 5
[1] 5
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
[1] "matrices in inputmatrix incorrect dimensions in multiplyingmatarix"
'''
matrixmultiplicationfunction(inputmatrix=list(matrix(1:6,3,2)),multiplyingmatrix = matrix(c(2,3,5,6),2,2),"","")  #Number of columns first matrix equals number of rows second matrix.  Performing matrix multiplication multiple rows first matrix by columns second matrix.
matrix(1:6,3,2)
'''
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
'''
matrix(c(2,3,5,6),2,2)
'''
     [,1] [,2]
[1,]    2    5
[2,]    3    6
'''
'''
[1] "function output"
[1] TRUE
[1] 1
[1] 1
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
[[1]]
     [,1] [,2]
[1,]   14   29
[2,]   19   40
[3,]   24   51
'''
matrixmultiplicationfunction2 <- function(inputmatrix,multiplyingmatrix,stringnotamatrix1="default string no valid matrices",stringnotamatrix2=stringnotamatrix1){
  matrix.flags <- sapply(inputmatrix,FUN=is.matrix) #vector matrix.flags.  sapply is an implicit looping function.  Apply is.matrix to inputmatarix.  The result is a logical vector of equal length inputmatrix.
  print("function output")
  print(matrix.flags)
  if(!any(matrix.flags)){
    return(stringnotamatrix1) #if there are not matrices in inputmatrix, then function returns stringnotamatrix1
  }
  indexes <- which(matrix.flags) #get matrix member indexes
  print(indexes)
  counter <- 0
  result <- list() #store results as a list
  for(i in indexes){
    print(i)
    temp <- inputmatrix[[i]]
    print(temp)
    if(ncol(temp)==nrow(multiplyingmatrix)){
      counter <- counter+1
      result[[counter]] <- temp%*%multiplyingmatrix
    }
  }
  if(counter==0){
    return(stringnotamatrix2)
  } else {
    return(result)
  }
}
matrixmultiplicationfunction2(listfirsttestfunction,multiplyingmatrix=diag(2))
'''
[1] "function output"
[1]  TRUE FALSE FALSE  TRUE  TRUE
[1] 1 4 5
[1] 1
     [,1] [,2]
[1,]    1    3
[2,]    2    4
[1] 4
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
[1] 5
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matrixmultiplicationfunction2(listsecondtestfunction,multiplyingmatrix=diag(2))
'''
[1] "function output"
[1] FALSE FALSE FALSE FALSE
[1] "default string no valid matrices"
'''
matrixmultiplicationfunction2(listthirdtestfunction,multiplyingmatrix=diag(2))
'''
[1] "function output"
[1] FALSE FALSE FALSE FALSE  TRUE
[1] 5
[1] 5
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
[1] "default string no valid matrices"
'''
matrixmultiplicationfunction3 <- function(inputmatrix,multiplyingmatrix,stringnotamatrix1,stringnotamatrix2){
  matrix.flags <- sapply(inputmatrix,FUN=is.matrix) #vector matrix.flags.  sapply is an implicit looping function.  Apply is.matrix to inputmatarix.  The result is a logical vector of equal length inputmatrix.
  print("function output")
  print(matrix.flags)
  if(!any(matrix.flags)){
    if(missing(stringnotamatrix1)){
      return("missing function found stringnotamatrix1 variable missing argument input returned TRUE")
    } else {
      return(stringnotamatrix1) #if there are not matrices in inputmatrix, then function returns stringnotamatrix1
    }
  }
  indexes <- which(matrix.flags) #get matrix member indexes
  print(indexes)
  counter <- 0
  result <- list() #store results as a list
  for(i in indexes){
    print(i)
    temp <- inputmatrix[[i]]
    print(temp)
    if(ncol(temp)==nrow(multiplyingmatrix)){
      counter <- counter+1
      result[[counter]] <- temp%*%multiplyingmatrix
    }
  }
  if(counter==0){
    if(missing(stringnotamatrix2)){
      return("missing function found stringnotamatrix2 variable missing argument input returned TRUE")
    } else {
      return(stringnotamatrix2)
    } 
  } else {
    return(result)
  }
}
matrixmultiplicationfunction3(listfirsttestfunction,diag(2))
'''
[1] "function output"
[1]  TRUE FALSE FALSE  TRUE  TRUE
[1] 1 4 5
[1] 1
     [,1] [,2]
[1,]    1    3
[2,]    2    4
[1] 4
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
[1] 5
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matrixmultiplicationfunction3(listsecondtestfunction,diag(2))
'''
[1] "function output"
[1] FALSE FALSE FALSE FALSE
[1] "missing function found stringnotamatrix1 variable missing argument input returned TRUE"
'''
matrixmultiplicationfunction3(listthirdtestfunction,diag(2))
'''
[1] "function output"
[1] FALSE FALSE FALSE FALSE  TRUE
[1] 5
[1] 5
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
[1] "missing function found stringnotamatrix2 variable missing argument input returned TRUE"
'''
fibonacciellipses <- function(thresh, plotit=TRUE,...){ #plotit=TRUE is the default value
  fibseq <- c(1,1)
  counter <- 2
  repeat{
    fibseq <- c(fibseq,fibseq[counter-1]+fibseq[counter])
    print(fibseq)
    counter <- counter+1
    if(fibseq[counter]>thresh){
      break
    }
  }
  if(plotit){
    #graph line chart
    plot(1:length(fibseq),fibseq,...) #x-axis is 1:length(fibseq).  y-axis is fibseq.  The ellipsis represents additional arguments a user may pass for plot()
  } else {
    return(fibseq)
  }
}
fibonacciellipses(150)
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
'''
#additional arguments to fibonacciellipses function including chart labels, x shaped dots, and a dash shaped line
fibonacciellipses(150, type="b",pch=4,lty=2,main="Chart title",ylab="y-axis labels Fibonacci sequence",xlab="x-axis label Term (n)")
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
'''
unpackargumentsellipsis <- function(...){
  x <- list(...)
  cat("Here is ellipsis ... in its entirety as a list:\n")
  print(x)
  cat("The names of ellipsis ... are:",names(x),"\n")
  cat("The classes of ellipsis ... are:\n")
  print(sapply(x,class))
}
unpackargumentsellipsis(amatrix=matrix(1:4,2,2),bboolean=TRUE,cvector=c("two","strings"),dfactor=factor(c(1,1,2,1)))
'''
Here is ellipsis ... in its entirety as a list:
$amatrix
     [,1] [,2]
[1,]    1    3
[2,]    2    4

$bboolean
[1] TRUE

$cvector
[1] "two"     "strings"

$dfactor
[1] 1 1 2 1
Levels: 1 2

The names of ellipsis ... are: amatrix bboolean cvector dfactor 
The classes of ellipsis ... are:
$amatrix
[1] "matrix" "array" 

$bboolean
[1] "logical"

$cvector
[1] "character"

$dfactor
[1] "factor"
'''
multipleshelperfunctionexternal <- function(inputmatrix,matrix.flags,multiplyingmatrix){
  indexes <- which(matrix.flags) #which function takes in logical vectors as the argument x and returns the index value corresponding to TRUE entires.  which(x=c(T,F,F,T,T)) #print 1 4 5.
  print("multipleshelperfunctionexternal output")
  print(indexes)
  counter <- 0
  result <- list()
  for(i in indexes){
    temp <- inputmatrix[[i]]
    if(ncol(temp)==nrow(multiplyingmatrix)){
      counter <- counter+1
      result[[counter]] <- temp%*%multiplyingmatrix
    }
  }
  return(list(result, counter))
}
matrixmultiplicationfunction4 <- function(inputmatrix,multiplyingmatrix,stringnotamatrix1="No valid matrices",stringnotamatrix2=stringnotamatrix1){
  matrix.flags <- sapply(inputmatrix,FUN = is.matrix) #vector matrix.flags.  sapply is an implicit looping function.  Apply is.matrix to inputmatarix.  The result is a logical vector of equal length inputmatrix.
  print("matrixmultiplicationfunction4 output")
  print(matrix.flags)
  if(!any(matrix.flags)){
    return(stringnotamatrix1)
  }
  helper.call <- multipleshelperfunctionexternal(inputmatrix,matrix.flags,multiplyingmatrix) #inputmatrix variable has matrices helper.call external helper function is called
  result <- helper.call[[1]]
  counter <- helper.call[[2]]
  if(counter==0){
    return(stringnotamatrix2)
  } else {
    return(result)
  }
}
matrixmultiplicationfunction4(listfirsttestfunction,multiplyingmatrix=diag(2))
'''
[1] "matrixmultiplicationfunction4 output"
[1]  TRUE FALSE FALSE  TRUE  TRUE
[1] "multipleshelperfunctionexternal output"
[1] 1 4 5
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matrixmultiplicationfunction4(listsecondtestfunction,multiplyingmatrix=diag(2))
'''
[1] "matrixmultiplicationfunction4 output"
[1] FALSE FALSE FALSE FALSE
[1] "No valid matrices"
'''
matrixmultiplicationfunction4(listthirdtestfunction,multiplyingmatrix=diag(2))
'''
[1] "matrixmultiplicationfunction4 output"
[1] FALSE FALSE FALSE FALSE  TRUE
[1] "multipleshelperfunctionexternal output"
[1] 5
[1] "No valid matrices"
'''
matrixmultiplicationfunction5 <- function(inputmatrix,multiplyingmatrix,stringnotamatrix1="No valid matrices",stringnotamatrix2=stringnotamatrix1){
  matrix.flags <- sapply(inputmatrix,FUN = is.matrix) #vector matrix.flags.  sapply is an implicit looping function.  Apply is.matrix to inputmatarix.  The result is a logical vector of equal length inputmatrix.
  print("matrixmultiplicationfunction5 output")
  print(matrix.flags)
  if(!any(matrix.flags)){
    return(stringnotamatrix1)
  }
  multipleshelperfunctioninternal <- function(inputmatrix, matrix.flags, multiplyingmatrix){
    indexes <- which(matrix.flags) #which function takes in logical vectors as the argument x and returns the index value corresponding to TRUE entires.  which(x=c(T,F,F,T,T)) #print 1 4 5.
    print("multipleshelperfunctioninternal output")
    print(indexes)
    counter <- 0
    result <- list()
    for(i in indexes){
      temp <- inputmatrix[[i]]
      if(ncol(temp)==nrow(multiplyingmatrix)){
        counter <- counter+1
        result[[counter]] <-  temp%*%multiplyingmatrix
      }
    }
    return(list(result,counter))
  }
  helper.call <- multipleshelperfunctioninternal(inputmatrix,matrix.flags,multiplyingmatrix) #inputmatrix variable has matrices helper.call external helper function is called
  result <- helper.call[[1]]
  counter <- helper.call[[2]]
  if(counter==0){
    return(stringnotamatrix2)
  } else {
    return(result)
  }
}
matrixmultiplicationfunction5(listfirsttestfunction,multiplyingmatrix=diag(2))
'''
[1] "matrixmultiplicationfunction5 output"
[1]  TRUE FALSE FALSE  TRUE  TRUE
[1] "multipleshelperfunctioninternal output"
[1] 1 4 5
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matrixmultiplicationfunction5(listsecondtestfunction,multiplyingmatrix=diag(2))
'''
[1] "matrixmultiplicationfunction5 output"
[1] FALSE FALSE FALSE FALSE
[1] "No valid matrices"
'''
matrixmultiplicationfunction5(listthirdtestfunction,multiplyingmatrix=diag(2))
'''
[1] "matrixmultiplicationfunction5 output"
[1] FALSE FALSE FALSE FALSE  TRUE
[1] "multipleshelperfunctioninternal output"
[1] 5
[1] "No valid matrices"
'''
#Simple, one-line task function such as apply().  Disposable or anonymous functions define a function for a single instance without creating a new object.
repeatmatrixtwice <- matrix(c(2,3,3,4,2,4,7,3,3,6,7,2),3,4)
repeatmatrixtwice
'''
     [,1] [,2] [,3] [,4]
[1,]    2    4    7    6
[2,]    3    2    3    7
[3,]    3    4    3    2
'''
apply(repeatmatrixtwice,MARGIN = 2,FUN=function(x){sort(rep(x,2))}) #Use apply like a Python nested for loop.  X is the object to cycle through.  MARGIN is the integer which flags which margin of X to operate on such as rows or columns.  FUN is the function to perform on each MARGIN.  MARGIN index follows the positional order of the dimension for matrices and arrays:  1 is rows, 2 is columns, 3 is layers, 4 is blocks.
'''
     [,1] [,2] [,3] [,4]
[1,]    2    2    3    2
[2,]    2    2    3    2
[3,]    3    4    3    6
[4,]    3    4    3    6
[5,]    3    4    7    7
[6,]    3    4    7    7
'''
apply(repeatmatrixtwice,MARGIN = 1,FUN=function(x){sort(rep(x,2))}) #Use apply like a Python nested for loop.  X is the object to cycle through.  MARGIN is the integer which flags which margin of X to operate on such as rows or columns.  FUN is the function to perform on each MARGIN.  MARGIN index follows the positional order of the dimension for matrices and arrays:  1 is rows, 2 is columns, 3 is layers, 4 is blocks.
'''
     [,1] [,2] [,3]
[1,]    2    2    2
[2,]    2    2    2
[3,]    4    3    3
[4,]    4    3    3
[5,]    6    3    3
[6,]    6    3    3
[7,]    7    7    4
[8,]    7    7    4
'''
#Recursion is a function calls itself.
#Find the corresponding nth Fibonacci sequence
fibonaccirecrusivefunction <- function(n){
  if(n==1|n==2){
    return(1)
  } else {
    return(fibonaccirecrusivefunction(n-1)+fibonaccirecrusivefunction(n-2))
  }
}
fibonaccirecrusivefunction(5) #return 5
fibonaccirecrusivefunction(4) #return 3
fibonaccirecrusivefunction(14) #return 377