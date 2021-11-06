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
#Exercise 6.3
#a Identify the class of the following objects and state whether the class is explicitly or implicitly defined.
onei<-array(data=1:36,dim=c(3,3,4))
onei
'''
, , 1

     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

, , 2

     [,1] [,2] [,3]
[1,]   10   13   16
[2,]   11   14   17
[3,]   12   15   18

, , 3

     [,1] [,2] [,3]
[1,]   19   22   25
[2,]   20   23   26
[3,]   21   24   27

, , 4

     [,1] [,2] [,3]
[1,]   28   31   34
[2,]   29   32   35
[3,]   30   33   36
'''
class(onei) #print array
attributes(onei) #RM:  implicit
'''
$dim
[1] 3 3 4
'''
twoii<-as.vector(onei)
twoii
'''
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22
[23] 23 24 25 26 27 28 29 30 31 32 33 34 35 36
'''
class(twoii) #print integer
attributes(twoii) #print NULL #RM:  implicit
threeiii<-as.character(twoii)
threeiii
'''
 [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13"
[14] "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "26"
[27] "27" "28" "29" "30" "31" "32" "33" "34" "35" "36"
'''
class(threeiii) #print character
attributes(threeiii) #print NULL #RM:  implicit
fouriv<-as.factor(threeiii)
fouriv
'''
 [1] 1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22
[23] 23 24 25 26 27 28 29 30 31 32 33 34 35 36
36 Levels: 1 10 11 12 13 14 15 16 17 18 19 2 20 21 22 23 24 25 ... 9
'''
class(fouriv) #print factor
attributes(fouriv) #RM:  explicit
'''
$levels
 [1] "1"  "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "2"  "20"
[14] "21" "22" "23" "24" "25" "26" "27" "28" "29" "3"  "30" "31" "32"
[27] "33" "34" "35" "36" "4"  "5"  "6"  "7"  "8"  "9" 

$class
[1] "factor"
'''
fivev<-twoii+c(-0.1,0.1)
fivev
'''
 [1]  0.9  2.1  2.9  4.1  4.9  6.1  6.9  8.1  8.9 10.1 10.9 12.1 12.9
[14] 14.1 14.9 16.1 16.9 18.1 18.9 20.1 20.9 22.1 22.9 24.1 24.9 26.1
[27] 26.9 28.1 28.9 30.1 30.9 32.1 32.9 34.1 34.9 36.1
'''
class(fivev) #print numeric
attributes(fivev) #print NULL #RM:  implicit
#b For each object in a, find the sum of the result of calling is.numeric and is.integer on it separately.  Next, turn the collection of the five results into a factor with levels 0, 1, and 2 identified by the results themselves.  Compare the factor vector with the result of coercing it to a numeric vector.
is.numeric(onei) #print TRUE
is.integer(onei) #print TRUE
oneisum<-is.numeric(onei)+is.integer(onei) #print 2
oneisum #print 2
is.numeric(twoii) #print TRUE
is.integer(twoii) #print TRUE
twoiisum<-is.numeric(twoii)+is.integer(twoii)
twoiisum #print 2
is.numeric(threeiii) #print FALSE
is.integer(threeiii) #print FALSE
threeiiisum<-is.numeric(threeiii)+is.integer(threeiii)
threeiiisum #print 0
is.numeric(fouriv) #print FALSE
is.integer(fouriv) #print FALSE
fourivsum<-is.numeric(fouriv)+is.integer(fouriv)
fourivsum #print 0
is.numeric(fivev) #print TRUE
is.integer(fivev) #print FALSE
fivevsum<-is.numeric(fivev)+is.integer(fivev)
fivevsum #print 1
factorsumresults<-factor(x=c(oneisum,twoiisum,threeiiisum,fourivsum,fivevsum))  #official solution factorsumresults<-factor(x=c(oneisum,twoiisum,threeiiisum,fourivsum,fivevsum),levels=c(0,1,2))
factorsumresults
'''
[1] 2 2 0 0 1
Levels: 0 1 2
'''
as.numeric(factorsumresults) #print 3 3 1 1 2 #RM:  3 is the position of 2 in Levels, 1 is the position of 0 in Levels, 2 is the position of 1 in Levels.  Levels: 0 1 2 --> 1 2 3
#c Convert the matrix to the following one line string.
matrixtoonelinestring<-matrix(data=c(2:13),nrow=3,ncol=4)
matrixtoonelinestring
'''
     [,1] [,2] [,3] [,4]
[1,]    2    5    8   11
[2,]    3    6    9   12
[3,]    4    7   10   13
'''
as.character(matrixtoonelinestring) #print "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13"
c(as.character(matrixtoonelinestring[1,1:4]),as.character(matrixtoonelinestring[2,1:4]),as.character(matrixtoonelinestring[3,1:4])) #print "2"  "5"  "8"  "11" "3"  "6"  "9"  "12" "4"  "7"  "10" "13"
#official solution
as.character(as.vector(t(matrixtoonelinestring))) #print "2"  "5"  "8"  "11" "3"  "6"  "9"  "12" "4"  "7"  "10" "13".  RM:  transpose matrix is Chapter 3 t(name of matrix).
#d Create the following matrix
numbersvector<-c(34,23,33,42,41,0,1,1,0,0,1,2,1,1,2)
numbersvector #print 34 23 33 42 41  0  1  1  0  0  1  2  1  1  
coercematrix<-matrix(data=numbersvector,nrow=5,ncol=3,byrow=FALSE)
coercematrix
'''
     [,1] [,2] [,3]
[1,]   34    0    1
[2,]   23    1    2
[3,]   33    1    1
[4,]   42    0    1
[5,]   41    0    2
'''
#i Coerce to a data frame
as.data.frame(coercematrix)
'''
  V1 V2 V3
1 34  0  1
2 23  1  2
3 33  1  1
4 42  0  1
5 41  0  2
'''
#ii Coerce the second column of the data frame to be logical value
coercematrixdataframe<-as.data.frame(coercematrix)
coercematrixdataframe
'''
V1 V2 V3
1 34  0  1
2 23  1  2
3 33  1  1
4 42  0  1
5 41  0  2
'''
coercematrixdataframe[2]
'''
  V2
1  0
2  1
3  1
4  0
5  0
'''
as.logical(coercematrixdataframe[2]) #print Error: 'list' object cannot be coerced to type 'logical'
as.logical((as.numeric(coercematrixdataframe[2])) #print Error: 'list' object cannot be coerced to type 'double'
typeof(coercematrixdataframe[2]) #print list
coercematrixdataframe$V2 #print 0 1 1 0 0
typeof(coercematrixdataframe$V2) #print double
as.logical((coercematrixdataframe$V2)) #print FALSE  TRUE  TRUE FALSE FALSE
#iii Coerce the third column of the data frame to be factor-valued.  RM:  Convert third column to a factor.  Factor is Chapter 4.
coercematrixdataframe[3]
'''
  V3
1  1
2  2
3  1
4  1
5  2
'''
coercematrixdataframe$V3 #print 1 2 1 1 2
as.factor(coercematrixdataframe$V3)
'''
[1] 1 2 1 1 2
Levels: 1 2
'''