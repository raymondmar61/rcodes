#R Programming Tutorial - Learn the Basics of Statistical Computing-_V8eKsto3Ug.mp4
#Data Formats
#R data types: integer, single, double, character, logical, complex, raw
#R data structures: vector, matrix, array, data frame or dataset, list.  Vector is one or more numbers same data type in a one dimensional array.  Vector is R's basic data object.  Matrix is two dimensional data of same length and same data type.  Matrix columns need not be named.  Array is like a vector which is three or more dimensions.  Data frame is most common form.  Data frame is two dimensional vectors of multiple data types of same length.  Data frame is like a spreadsheet.  List is most flexible.  List is an ordered collection of elements.  Any class, any length or structure.  List can include sublists and sub-sublists.
datatypedoublebydefault <- 15
datatypedoublebydefault #print 15
typeof(datatypedoublebydefault) #print double
vectordoublebydefault<-1.5
vectordoublebydefault #print 1.5
typeof(vectordoublebydefault) #print double
charactervariableobject <- "c"
charactervariableobject #print "c"
typeof(charactervariableobject) #print character
rstringischaracter <- "a string of text is character"
rstringischaracter #print "a string of text is character"
typeof(rstringischaracter) #print character
logicalallcaps <- TRUE
logicalallcaps #print TRUE
typeof(logicalallcaps) #print logical
logicaloneletter<- F
logicaloneletter #print FALSE
typeof(logicaloneletter) #print logical
#Data structures
vectordoublebydefaultconcatenate<-c(1.5)
vectordoublebydefaultconcatenate #print 1.5
typeof(vectordoublebydefaultconcatenate) #print double
vectorone<-c(1,2,3,4,5)
vectorone #print 1 2 3 4 5
is.vector(vectorone) #print TRUE
vectoronerange<-c(1:5)
vectoronerange #print 1 2 3 4 5
is.vector(vectoronerange) #print TRUE
vectorofcharacters<-c("a","b","c")
vectorofcharacters #print "a" "b" "c"
is.vector(vectorofcharacters) #print TRUE
vectoroflogical<-c(TRUE, TRUE, FALSE, F, T)
vectoroflogical #print TRUE  TRUE FALSE FALSE  TRUE
is.vector(vectoroflogical) #print TRUE
matrixtwodimensionsamelength2 <- matrix(c(T,T,F,F,T,F), nrow=2)
matrixtwodimensionsamelength2
# [,1]  [,2]  [,3]
# [1,] TRUE FALSE  TRUE
# [2,] TRUE FALSE FALSE
matrixtwodimensionsamelength3 <- matrix(c(T,T,F,F,T,F), nrow=3)
matrixtwodimensionsamelength3
# [,1]  [,2]
# [1,]  TRUE FALSE
# [2,]  TRUE  TRUE
# [3,] FALSE FALSE
matrixtwodimensionsamelength1 <- matrix(c(T,T,F,F,T,F), nrow=1)
matrixtwodimensionsamelength1
# [,1] [,2]  [,3]  [,4] [,5]  [,6]
# [1,] TRUE TRUE FALSE FALSE TRUE FALSE
matrixtwodimensionsamelength5 <- matrix(c(T,T,F,F,T,F), nrow=5)
# Warning message:
#   In matrix(c(T, T, F, F, T, F), nrow = 5) :
#   data length [6] is not a sub-multiple or multiple of the number of rows [5]
matrixtwodimensionsamelength5
# [,1]  [,2]
# [1,]  TRUE FALSE
# [2,]  TRUE  TRUE
# [3,] FALSE  TRUE
# [4,] FALSE FALSE
# [5,]  TRUE FALSE
matrixgorightthendown<-matrix(c("a","b","c","d","e","f"), nrow=2, byrow=T)
matrixgorightthendown
# [,1] [,2] [,3]
# [1,] "a"  "b"  "c" 
# [2,] "d"  "e"  "f" 
matrixgodownthenrightisdefault<-matrix(c("a","b","c","d","e","f"), nrow=2, byrow=F)
matrixgodownthenrightisdefault
# [,1] [,2] [,3]
# [1,] "a"  "c"  "e" 
# [2,] "b"  "d"  "f"
#RM:  notice the index numbers [1,] and [2,] denotes row [rownumber,*blank*] [,2] and [,3] denotes column [*blank,columnnumber]
array24numbers4rows3columns2tables<-array(c(1:24),c(4,3,2))
array24numbers4rows3columns2tables
# , , 1
# 
# [,1] [,2] [,3]
# [1,]    1    5    9
# [2,]    2    6   10
# [3,]    3    7   11
# [4,]    4    8   12
# 
# , , 2
# 
# [,1] [,2] [,3]
# [1,]   13   17   21
# [2,]   14   18   22
# [3,]   15   19   23
# [4,]   16   20   24
columnonenumeric<-c(1,2,3)
columntwocharacter<-c("a","b","c")
columnthreelogical<-c(T,F,TRUE)
matrixlikedataframe<-cbind(columnonenumeric,columntwocharacter,columnthreelogical) #cbind is column bind which converts different data types to one data type the most general which is character
matrixlikedataframe
# columnonenumeric columntwocharacter columnthreelogical
# [1,] "1"              "a"                "TRUE"            
# [2,] "2"              "b"                "FALSE"           
# [3,] "3"              "c"                "TRUE" 
realdataframe<-as.data.frame(cbind(columnonenumeric,columntwocharacter,columnthreelogical))
realdataframe
# columnonenumeric columntwocharacter columnthreelogical
# 1                1                  a               TRUE
# 2                2                  b              FALSE
# 3                3                  c               TRUE
orderedcollection1 <-c(1,2,3)
orderedcollection2 <-c("a","b","c","d")
orderedcollection3 <-c(T, FALSE, T, T, F) 
mainlist<-list(orderedcollection1,orderedcollection2,orderedcollection3)
mainlist
# [[1]]
# [1] 1 2 3
# 
# [[2]]
# [1] "a" "b" "c" "d"
# 
# [[3]]
# [1]  TRUE FALSE  TRUE  TRUE FALSE
mainlistwithsublist<-list(orderedcollection1,orderedcollection2,orderedcollection3,mainlist)
mainlistwithsublist
# [[1]]
# [1] 1 2 3
# 
# [[2]]
# [1] "a" "b" "c" "d"
# 
# [[3]]
# [1]  TRUE FALSE  TRUE  TRUE FALSE
# 
# [[4]]
# [[4]][[1]]
# [1] 1 2 3
# 
# [[4]][[2]]
# [1] "a" "b" "c" "d"
# 
# [[4]][[3]]
# [1]  TRUE FALSE  TRUE  TRUE FALSE
#Coercion.  Convert different data types to the least restrictive data type.  Convert data type.
((coerce1<-c(1,"b","TRUE"))) #Surrounding R code with paranthesis assign object to the variable and prints output
# > ((coerce1<-c(1,"b","TRUE")))
# [1] "1"    "b"    "TRUE"
coerce2<-5
coerce2 #print 5
typeof(coerce2) #print double
coerce3<-as.integer(5)
coerce3 #print 5
typeof(coerce3) #print integer
(coerce4<-c("1","2","3")) #print "1" "2" "3"
typeof(coerce4) #print character
(coerce5<-as.numeric(c("1","2","3"))) #print 1 2 3
typeof(coerce5) #print double
#Convert matrix to data frame
(coerce6<-matrix(1:9,nrow=3))
is.matrix(coerce6) #print TRUE
matrixtodataframecoerce7<-as.data.frame(matrix(1:9, nrow=3))
matrixtodataframecoerce7
# V1 V2 V3
# 1  1  4  7
# 2  2  5  8
# 3  3  6  9
is.data.frame(matrixtodataframecoerce7) #print TRUE
originalmatrix<-matrix(1:12,nrow=3)
originalmatrix
# [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12
dataframefrommatrix<-as.data.frame(originalmatrix)
dataframefrommatrix
# V1 V2 V3 V4
# 1  1  4  7 10
# 2  2  5  8 11
# 3  3  6  9 12
is.data.frame(dataframefrommatrix) #print TRUE