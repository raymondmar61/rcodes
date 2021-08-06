numericvector<-c(3401,Inf,3.1,-555,-Inf,43)
numericvector #print 3401.0    Inf    3.1 -555.0   -Inf   43.0
is.infinite(x=numericvector) #print FALSE  TRUE FALSE FALSE  TRUE FALSE
is.finite(x=numericvector) #print TRUE FALSE  TRUE  TRUE FALSE  TRUE
numericvector==Inf #print FALSE  TRUE FALSE FALSE FALSE FALSE
notanumbervector<-c(NaN,54.3,-2,NaN,90094.123,-Inf,55)
notanumbervector
'''
[1]      NaN    54.30    -2.00      NaN 90094.12     -Inf
[7]    55.00
'''
is.nan(x=notanumbervector) #print TRUE FALSE FALSE  TRUE FALSE FALSE FALSE
!is.nan(x=notanumbervector) #print FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
is.nan(x=notanumbervector)|is.infinite(x=notanumbervector) #print [1]  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE
notanumbervector[-(which(is.nan(x=notanumbervector)|is.infinite(x=notanumbervector)))] #print   54.30    -2.00 90094.12    55.00 return numbers only
missingvalues<-c("character","a",NA,"with","string",NA)
missingvalues
'''
[1] "character" "a"         NA          "with"     
[5] "string"    NA
'''
missingvaluesfactor<-factor(c("blue",NA,NA,"blue","green","blue",NA,"red","red",NA,"green"))
missingvaluesfactor
'''
 [1] blue  <NA>  <NA>  blue  green blue  <NA>  red   red  
[10] <NA>  green
Levels: blue green red
'''
missingvaluesmatrix<-matrix(c(1:3,NA,5,6,NA,8,NA),nrow=3,ncol=3)
missingvaluesmatrix
'''
     [,1] [,2] [,3]
[1,]    1   NA   NA
[2,]    2    5    8
[3,]    3    6   NA
'''
is.na(x=missingvalues) #print FALSE FALSE  TRUE FALSE FALSE  TRUE
which(x=is.na(x=missingvalues)) #print 3 6
combonainfnan<-c(NA,5,89,Inf,NA,9.43,-2.35,NaN,2.10,-8.53,-7.58,NA,-4.58,2.01,NaN)
combonainfnan
'''
 [1]    NA  5.00 89.00   Inf    NA  9.43 -2.35   NaN  2.10
[10] -8.53 -7.58    NA -4.58  2.01   NaN
'''
deletena<-na.omit(object=combonainfnan) #delete all NAs and NaNs if the elements are numeric
deletena
'''
 [1]  5.00 89.00   Inf  9.43 -2.35  2.10 -8.53 -7.58 -4.58
[10]  2.01
attr(,"na.action")
[1]  1  5  8 12 15
attr(,"class")
[1] "omit"
'''
emptyentitynull<-c(2,4,NULL,8)
emptyentitynull #print 2 4 8
c(NA,NA,NA) #print NA NA NA
c(NULL,NULL,NULL) #print NULL
is.null(x=emptyentitynull) #print FALSE
is.null(x=c(NULL,NULL,NULL)) #print TRUE
is.null(x=c(NULL,NA,NULL)) #print FALSE
matrixattributes<-matrix(data=1:10,nrow=5,ncol=2)
matrixattributes
'''
[,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
'''
attributes(matrixattributes)
'''
$dim
[1] 5 2
'''
attr(x=matrixattributes,which="dim") #print 5 2
matrixlabels<-matrix(data=1:10,nrow=5,ncol=2,dimnames=list(c("row1","row2","row3","row4","row5"),c("col1","col2")))
matrixlabels
'''
     col1 col2
row1    1    6
row2    2    7
row3    3    8
row4    4    9
row5    5   10
'''
attributes(matrixlabels)
'''
$dim
[1] 5 2

$dimnames
$dimnames[[1]]
[1] "row1" "row2" "row3" "row4" "row5"

$dimnames[[2]]
[1] "col1" "col2"
'''
dimnames(matrixlabels)
'''
[[1]]
[1] "row1" "row2" "row3" "row4" "row5"

[[2]]
[1] "col1" "col2"
'''
dimnames(matrixlabels)<-list(c("renamerow1","renamerow2","renamerow3","renamerow4","renamerow5"),c("onecolumn","twocolumn"))
matrixlabels
'''
           onecolumn twocolumn
renamerow1         1         6
renamerow2         2         7
renamerow3         3         8
renamerow4         4         9
renamerow5         5        10
'''
numbervector1<-1:4
numbervector1 #print 1 2 3 4
numbervector2<-seq(from=1,to=4,length=6)
numbervector2 #print 1.0 1.6 2.2 2.8 3.4 4.0
charactervector<-c("a","few","strings","here")
charactervector #print "a"       "few"     "strings" "here" 
logicvector<-c(T,F,F,F,T,F,T,T)
logicvector #print TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE
factorvector<-factor(c("Blue","Blue","Green","Red","Green","Yellow"))
factorvector
'''
[1] Blue   Blue   Green  Red    Green  Yellow
Levels: Blue Green Red Yellow
'''
class(numbervector1) #print "integer"
class(numbervector2) #print "numeric"
class(charactervector) #print "character"
class(logicvector) #print "logical"
class(factorvector) #print "factor"
numbermatrix1<-matrix(data=numbervector1,nrow=2,ncol=2)
numbermatrix1
'''
     [,1] [,2]
[1,]    1    3
[2,]    2    4
'''
numbermatrix2<-matrix(data=numbervector2,nrow=2,ncol=3)
numbermatrix2
'''
     [,1] [,2] [,3]
[1,]  1.0  2.2  3.4
[2,]  1.6  2.8  4.0
'''
charactermatrix<-matrix(data=charactervector,nrow=2,ncol=2)
charactermatrix
'''
     [,1]  [,2]     
[1,] "a"   "strings"
[2,] "few" "here"
'''
logicalmatrix<-matrix(data=logicvector,nrow=4,ncol=2)
logicalmatrix
'''
      [,1]  [,2]
[1,]  TRUE  TRUE
[2,] FALSE FALSE
[3,] FALSE  TRUE
[4,] FALSE  TRUE
'''
class(numbermatrix1) #print matrix
class(numbermatrix2) #print matrix
class(charactermatrix) #print matrix
class(logicalmatrix) #print matrix
#ordered factor vector an example of multiple classes.  Ordered is a subclass of factor.
multipleclassexample<-factor(x=c("Small","Large","Large","Regular","Small"),levels=c("Small","Regular","Large"),ordered=TRUE)
multipleclassexample
'''
[1] Small   Large   Large   Regular Small  
Levels: Small < Regular < Large
'''
class(multipleclassexample) #print "ordered" "factor" 
