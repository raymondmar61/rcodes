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

#Exercises 11.2
#11.2a
compoundinterest <- function(principalp,annualinterestratei,interestpaidyearlyt=12,yearsy,plotchart=TRUE,...){
  finalamount <- principalp*((1+(annualinterestratei/(100*interestpaidyearlyt)))^(interestpaidyearlyt*yearsy))
  xaxisyears <- 1:yearsy
  yaxisfinalamount <- c()
  for(i in 1:yearsy){
    yaxisfinalamount[i] <- principalp*((1+(annualinterestratei/(100*interestpaidyearlyt)))^(interestpaidyearlyt*i))
  }
  print(finalamount)
  if(plotchart){
    plot(xaxisyears,yaxisfinalamount,type="s",...)
  } else {
    return(finalamount)
  }
}
#i
compoundinterest(5000,4.4,12,10,plotchart=F) #return 7757.291
#ii
compoundinterest(100,22.9,12,20) #return 9339.589
#iii create a chart with two lines to compare ii compounded monthly and iii compounded annually #RM:  looked at solution
compoundinterestfromiiannually <- compoundinterest(100,22.9,1,20) #return 6180.7
lines(1:20,compoundinterestfromiiannually,lty=2,type="s") #RM:  it seems manually set the x-axis years from 1 to 20.  Also it looks like the chart is incorrect.
legend("topleft",lty=c(1,2),legend=c("monthly interest exercise ii","annual interest exercise iii")) #added the legend at the top left.

#11.2b
#Quadratic equation variable x.
quadraticfunction <- function(k1,k2,k3){
  if(any(c(missing(k1),missing(k2),missing(k3)))){
    return("k1, k2, and/or k3 are missing")
  }
  x <- (k2^2)-(4*k1*k3)
  if(x<0){
    print("No solution.  No real roots.")
  } else if(x==0){
    return(-k2/(2*k1))
  } else {
    #two solutions are returned
    return(c((-k2-(x^0.5))/(2*k1),(-k2+(x^0.5))/(2*k1)))
  }
}
quadraticfunction(2,-1,-5) #return -1.350781  1.850781
quadraticfunction(1,1,1) #return No solution.  No real roots.
quadraticfunction(1.3,-8,-3.13) #return -0.3691106  6.5229567
quadraticfunction(2.25,-3,1) #return 0.6666667
quadraticfunction(1.4,-2.2,-5.1) #return -1.278312  2.849740
quadraticfunction(-5,10.11,-9.9) #return No solution.  No real roots.
quadraticfunction(0) #return k1, k2, and/or k3 are missing

#11.3a Insert an exclamation mark separated by an empty string or no spaces  after each letter writing a disposable function using lapply
letterlist <- list("a",c("b","c","d","e"),"f",c("g","h","i"))
print(letterlist)
'''
[[1]]
[1] "a"

[[2]]
[1] "b" "c" "d" "e"

[[3]]
[1] "f"

[[4]]
[1] "g" "h" "i"
'''
lapply(letterlist,FUN = function(x) paste(x,"!",sep=""))
'''
[[1]]
[1] "a!"

[[2]]
[1] "b!" "c!" "d!" "e!"

[[3]]
[1] "f!"

[[4]]
[1] "g!" "h!" "i!"
'''
lapply(letterlist,FUN = function(x) paste(x,"!"))
'''
[[1]]
[1] "a !"

[[2]]
[1] "b !" "c !" "d !" "e !"

[[3]]
[1] "f !"

[[4]]
[1] "g !" "h !" "i !"
'''
#11.3b
factorialrecursivefunction <- function(x){
  if(x==0){
    return(1)
  } else {
    return(x*factorialrecursivefunction(x-1))
  }
}
factorialrecursivefunction(5) #return 120
factorialrecursivefunction(12) #return 479001600
factorialrecursivefunction(0) #return 1
#11.3c
geometricmeanlist <- function(listofnumbers){
  geometriccalculation <- function(number){
    return(prod(number)^(1/length(number)))
  }
  for(i in 1:length(listofnumbers)){
    if(!is.matrix(listofnumbers[[i]])){
      listofnumbers[[i]] <- geometriccalculation(listofnumbers[[i]])
    } else {
      listofnumbers[[i]] <- apply(listofnumbers[[i]],1,geometriccalculation)
    }
  }
  return(listofnumbers)
}
foo <- list(1:3,matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),4,2),matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),2,4))
geometricmeanlist(foo)
'''
[[1]]
[1] 1.817121

[[2]]
[1] 3.896152 3.794733 2.946184 4.442972

[[3]]
[1] 3.388035 4.106080
'''
bar <- list(1:9,matrix(1:9,1,9),matrix(1:9,9,1),matrix(1:9,3,3))
geometricmeanlist(bar)
'''
[[1]]
[1] 4.147166

[[2]]
[1] 4.147166

[[3]]
[1] 1 2 3 4 5 6 7 8 9

[[4]]
[1] 3.036589 4.308869 5.451362
'''