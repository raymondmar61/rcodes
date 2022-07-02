1+4 #Initially 1+2.  Returns 3.  I changed to 1+4.  Press Alt+Ctrl+P.  Returns 5.
1+6 #Practice Code-->Re-Run Previous Alt+Ctrl+P.   Code-->Run Region-->Run From Beginning To Line Alt+Ctrl+B. Code-->Run Region-->Run From Line to End Alt+Ctrl+E. Code-->Run Region-->Run All Alt+Ctrl+R.
2+10 #Practice Code-->Re-Run Previous Alt+Ctrl+P.   Code-->Run Region-->Run From Beginning To Line Alt+Ctrl+B. Code-->Run Region-->Run From Line to End Alt+Ctrl+E. Code-->Run Region-->Run All Alt+Ctrl+R.
savetovariable = 1+2
savetovariable #print 3
assignmentoperator <- "Press Alt+- for shortcut key"
assignmentoperator #print Press Alt+- for shortcut key
logicalT <- T
logicalFALSE <- FALSE
escapecharacter <- "my little\" story backslash"
escapecharacter #print "my little\" story backslash"
'''
Vector is the basic group data; use the concatenate function c to create a vector; e.g., vectorvariable <- c(1,2,3).
List is created using the list function group vectors in one list; e.g.,  listvariable <- list(vector1, vector2, vector3).
Data frame is like an Excel table; e.g., dataframethreecolumns <- data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree).
Matrix is a table with rows and columns without names from a vector.  matrixfunctiontworowsthreecolumns <- matrix(vectorformatrix,2,3).
'''
vectorfunction <- c(1,2,23,0.2)
vectorfunction #print 1.0  2.0 23.0  0.2
vectorcisconcatenate <- c(T,F,FALSE,TRUE,F)
vectorcisconcatenate #print TRUE FALSE FALSE  TRUE FALSE
vectorstrings <- c("a","b","b","my little story","z","20","number 20 as string")
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
vectorformatrix <- c("one","two","three","little big","top","555")
matrixfunctiontworowsthreecolumns <- matrix(vectorformatrix,2,3)
matrixfunctiontworowsthreecolumns
'''
     [,1]  [,2]         [,3] 
[1,] "one" "three"      "top"
[2,] "two" "little big" "555"
'''
View(matrixfunctiontworowsthreecolumns) #Opens a tab matrixfunctiontworowsthreecolumns to view the matrix like an Excel spreadsheet.  Can click on the button at Environment tab top right to view the matrix like an Excel spreadsheet.
colnames(matrixfunctiontworowsthreecolumns) #print NULL.  Matrix doesn't have column names.
