#Exercise 6.1
#a Create a vector
storevector<-c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)
#i Output elements raised to 75 not infinite
storevectorraised75<-storevector^75
storevectorraised75
'''
 [1]           Inf          -Inf          -Inf           Inf
 [5]           Inf 7.612764e+305 3.644077e+298 9.080657e+295
 [9]          -Inf 1.856983e+293
 '''
!is.infinite(x=storevectorraised75) #official solution is.finite(x=storevectorraised75)
'''
 [1] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE
[10]  TRUE
'''
#ii Return the elements excluding negative infinity
which((x=storevectorraised75)!=(-Inf)) #print 1  4  5  6  7  8 10
storevectorraised75[which((x=storevectorraised75)!=(-Inf))]
'''
[1]           Inf           Inf           Inf 7.612764e+305
[5] 3.644077e+298 9.080657e+295 1.856983e+293
'''
#b Create a 3x4 matrix
storematrix<-matrix(data=c(77875.40,27551.45,23764.30,-36478.88,-35466.25,-73333.85,36599.69,-70585.69,-39803.81,55976.34,76694.82,47032.00),nrow=3,ncol=4,byrow=TRUE)
storematrix
'''
         [,1]      [,2]     [,3]      [,4]
[1,]  77875.40  27551.45 23764.30 -36478.88
[2,] -35466.25 -73333.85 36599.69 -70585.69
[3,] -39803.81  55976.34 76694.82  47032.00
'''
#i Raise storematrix to the power of 65 and divide by infinity.  Identify the NaNs.
storematrixraised65<-storematrix^65
storematrixraised65
'''
               [,1]          [,2]          [,3]           [,4]
[1,]            Inf 4.068084e+288 2.723496e+284 -3.409551e+296
[2,] -5.470067e+295          -Inf 4.226992e+296           -Inf
[3,] -9.887851e+298           Inf           Inf  5.076613e+303
'''
storematrixraised65dividebyinfinite<-storematrixraised65/Inf
storematrixraised65dividebyinfinite
'''
     [,1] [,2] [,3] [,4]
[1,]  NaN    0    0    0
[2,]    0  NaN    0  NaN
[3,]    0  NaN  NaN    0
'''
which(is.nan(x=storematrixraised65dividebyinfinite)) #print 1  5  6  9 11
which(is.nan(x=storematrixraised65dividebyinfinite),arr.ind=T)
'''
     row col
[1,]   1   1
[2,]   2   2
[3,]   3   2
[4,]   3   3
[5,]   2   4
'''
#ii Raise storematrix to the power of 67 and add infinity.  Return the values which are not Nan.
storematrixraised67<-storematrix^67
storematrixraised67
'''
               [,1]          [,2]          [,3]          [,4]
[1,]            Inf 3.088011e+297 1.538072e+293 -4.53712e+305
[2,] -6.880550e+304          -Inf 5.662214e+305          -Inf
[3,] -1.566575e+308           Inf           Inf           Inf
'''
storematrixraised67addinfinite<-storematrixraised67+Inf
storematrixraised67addinfinite
'''
     [,1] [,2] [,3] [,4]
[1,]  Inf  Inf  Inf  Inf
[2,]  Inf  NaN  Inf  NaN
[3,]  Inf  Inf  Inf  Inf
'''
#Identify values in storematrix for which storematrix raised to the power of 67 doesn't equal to negative infinity.  RM:  confusing.  Official solution.
storematrixraised67!=-Inf
'''
     [,1]  [,2] [,3]  [,4]
[1,] TRUE  TRUE TRUE  TRUE
[2,] TRUE FALSE TRUE FALSE
[3,] TRUE  TRUE TRUE  TRUE
'''
storematrix[storematrixraised67!=-Inf]
'''
 [1]  77875.40 -35466.25 -39803.81  27551.45  55976.34
 [6]  23764.30  36599.69  76694.82 -36478.88  47032.00
'''
#iii Identify values in storematrix either storematrixraised67 negative infinity or storematrixraised67 finite
storematrixraised67==-Inf
'''
      [,1]  [,2]  [,3]  [,4]
[1,] FALSE FALSE FALSE FALSE
[2,] FALSE  TRUE FALSE  TRUE
[3,] FALSE FALSE FALSE FALSE
'''
storematrixraised67!=Inf
'''
      [,1]  [,2]  [,3]  [,4]
[1,] FALSE  TRUE  TRUE  TRUE
[2,]  TRUE  TRUE  TRUE  TRUE
[3,]  TRUE FALSE FALSE FALSE
'''
is.finite(x=storematrixraised67)
'''
      [,1]  [,2]  [,3]  [,4]
[1,] FALSE  TRUE  TRUE  TRUE
[2,]  TRUE FALSE  TRUE FALSE
[3,]  TRUE FALSE FALSE FALSE
'''
storematrixraised67[2,2] #print -Inf
storematrixraised67[2,4] #print -Inf
storematrix[which(storematrixraised67==-Inf|storematrixraised67!=Inf)]
'''
[1] -35466.25 -39803.81  27551.45 -73333.85  23764.30  36599.69
[7] -36478.88 -70585.69
'''
storematrix[which(storematrixraised67==-Inf|is.finite(storematrixraised67))] #official solution
'''
[1] -35466.25 -39803.81  27551.45 -73333.85  23764.30  36599.69
[7] -36478.88 -70585.69
'''

#Exercise 6.2
code62 <-c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
#i True or false the length of code62 is 8.
code62 #print 4.3 2.2 2.4 NaN 3.3 3.1 3.4  NA
code62length<-length(x=code62)
code62length #print 8
code62length==8 #print TRUE
#ii True or false which(x=is.na(x=foo)) will not result in 4 and 8.
which(x=is.na(x=code62)) #print 4 8.  4 is NaN.  8 is NA.
#iii Check is.null(x=code62) provides the locations of the two NULL values
is.null(x=code62) #print FALSE
which(code62==NULL) #print integer(0)
code62[which(code62==NULL)] #print numeric(0)
#iv Executing is.na(x=code62[8]+4/NULL) results in NA
is.na(x=code62[8]+4/NULL) #print logical (0)
#b create and store a list containing a single member
#i Name the list member alphalist
storelist<-list(alphalist=c(7,7,NA,3,NA,1,1,5,NA))
storelist
'''
$alphalist
[1]  7  7 NA  3 NA  1  1  5 NA
'''
#ii Confirm the list doesn't have a member named beta
storelist!="beta"
'''
alphalist 
     TRUE 
'''
storelist[storelist!="beta"]
'''
$alphalist
[1]  7  7 NA  3 NA  1  1  5 NA
'''
is.null(x=storelist$beta) #print TRUE #official solution
#iii Add a new member called beta which is the vector obtained by identifying the index positions of alphalist that are NA.  RM:  replace NA with beta(?)
storelistbeta<-storelist
storelistbeta
'''
$alphalist
[1]  7  7 NA  3 NA  1  1  5 NA
'''
which(x=is.na(x=storelistbeta)) #print named integer(0)
which(x=is.na(x=storelistbeta$alphalist)) #print 3 5 9
#official solution
storelistbeta$beta <- which(x=is.na(x=storelistbeta$alpha))
storelistbeta
'''
$alphalist
[1]  7  7 NA  3 NA  1  1  5 NA

$beta
[1] 3 5 9
'''
storelistbeta$beta #print 3 5 9
