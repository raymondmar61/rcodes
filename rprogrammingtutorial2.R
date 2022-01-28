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

#Data entry or assign data assign
shortcutassignmentoperator <- ("Press Alt+- to insert an assignment operator.")
shortcutassignmentoperator #print "Press Alt+- to insert an assignment operator."
typeof(shortcutassignmentoperator) #print character
zerototen <- 0:10
zerototen #print 0  1  2  3  4  5  6  7  8  9 10
typeof(zerototen) #print integer
tentozero <- 10:0
tentozero #print 10  9  8  7  6  5  4  3  2  1  0
(sequenceonetoten <- seq(10)) #print 1  2  3  4  5  6  7  8  9 10.  RM:  save space I surround by paranthesis to return the results
(sequence30to0bythrees <- seq(30,0, by=-3)) #print 30 27 24 21 18 15 12  9  6  3  0.  RM:  save space I surround by paranthesis to return the results
(cconcatenate <- c(5,4,1,6,7,2,2,3,2,8)) #print 5 4 1 6 7 2 2 3 2 8
scantoinputdatalive <- scan() #Enter data in console.  Press enter after each number to input.  Press enter twice to stop inputting.
# > scantoinputdatalive <- scan()
# 1: 54
# 2: 23
# 3: 100
# 4: 480
# 5: 
#   Read 4 items
# > 
scantoinputdatalive
# > scantoinputdatalive
# [1]  54  23 100 480
(repeattruefivetimes <- rep(TRUE,5)) #print TRUE TRUE TRUE TRUE TRUE
(replicatetruefalsefivetimes <- rep(c(TRUE,FALSE),5)) #print TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE
(replicatetruefalseinorderfivetimes <- rep(c(TRUE,FALSE),each=5)) #print TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE

#Import data
#Import CSV, txt text, Excel, and JSON.
#Instructor uses rio R Input Output.  rio combines all of R's import functions into one simple utility.
library(rio)
userioimportcsv <- import("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.csv")
head(userioimportcsv) #return the first five rows of the .csv file
# Month Mozart Beethoven Bach
# 1 2004-01     12         8   15
# 2 2004-02     12         9   15
# 3 2004-03     12         9   14
# 4 2004-04     12         8   14
# 5 2004-05     11         9   13
# 6 2004-06      9         7   12
typeof(userioimportcsv) #print list
useriotoimporttxt <- import("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.txt")
head(useriotoimporttxt)
# Month Mozart Beethoven Bach
# 1 2004-01     12         8   15
# 2 2004-02     12         9   15
# 3 2004-03     12         9   14
# 4 2004-04     12         8   14
# 5 2004-05     11         9   13
# 6 2004-06      9         7   12
typeof(useriotoimporttxt) #print list
useriotoimportexcel <- import("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.xlsx")
head(useriotoimportexcel)
# Month Mozart Beethoven Bach
# 1 2004-01     12         8   15
# 2 2004-02     12         9   15
# 3 2004-03     12         9   14
# 4 2004-04     12         8   14
# 5 2004-05     11         9   13
# 6 2004-06      9         7   12
typeof(useriotoimportexcel) #print list
View(userioimportcsv) #opens a tab to view the .csv file from useriotoimportcsv.  Also click on the icon on the right in Environment tab.
readtextfiletabdelimitederror <- read.table("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.txt", header = TRUE) #return Warning message:In scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  :          number of items read is not a multiple of the number of columns
readtextfiletabdelimitedcorrect <- read.table("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.txt", header = TRUE, sep="\t")
head(readtextfiletabdelimitedcorrect)
# Month Mozart Beethoven Bach
# 1 2004-01     12         8   15
# 2 2004-02     12         9   15
# 3 2004-03     12         9   14
# 4 2004-04     12         8   14
# 5 2004-05     11         9   13
# 6 2004-06      9         7   12
readcsvfile <- read.csv("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.csv", header=TRUE)
head(readcsvfile)
# Month Mozart Beethoven Bach
# 1 2004-01     12         8   15
# 2 2004-02     12         9   15
# 3 2004-03     12         9   14
# 4 2004-04     12         8   14
# 5 2004-05     11         9   13
# 6 2004-06      9         7   12
typeof(readcsvfile) #print list
View(readcsvfile) #opens a tab to view mbb.csv file

#Factors
vectorx1<-1:3
vectorx1 #print 1 2 3
(vectory<-1:9) #print 1 2 3 4 5 6 7 8 9.  Surround entire R code by paranthesis returns the result
combinevectorstodataframe <-cbind.data.frame(vectorx1,vectory)
typeof(combinevectorstodataframe) #print list
combinevectorstodataframe
# vectorx1 vectory
# 1        1       1
# 2        2       2
# 3        3       3
# 4        1       4
# 5        2       5
# 6        3       6
# 7        1       7
# 8        2       8
# 9        3       9
is.data.frame(combinevectorstodataframe) #print TRUE
typeof(combinevectorstodataframe$vectorx1) #print integer
str(combinevectorstodataframe) #str is structure
# 'data.frame':	9 obs. of  2 variables:
# $ vectorx1: int  1 2 3 1 2 3 1 2 3
# $ vectory : int  1 2 3 4 5 6 7 8 9
factorsx2 <- as.factor(c(1:3))
factorsx2
# [1] 1 2 3
# Levels: 1 2 3
(combinetodataframe2 <- cbind.data.frame(factorsx2,vectory)) #surround entire R code by paranthesis returns the result
# factorsx2 vectory
# 1         1       1
# 2         2       2
# 3         3       3
# 4         1       4
# 5         2       5
# 6         3       6
# 7         1       7
# 8         2       8
# 9         3       9
typeof(combinetodataframe2) #print list
typeof(combinetodataframe2$factorsx2) #print integer
str(combinetodataframe2) #str is structure
# 'data.frame':	9 obs. of  2 variables:
# $ factorsx2: Factor w/ 3 levels "1","2","3": 1 2 3 1 2 3 1 2 3
# $ vectory  : int  1 2 3 4 5 6 7 8 9
vectorx2<-c(1:3)
vectorx2 #print 1 2 3
combinetodataframe3 <- cbind.data.frame(vectorx2,vectory)
combinetodataframe3
# vectorx2 vectory
# 1        1       1
# 2        2       2
# 3        3       3
# 4        1       4
# 5        2       5
# 6        3       6
# 7        1       7
# 8        2       8
# 9        3       9
combinetodataframe3$vectorx2<-factor(combinetodataframe3$vectorx2,levels=c(1,2,3)) #convert a vector to factor
combinetodataframe3
# vectorx2 vectory
# 1        1       1
# 2        2       2
# 3        3       3
# 4        1       4
# 5        2       5
# 6        3       6
# 7        1       7
# 8        2       8
# 9        3       9
typeof(combinetodataframe3) #print integer
str(combinetodataframe3)
# 'data.frame':	9 obs. of  2 variables:
# $ vectorx2: Factor w/ 3 levels "1","2","3": 1 2 3 1 2 3 1 2 3
# $ vectory : int  1 2 3 4 5 6 7 8 9
vectorx3<-c(1:3)
combinetodataframe4<-cbind.data.frame(vectorx3,vectory)
combinetodataframe4
# vectorx3 vectory
# 1        1       1
# 2        2       2
# 3        3       3
# 4        1       4
# 5        2       5
# 6        3       6
# 7        1       7
# 8        2       8
# 9        3       9
typeof(combinetodataframe4) #print list
combinetodataframe4$vectorx3<-factor(combinetodataframe4$vectorx3,levels=c(1,2,3),labels=c("factorlabel1macOSis1","convertvectorx3toafactorWindowsis2","Linuxis3"))
combinetodataframe4
# vectorx3 vectory
# 1               factorlabel1macOSis1       1
# 2 convertvectorx3toafactorWindowsis2       2
# 3                           Linuxis3       3
# 4               factorlabel1macOSis1       4
# 5 convertvectorx3toafactorWindowsis2       5
# 6                           Linuxis3       6
# 7               factorlabel1macOSis1       7
# 8 convertvectorx3toafactorWindowsis2       8
# 9                           Linuxis3       9
typeof(combinetodataframe4) #print list
str(combinetodataframe4)
# 'data.frame':	9 obs. of  2 variables:
# $ vectorx3: Factor w/ 3 levels "factorlabel1macOSis1",..: 1 2 3 1 2 3 1 2 3
# $ vectory : int  1 2 3 4 5 6 7 8 9
#ordered factors
vectorx4<-c(1:3)
combinetodataframe5<-cbind.data.frame(vectorx4,vectory)
combinetodataframe5
# vectorx4 vectory
# 1        1       1
# 2        2       2
# 3        3       3
# 4        1       4
# 5        2       5
# 6        3       6
# 7        1       7
# 8        2       8
# 9        3       9
typeof(combinetodataframe5) #print list
str(combinetodataframe5)
# 'data.frame':	9 obs. of  2 variables:
# $ vectorx4: int  1 2 3 1 2 3 1 2 3
# $ vectory : int  1 2 3 4 5 6 7 8 9
combinetodataframe5$vectorx4<-ordered(combinetodataframe5$vectorx4,levels=c(3,1,2), labels=c("No is 3","Maybe is 1","Yes is 2")) #convert a vector to factor ordered or assigned
combinetodataframe5$vectorx4
# [1] Maybe is 1 Yes is 2   No is 3    Maybe is 1 Yes is 2   No is 3    Maybe is 1
# [8] Yes is 2   No is 3   
# Levels: No is 3 < Maybe is 1 < Yes is 2
typeof(combinetodataframe5$vectorx4) #print integer
combinetodataframe5
# vectorx4 vectory
# 1 Maybe is 1       1
# 2   Yes is 2       2
# 3    No is 3       3
# 4 Maybe is 1       4
# 5   Yes is 2       5
# 6    No is 3       6
# 7 Maybe is 1       7
# 8   Yes is 2       8
# 9    No is 3       9
typeof(combinetodataframe5) #print list
str(combinetodataframe5)
# 'data.frame':	9 obs. of  2 variables:
# $ vectorx4: Ord.factor w/ 3 levels "No is 3"<"Maybe is 1"<..: 2 3 1 2 3 1 2 3 1
# $ vectory : int  1 2 3 4 5 6 7 8 9