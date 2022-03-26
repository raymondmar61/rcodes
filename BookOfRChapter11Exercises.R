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
