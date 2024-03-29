1+4 #Initially 1+2.  Returns 3.  I changed to 1+4.  Press Alt+Ctrl+P.  Returns 5.
1+6 #Practice Code-->Re-Run Previous Alt+Ctrl+P.   Code-->Run Region-->Run From Beginning To Line Alt+Ctrl+B. Code-->Run Region-->Run From Line to End Alt+Ctrl+E. Code-->Run Region-->Run All Alt+Ctrl+R.
2+10 #Practice Code-->Re-Run Previous Alt+Ctrl+P.   Code-->Run Region-->Run From Beginning To Line Alt+Ctrl+B. Code-->Run Region-->Run From Line to End Alt+Ctrl+E. Code-->Run Region-->Run All Alt+Ctrl+R.
savetovariable = 1+2
savetovariable #print 3
assignmentoperator <- "Press Alt+- for shortcut key.  Assign values to a variable.  Read as gets."
assignmentoperator #print Press Alt+- for shortcut key.  Assign values to a variable.  Read as gets.
logicalT <- T
logicalFALSE <- FALSE
escapecharacter <- "my little\" story backslash"
escapecharacter #print "my little\" story backslash"
numberdefaultdoubleprecision <- 15
numberdefaultdoubleprecision #print 15
typeof(numberdefaultdoubleprecision) #print double
numberdefaultdoubleprecisiondecimal <- 1.5
numberdefaultdoubleprecisiondecimal #print 1.5
typeof(numberdefaultdoubleprecisiondecimal) #print double
charactersingleletter <- "c"
charactersingleletter #print c
typeof(charactersingleletter) #print character
charactermultipleletters <- "a string of text"
charactermultipleletters #print a string of text
typeof(charactermultipleletters) #print character
logicalTRUE <- TRUE
logicalTRUE #print TRUE
typeof(logicalTRUE) #print logical
colonoperatorascending <- 0:10 #assigns numbers 0 to 10 inclusive sequential to colonoperatorascending
colonoperatorascending #print 0  1  2  3  4  5  6  7  8  9 10
colonoperatordescending <- 10:0
colonoperatordescending #print 10  9  8  7  6  5  4  3  2  1  0
sequencestartsone <- seq(10)
sequencestartsone #print 1  2  3  4  5  6  7  8  9 10
sequencespecifics <- seq(30,0,by=-3) #start at 30, end at 0 going down by threes
sequencespecifics #print 30 27 24 21 18 15 12  9  6  3  0
concatenateletterc <- c(5,4,1,6,7,2,2,3,2,8) #concatenate or combine or collect
concatenateletterc #print 5 4 1 6 7 2 2 3 2 8
repeatfivetimes <- rep(TRUE,5) #rep is called Replicate
repeatfivetimes #print TRUE TRUE TRUE TRUE TRUE
repeatsetcollate <- rep(c(TRUE,FALSE),5)
repeatsetcollate #print TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE
repeatsetnocollate <- rep(c(TRUE,FALSE),each=5)
repeatsetnocollate #print TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
scanfunctionenterdata <- scan() #Enter the following numbers and press Enter after each number in the Console:  5, 6, 9, 1, 4, 8, 0, 7.  Press Enter twice to stop entering data or enter data.
scanfunctionenterdata #print 5 6 9 1 4 8 0 7
'''
Vector is the basic group data; use the concatenate function c to create a vector; e.g., vectorvariable <- c(1,2,3).  Vector is one or more numbers in a one dimensional array.  The numbers are in a straight line.  Same data type such as all character or all integer.  A vector with a single number is a scalar; however, in R, it\'s a vector.  R\'s basic data object.
List is created using the list function group vectors in one list; e.g.,  listvariable <- list(vector1, vector2, vector3).  Most flexible.  An ordered collection of elements of any data type, length, or structure.  Can be difficult.
Data frame is like an Excel table spreadsheet; e.g., dataframethreecolumns <- data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree).  Most common.  Vectors of multiple data types one vector character, one vector integer, one vector logical or boolean are valid.  Same length.
Matrix is a table with rows and columns without names from a vector.  The columns are named by index numbers.  Two dimensional data.  Same length.  Same data class.  matrixfunctiontworowsthreecolumns <- matrix(vectorformatrix,2,3).
Array is a matrix with three or more dimensions.
'''
vectorfunction <- c(1,2,23,0.2)
vectorfunction #print 1.0  2.0 23.0  0.2
is.vector(vectorfunction) #print TRUE
vectorcisconcatenate <- c(T,F,FALSE,TRUE,F)
vectorcisconcatenate #print TRUE FALSE FALSE  TRUE FALSE
vectorstrings <- c("a","b","b","my little story","z","20","number 20 as string") #RM:  R refers strings as characters
vectorstrings
'''
[1] "a"                   "b"                   "b"                   "my little story"     "z"                  
[6] "20"                  "number 20 as string"
'''
indexvectorstrings <- vectorstrings[4]
indexvectorstrings #print "my little story"
indexvectorstringslogical <- vectorstrings[c(F,T,F,T,T,F,T)]
indexvectorstringslogical #print "b"                   "my little story"     "z"                   "number 20 as string"
vectorlogicalnumeric <- c(99,TRUE,123,FALSE,1976)
vectorlogicalnumeric #print 99    1  123    0 1976
vectorconvertalltostring <- c(88,"943","apple","string",T,"white","76",279)
vectorconvertalltostring #print "88"     "943"    "apple"  "string" "TRUE"   "white"  "76"     "279"   
vectorindexonetosix <- c(1:6)
vectorindexonetosix #print 1 2 3 4 5 6
vectorstrings[1:6] #print "a"               "b"               "b"               "my little story" "z"               "20"
notlastvalueonly <- vectorstrings[-1]
notlastvalueonly #prints all values starting at the second index number
'''
[1] "b"                   "b"                   "my little story"     "z"                   "20"                 
[6] "number 20 as string"
'''
#Coercion to change a data object from one type to another.  For example, change a character to logical, matrix to a data frame, and double to integer.  Coercion changes data type a vector with multiple data types to least restrictive type.  R can coerce automatically which converts multiple data types to the lease restrictive data type.
integercharacterbooleanautomaticcoercion <- c(1,"b",TRUE)
integercharacterbooleanautomaticcoercion #print "1"    "b"    "TRUE"
typeof(integercharacterbooleanautomaticcoercion) #print character
# (surroundparenthesis <- c("in an assignment operator","automatically shows results in console")) #print "in an assignment operator"              "automatically shows results in console"
(doubledatatype5 <- 5) #print 5
typeof(doubledatatype5) #print double
(integerdatatype5 <- as.integer(5)) #print 5
typeof(integerdatatype5) #print integer
(charactertonumber <- c("1","2","3")) #print "1" "2" "3"
typeof(charactertonumber) #print character
(doublecharacternumber <- as.numeric(c("1","2","3"))) #print 1 2 3
typeof(doublecharacternumber) #print double
makealistlistfunction <- list(vectorstrings, vectorlogicalnumeric,vectorconvertalltostring)
makealistlistfunction
'''
[[1]]
[1] "a"                   "b"                   "b"                   "my little story"     "z"                  
[6] "20"                  "number 20 as string"

[[2]]
[1]   99    1  123    0 1976

[[3]]
[1] "88"     "943"    "apple"  "string" "TRUE"   "white"  "76"     "279"   
'''
#Click on the magnifying glass top right Environment tab to open a tab to view the list values, number of elements, and data type.  Also, Type View(makealistlistfunction) on Console.
View(makealistlistfunction) #Opens tab displaying list information
makealistlistfunction[3]
'''
[[1]]
[1] "88"     "943"    "apple"  "string" "TRUE"   "white"  "76"     "279"  
'''
makealistlistfunction[[3]] #print "88"     "943"    "apple"  "string" "TRUE"   "white"  "76"     "279"
makealistlistfunction[[3]][6] #print "white"
makealistlistfunction[[3]][2:4] #print "943"    "apple"  "string"
assignnamestoeachlist <- list(stringlist=c("yarn","barn","farm"),integerlist=c(236,7912,2),logicallist=c(T,FALSE,TRUE))
assignnamestoeachlist
'''
$stringlist
[1] "yarn" "barn" "farm"

$integerlist
[1]  236 7912    2

$logicallist
[1]  TRUE FALSE  TRUE
'''
names(assignnamestoeachlist) #print "stringlist"  "integerlist" "logicallist"
extractvectorfromlistdollarsign <- assignnamestoeachlist$integerlist
extractvectorfromlistdollarsign #print 236 7912    2
assignnamestoeachlist[[2]] #print 236 7912    2
dataframecolumnone <- c(1,2,3)
dataframecolumntwo <- c("a","b","c")
dataframecolumnthree <- c(T,F,TRUE)
data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree)
'''
  dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
dataframecbindonedatatype <- cbind(dataframecolumnone,dataframecolumntwo,dataframecolumnthree)
dataframecbindonedatatype
'''
     dataframecolumnone dataframecolumntwo dataframecolumnthree
[1,] "1"                "a"                "TRUE"              
[2,] "2"                "b"                "FALSE"             
[3,] "3"                "c"                "TRUE" 
'''
dataframecbindasdataframedifferentdatatype <- as.data.frame(cbind(dataframecolumnone,dataframecolumntwo,dataframecolumnthree))
dataframecbindasdataframedifferentdatatype
'''
  dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
#as.data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree) #Error in if (!optional) names(value) <- nm : the condition has length > 1
#dataframevariableas <- as.data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree) #Error in if (!optional) names(value) <- nm : the condition has length > 1
#dataframevariableas
'''
  dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
dataframevariable <- data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree)
dataframevariable
'''
  dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
dataframecolumnnames <- data.frame(column1=dataframecolumnone,column2=dataframecolumntwo,column3=dataframecolumnthree)
dataframecolumnnames
'''
  column1 column2 column3
1       1       a    TRUE
2       2       b   FALSE
3       3       c    TRUE
'''
typeof(dataframecolumnnames) #print list
extractcolumnfromdataframedollarsign <- dataframecolumnnames$column2
extractcolumnfromdataframedollarsign #print "a" "b" "c"
typeof(extractcolumnfromdataframedollarsign) #print character
dataframecolumnnames[[2]] #print "a" "b" "c"
typeof(dataframecolumnnames[[2]]) #print character
dataframecolumnnames[[2]][3] #print "c"
dataframecolumnnames[[2]][1:2] #print "a" "b"
dataframecolumnnames[1,3] #print TRUE
dataframecolumnnames[3,1] #print 3
dataframecolumnnames[2,3] #print FALSE
extractfirstrowfromdataframe <- dataframecolumnnames[1,]
extractfirstrowfromdataframe
'''
  column1 column2 column3
1       1       a    TRUE
'''
dataframecolumnnames$column3 #print TRUE FALSE  TRUE
extractthirdcolumnfromdataframe <- dataframecolumnnames[,3]
extractthirdcolumnfromdataframe #print TRUE FALSE  TRUE
extractfirstrowthirdrowfromdataframe <- dataframecolumnnames[c(1,3),]
extractfirstrowthirdrowfromdataframe
'''
  column1 column2 column3
1       1       a    TRUE
3       3       c    TRUE
'''
View(dataframecolumnnames) #Opens a tab dataframecolumnnames to view the data frame like an Excel spreadsheet
colnames(dataframecolumnnames) #print "column1" "column2" "column3".  Instructor says NULL is returned if column names are RStudio default column names.  Matrix doesn't have column names.
dataframecoercion <- cbind(data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree)) #columnbind cbind changes the data types to its most general data type.  dataframecoercion data type should be all character.
dataframecoercion
'''
dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
dataframecoercionasdataframe <- as.data.frame(cbind(data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree))) #as data frame recognizes the data types as its original data type integer, character, and boolean.
dataframecoercionasdataframe
'''
dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
vectorformatrix <- c("one","two","three","little big","top","555")
matrixfunetiontworowsthreecolumns <- matrix(vectorformatrix,2,3)
matrixfunetiontworowsthreecolumns
'''
     [,1]  [,2]         [,3] 
[1,] "one" "three"      "top"
[2,] "two" "little big" "555"
'''
matrixfunctiontworowsautocolumns <- matrix(vectorformatrix, nrow=2)
matrixfunctiontworowsautocolumns
'''
     [,1]  [,2]         [,3] 
[1,] "one" "three"      "top"
[2,] "two" "little big" "555"
'''
matrixfunctiontworowsautocolumnsbyrows <- matrix(vectorformatrix, nrow=2, byrow=TRUE)
matrixfunctiontworowsautocolumnsbyrows
'''
     [,1]         [,2]  [,3]   
[1,] "one"        "two" "three"
[2,] "little big" "top" "555" 
'''
View(matrixfunctiontworowsthreecolumns) #Opens a tab matrixfunctiontworowsthreecolumns to view the matrix like an Excel spreadsheet.  Can click on the button at Environment tab top right to view the matrix like an Excel spreadsheet.
colnames(matrixfunctiontworowsthreecolumns) #print NULL.  Matrix doesn't have column names.
matrixfunetiontworowsthreecolumns[2,] #print "two"        "little big" "555"
matrixfunetiontworowsthreecolumns[,1] #print "one" "two"
matrixfunetiontworowsthreecolumns[2,3] #print "555"
matrixfunetiontworowsthreecolumns[,2:3]
'''
     [,1]         [,2] 
[1,] "three"      "top"
[2,] "little big" "555"
'''
#Convert matrix to data frame.  Coerce matrix to data frame.
(numbers12matrix <- matrix(1:12,nrow=3))
'''
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
'''
is.matrix(numbers12matrix) #print TRUE
is.data.frame(numbers12matrix) #print FALSE
(numbers12matrixtodataframe <- as.data.frame(numbers12matrix))
'''
  V1 V2 V3 V4
1  1  4  7 10
2  2  5  8 11
3  3  6  9 12
'''
is.matrix(numbers12matrixtodataframe) #print FALSE
is.data.frame(numbers12matrixtodataframe) #print TRUE
arraytwotables <- array(c(1:24),c(4,3,2)) #c(4,3,2) is (rows, columns, tables) four rows, three columns, two tables
arraytwotables
'''
, , 1

     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]    3    7   11
[4,]    4    8   12

, , 2

     [,1] [,2] [,3]
[1,]   13   17   21
[2,]   14   18   22
[3,]   15   19   23
[4,]   16   20   24
'''
definefunctiondivision <- function(value1, value2){
  results <- value1/value2
  return(results)
}
definefunctiondivision(10,20) #print 0.5
definefunctiondivision(value2=10,value1=20) #print 2
definefunctiondivision #prints the function code
'''
function(value1, value2){
  results <- value1/value2
  return(results)
}
<bytecode: 0x564303c6cc20>
'''
#Import files.  R imports csv, txt, xlsx, and JSON.  Instructor recommends use rio R input output package.  rio combines R's import functions into an utility.  /home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets.  mbb is Mozart, Beethoven, and Bach Google searches.
#Avoid importing Excel .xlsx.  Convert the .xlsx to either tab delimited or comma separated form.  Use read.delim or read.csv to import.
rioimportcsv <- import("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.csv")
head(rioimportcsv)
'''
    Month Mozart Beethoven Bach
1 2004-01     12         8   15
2 2004-02     12         9   15
3 2004-03     12         9   14
4 2004-04     12         8   14
5 2004-05     11         9   13
6 2004-06      9         7   12
'''
rioimporttxt <- import("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.txt")
head(rioimporttxt)
'''
    Month Mozart Beethoven Bach
1 2004-01     12         8   15
2 2004-02     12         9   15
3 2004-03     12         9   14
4 2004-04     12         8   14
5 2004-05     11         9   13
6 2004-06      9         7   12
'''
rioimportxlsx <- import("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.xlsx") #The Excel file mbb.xlsx contains one worksheet.
head(rioimportxlsx)
'''
    Month Mozart Beethoven Bach
1 2004-01     12         8   15
2 2004-02     12         9   15
3 2004-03     12         9   14
4 2004-04     12         8   14
5 2004-05     11         9   13
6 2004-06      9         7   12
'''
viewdata <- View(rioimportcsv) #rioimportcsv tab opens displaying the data.  Can display data clicking on the calendar like button in Environment tab.
readtableimporttxt <- read.table("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.txt",head=TRUE,sep="\t") #R's built-in function import text files.  header head is TRUE there are column headings.  Seperator is tab \t; however, read.table still works if sep="\t" is missing.  A warning message appears which is ignored.  Not using rio package.
head(readtableimporttxt)
'''
    Month Mozart Beethoven Bach
1 2004-01     12         8   15
2 2004-02     12         9   15
3 2004-03     12         9   14
4 2004-04     12         8   14
5 2004-05     11         9   13
6 2004-06      9         7   12
'''
readtableimportcsv <- read.table("/home/mar/R/R01_Course_Files/R01_5_4_ImportingData_Datasets/mbb.csv",head=TRUE) #R's built-in function import csv files.  header head is TRUE there are column headings.  Not using rio package.
head(readtableimportcsv)
'''
  Month.Mozart.Beethoven.Bach
1             2004-01,12,8,15
2             2004-02,12,9,15
3             2004-03,12,9,14
4             2004-04,12,8,14
5             2004-05,11,9,13
6              2004-06,9,7,12
'''
viewdata <- View(readtableimportcsv) #readtableimportcsv tab opens displaying the data.  Can display data clicking on the calendar like button in Environment tab.
#R built-in function help function
?mean() #Bottom right pane Help tab displays mean() function description
#Install packages.  Instructors says best type code on Console
'''
install.packages("ggplot2")
'''
#Clear Environment tab
rm(list=ls())