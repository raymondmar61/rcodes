numericvector<-c(3401,Inf,3.1,-555,-Inf,43)
numericvector #print 3401.0    Inf    3.1 -555.0   -Inf   43.0
numericvector^100
'''
[1]           Inf           Inf  1.368262e+49 2.687190e+274
[5]           Inf 2.222519e+163
'''
numericvector<-90000^100
numericvector #print Inf
negativeinfinityvector<-c(-42,565, -Inf, -Inf, Inf,-45632.3)
negativeinfinityvector #print -42.0    565.0     -Inf     -Inf      Inf -45632.3
mathematicaloperationinfinitevalue<-Inf*-9
mathematicaloperationinfinitevalue #print -Inf
dividebyinfiszero<-(-59/Inf)
dividebyinfiszero #print 0
dividebyzeroinfinite<-(-Inf/59)
dividebyzeroinfinite #print -Inf
is.infinite(x=numericvector) #print FALSE  TRUE FALSE FALSE  TRUE FALSE
is.finite(x=numericvector) #print TRUE FALSE  TRUE  TRUE FALSE  TRUE
numericvector==Inf #print FALSE  TRUE FALSE FALSE FALSE FALSE
infiniterelationaloperator<-(Inf>-Inf)
infiniterelationaloperator #print TRUE
negativeinfinityvector==Inf #print FALSE FALSE FALSE FALSE  TRUE FALSE
notanumbervector<-c(NaN,54.3,-2,NaN,90094.123,-Inf,55)
notanumbervector
'''
[1]      NaN    54.30    -2.00      NaN 90094.12     -Inf
[7]    55.00
'''
is.nan(x=notanumbervector) #print TRUE FALSE FALSE  TRUE FALSE FALSE FALSE
!is.nan(x=notanumbervector) #print FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
is.nan(x=notanumbervector)|is.infinite(x=notanumbervector) #print [1]  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE
notanumbervector[-(which(is.nan(x=notanumbervector)|is.infinite(x=notanumbervector)))] #print   54.30    -2.00 90094.12    55.00 #RM:  return numbers only by convert logical values into numeric index positions to remove them with negative indexes in square brackets.  In other words, the negative is do the opposite.  which returns the index number satisfying the logic and reteurns the number associated with the index position.
infinitecanceling<-(-Inf+Inf)
infinitecanceling #print NaN
mathematicaloperationnan<-NaN+1
mathematicaloperationnan #print NaN
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
combonainfnan<-c(NA,5.89,Inf,NA,9.43,-2.35,NaN,2.10,-8.53,-7.58,NA,-4.58,2.01,NaN)
combonainfnan
'''
 [1]    NA  5.89   Inf    NA  9.43 -2.35   NaN  2.10 -8.53
[10] -7.58    NA -4.58  2.01   NaN
'''
is.na(x=combonainfnan) #is.na finds NA and NaN.  NA and NaN are different entities; however, numerically they are the same.  NaN is used for numeric operations.  NA is used for numeric operations and non-numeric nonnumeric operations.

'''
 [1]  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
[10] FALSE  TRUE FALSE FALSE  TRUE
'''
which(x=is.na(x=combonainfnan)) #print 1  4  7 11 14
which(x=is.nan(x=combonainfnan)) #print 7 14
indexpositionnaonly<-which(x=(is.na(x=combonainfnan)&!is.nan(x=combonainfnan)))
indexpositionnaonly #print 1  4 11.  Identify NA entires by checking is.na is true and is.nan is not true.
deletena<-na.omit(object=combonainfnan) #delete all NAs and NaNs if the elements are numeric
deletena
'''
[1]  5.89   Inf  9.43 -2.35  2.10 -8.53 -7.58 -4.58  2.01
attr(,"na.action")
[1]  1  4  7 11 14
attr(,"class")
[1] "omit"
'''
arithmeticcalculationna<-3+(2.1*NA)-4
arithmeticcalculationna #print NA
3*c(1,2,NA,6,NA,NaN) #print 3   6  NA  18  NA NaN
NA>76 #print NA
76>NaN #print NA
76<NA #print NA
emptyentityna<-c(2,4,NA,8)
emptyentityna #print 2 4 NA 8
emptyentitynull<-c(2,4,NULL,8)
emptyentitynull #print 2 4 8
c(NA,NA,NA) #print NA NA NA
c(NULL,NULL,NULL) #print NULL.  Interpreted as one single, unsubsettable, empty object.
is.null(x=emptyentitynull) #print FALSE
is.null(x=c(NULL,NULL,NULL)) #print TRUE
is.null(x=c(NULL,NA,NULL)) #print FALSE
optionalargument<-c("string1","string2","string3")
is.na(optionalargument) #print FALSE FALSE FALSE
is.null(x=optionalargument) #print FALSE
optionalargumentna<-c(NA,NA,NA)
is.na(x=optionalargument) #print FALSE FALSE FALSE
optionalargumentnull<-c(NULL,NULL,NULL)
is.null(x=optionalargumentnull) #print TRUE
NULL+53 #print numeric(0)
53<=NULL #print logical(0)
53>NULL #print logical(0)
NaN-NULL+NA/Inf #print numeric(0)
nullist<-list(member1=c(33,1,5.2,7),member2="NA or NULL?")
nullist
'''
$member1
[1] 33.0  1.0  5.2  7.0

$member2
[1] "NA or NULL?"
'''
nullist$member1 #print 33.0  1.0  5.2  7.0
nullist$member3 #print NULL
nullist$member3<-"rob"
nullist
'''
$member1
[1] 33.0  1.0  5.2  7.0

$member2
[1] "NA or NULL?"

$member3
[1] "rob"
'''
nullist$member3<-NA
nullist
'''
$member1
[1] 33.0  1.0  5.2  7.0

$member2
[1] "NA or NULL?"

$member3
[1] NA
'''
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
numbervector1<-1:4
numbervector1 #print 1 2 3 4
is.integer(numbervector1) #print TRUE
is.numeric(numbervector1) #print TRUE
is.matrix(numbervector1) #print FALSE
is.data.frame(numbervector1) #print FALSE
is.vector(numbervector1) #print TRUE
is.logical(numbervector1) #print FALSE
addtas1fas0likealgebra<-1:4+c(T,F,F,T)
addtas1fas0likealgebra #print 2 2 3 5.  1+1, 2+0, 3+0, 4+1 for which T TRUE is 1 and F FALSE is 0.  Implicit coercion.
numberasstring<-34
oneletter<-"t"
paste("Definitely oneletter: ",oneletter,"; definitely numberasstring: ",numberasstring,".",sep="") #print "Definitely oneletter: t; definitely numberasstring: 34."  Implicit coercion.  34 is string.  Works for T True and F False.
#Explicit coercion
as.numeric(c(T,F,F,T)) #print 1 0 0 1
explicitcoercsionlogicaladdition<-1:4+as.numeric(c(T,F,F,T))
explicitcoercsionlogicaladdition #print 2 2 3 5
numbertostring<-89
as.character(numbertostring) #print "89"
logicaltocharacter<-F
as.character(logicaltocharacter) #print "FALSE"
paste("Numbertostring is character: ",as.character(numberasstring),".") #print "Numbertostring is character:  34 ."
stringnumbertonumeric<-as.numeric("1.35")
stringnumbertonumeric #print 1.35
multiplecoercion<-as.logical(as.numeric(c("1","0","1","0","0")))
multiplecoercion #print TRUE FALSE  TRUE FALSE FALSE
matrixtosinglevector<-matrix(data=1:4,nrow=2,ncol=2)
matrixtosinglevector
'''
[,1] [,2]
[1,]    1    3
[2,]    2    4
'''
as.vector(matrixtosinglevector) #print 1 2 3 4
