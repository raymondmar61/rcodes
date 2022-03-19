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