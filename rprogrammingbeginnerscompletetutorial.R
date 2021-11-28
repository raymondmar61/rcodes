#R Programming for Beginners _ Complete Tutorial _ R & RStudio-BvKETZ6kr9Q.mp4

#Calculator.  Press Ctrl+Enter when the cursor at the far right end to run.  However, not necessary.  Can press Ctrl+Enter anywhere in line or in code.
1+2 #print 3.  RM:  Press Ctrl+Enter when the cursor is to the right of 2.  Prints 3.
5*10 #print 50
abs(-1) #print 1
abs(6) #print 6
plot(1,1) #return an x-y chart with (1,1) in the middle open dot
hist(1) #plot a histogram
?abs #display on Help tab abs(x)
help(abs) #display on Help tab abs(x)
example(abs) #example function.  Generates a code.
savevaluetovariableequal = 1+2
savevaluetovariable #print 3
savevaluetovariableassignmentoperator<-1+2
savevaluetovariableassignmentoperator #print 3
logicalvariable=T
logicalvariableassignmentoperator<-TRUE
backshashescapecharacter<-"my \"little story\" is good"
backshashescapecharacter #print "my \"little story\" is good"
afactor<-as.factor("female")

#Vectors
c("a","vector","not","saved","to","a","variable")
'''
[1] "a"        "vector"   "not"      "saved"    "to"       "a"       
[7] "variable"
'''
avectorcisconcatenate<-c(1,2,2,23,0.2)
avectorlogical<-c(T,F,FALSE,TRUE,F)
avectorcharacter<-c("a","b","b","my little story","z","20")
avectorasfactor<-as.factor(c("female","male","male","female","male"))
vectornumeric<-c(T,F,548,222,TRUE) #TRUE or T is 1, FALSE or F is 0
vectornumeric #print 1   0 548 222   1
vectorallcharacters<-c("abc",TRUE,921,"zebra",-54,FALSE)
vectorallcharacters #print "abc"   "TRUE"  "921"   "zebra" "-54"   "FALSE"

#Lists
list("red","blue","green","yellow","white","black")
'''
[[1]]
[1] "red"

[[2]]
[1] "blue"

[[3]]
[1] "green"

[[4]]
[1] "yellow"

[[5]]
[1] "white"

[[6]]
[1] "black"
'''
listvariable<-list(avectorcisconcatenate, avectorlogical, avectorcharacter) #Click magnifying glass under Environment tab display Grid shows the list contents in a tab named listvariable
listvariable
'''
[[1]]
[1]  1.0  2.0  2.0 23.0  0.2

[[2]]
[1]  TRUE FALSE FALSE  TRUE FALSE

[[3]]
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"     
'''
listinsidealist<-list(avectorcisconcatenate, avectorlogical, avectorcharacter,20,list(avectorcisconcatenate, avectorlogical, avectorcharacter),mean)
listinsidealist
'''
[[1]]
[1]  1.0  2.0  2.0 23.0  0.2

[[2]]
[1]  TRUE FALSE FALSE  TRUE FALSE

[[3]]
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"             

[[4]]
[1] 20

[[5]]
[[5]][[1]]
[1]  1.0  2.0  2.0 23.0  0.2

[[5]][[2]]
[1]  TRUE FALSE FALSE  TRUE FALSE

[[5]][[3]]
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"             


[[6]]
function (x, ...) 
UseMethod("mean")
<bytecode: 0x5559acbe9f10>
<environment: namespace:base>
'''

#Dataframes data.frame.  Data frames are lists with vectors of equal length.  RM:  Data frames are Chapter 5 The Book Of R. 
data.frame(avectorcisconcatenate, avectorlogical, avectorcharacter) #Error in data.frame(avectorcisconcatenate, avectorlogical, avectorcharacter) : arguments imply differing number of rows: 5, 6
data.frame(avectorcisconcatenate, avectorlogical) 
'''
  avectorcisconcatenate avectorlogical
1                   1.0           TRUE
2                   2.0          FALSE
3                   2.0          FALSE
4                  23.0           TRUE
5                   0.2          FALSE
'''
data.frame(columnlabela=avectorcisconcatenate, columnlevelb=avectorlogical) 
'''
  columnlabela columnlevelb
1          1.0         TRUE
2          2.0        FALSE
3          2.0        FALSE
4         23.0         TRUE
5          0.2        FALSE
'''
data.frame(numbers=c(1,2,2,23,0.2), logical=c(T,F,FALSE,TRUE,F))
'''
  numbers logical
1     1.0    TRUE
2     2.0   FALSE
3     2.0   FALSE
4    23.0    TRUE
5     0.2   FALSE
'''
dataframevariablebeginswithdf<-data.frame(numbers=c(1,2,2,23,0.2), logical=c(T,F,FALSE,TRUE,F)) #Click table under Environment tab display Grid shows the data frame as a table in a tab named dataframevariablebeginswithdf.  See View(dataframevariablebeginswithdf) at Colsole tab.
View(dataframevariablebeginswithdf) #Return dataframevariablebeginswithdf tab dataframe table

#Matrix
avectorcharacter<-c("a","b","b","my little story","z","20")
matrix2rows3columns<-matrix(avectorcharacter,2,3) #Click table under Environment tab display Grid shows the matrix as a data frame as a table in a tab named matrix2rows3columns.  avectorcharacter provides the data going down and then up and to the right
View(matrix2rows3columns) #Return matrix2rows3columns tab matrix data frame table
matrix2rows3columns
'''
     [,1] [,2]              [,3]
[1,] "a"  "b"               "z" 
[2,] "b"  "my little story" "20"
'''

#Indexing.  Indexing begins at one.
avectorcharacter<-c("a","b","b","my little story","z","20")
avectorcharacter[2] #print b
avectorcharacter[4] #print my little story
1:6 #print 1 2 3 4 5 6
avectorcharacter[1:6]
'''
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"   
'''
avectorcharacter[1:4]
'''
[1] "a"               "b"               "b"              
[4] "my little story" 
'''
avectorcharacter[-1] #Skips the first index value
'''
[1] "b"               "b"               "my little story"
[4] "z"               "20"  
'''
avectorcharacter[-5] #Skips the fifth index value
'''
[1] "a"               "b"               "b"              
[4] "my little story" "20"     
'''
1[1] #print 1
1[3] #print NA
1[0] #print numeric(0)
c("this is a vector")[1] #print "this is a vector"
c("this is a vector")[5] #print NA
c("a","vector","not","saved","to","a","variable")[4] #print saved
avectorcharacter[c(F,T,F,F,F,F)] #print b
avectorcharacter[c(0,1,0,0,0,0)] #print a
avectorcharacter[c(F,T,F,F,T,F)] #print b  z
avectorcharacter[c(0,1,0,0,1,0)] #print a  a #RM:  it seems can't substitute TRUE and FALSE for 1 and 0
avectorcharacter[c(5,1,0,0,6,0)] #print z  a  20
avectorcharacter[c(5,1,6)] #print z  a  20
length(avectorcharacter[c(F,T,F,F,F,F)]) #print 1
listinsidealist
'''
[[1]]
[1]  1.0  2.0  2.0 23.0  0.2

[[2]]
[1]  TRUE FALSE FALSE  TRUE FALSE

[[3]]
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"             

[[4]]
[1] 20

[[5]]
[[5]][[1]]
[1]  1.0  2.0  2.0 23.0  0.2

[[5]][[2]]
[1]  TRUE FALSE FALSE  TRUE FALSE

[[5]][[3]]
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"             


[[6]]
function (x, ...) 
UseMethod("mean")
<bytecode: 0x55846e901f70>
<environment: namespace:base>
'''
listinsidealist[[1]] #print [1]  1.0  2.0  2.0 23.0  0.2
listinsidealist[1] #print [[1]] [1]  1.0  2.0  2.0 23.0  0.2
listinsidealistlabels<-list("lista"=avectorcisconcatenate, "vector2"=avectorlogical, "nameswithoutquotes"=avectorcharacter,mynumber= 20,list(avectorcisconcatenate, avectorlogical, avectorcharacter),mean)
listinsidealistlabels
'''
$lista
[1]  1.0  2.0  2.0 23.0  0.2

$vector2
[1]  TRUE FALSE FALSE  TRUE FALSE

$nameswithoutquotes
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"             

$mynumber
[1] 20

[[5]]
[[5]][[1]]
[1]  1.0  2.0  2.0 23.0  0.2

[[5]][[2]]
[1]  TRUE FALSE FALSE  TRUE FALSE

[[5]][[3]]
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"             


[[6]]
function (x, ...) 
UseMethod("mean")
<bytecode: 0x55846fc47760>
<environment: namespace:base>
'''
names(listinsidealistlabels)
'''
[1] "lista"              "vector2"            "nameswithoutquotes"
[4] "mynumber"           ""                   ""    
'''
listinsidealistlabels$nameswithoutquotes
'''
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"   
'''
listinsidealistlabels[[3]]
'''
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"   
'''
listinsidealist[[3]]
'''
[1] "a"               "b"               "b"              
[4] "my little story" "z"               "20"   
'''
dataframevariablebeginswithdf
'''
  numbers logical
1     1.0    TRUE
2     2.0   FALSE
3     2.0   FALSE
4    23.0    TRUE
5     0.2   FALSE
'''
dataframevariablebeginswithdf$numbers #print [1]  1.0  2.0  2.0 23.0  0.2
typ
dataframevariablebeginswithdf[[1]][[4]] #print 23
dataframevariablebeginswithdf[[1]][4] #print 23
dataframevariablebeginswithdf[4,1] #print 23.  RM:  Fourth row, first column
dataframevariablebeginswithdf[[1]][4:5] #print 23.0  0.2
dataframevariablebeginswithdf[1]
'''
  numbers
1     1.0
2     2.0
3     2.0
4    23.0
5     0.2
'''
dataframevariablebeginswithdf[[2]] #print [1]  TRUE FALSE FALSE  TRUE FALSE
dataframevariablebeginswithdf[2]
'''
logical
1    TRUE
2   FALSE
3   FALSE
4    TRUE
5   FALSE
'''
dataframevariablebeginswithdf[4,]
'''
  numbers logical
4      23    TRUE
'''
dataframevariablebeginswithdf[c(1,3,4),]
'''
  numbers logical
1       1    TRUE
3       2   FALSE
4      23    TRUE
'''
dataframevariablebeginswithdf[,2] #print TRUE FALSE FALSE  TRUE FALSE
typeof(dataframevariablebeginswithdf) #print list
typeof(dataframevariablebeginswithdf[2]) #print list
matrix2rows3columns
'''
     [,1] [,2]              [,3]
[1,] "a"  "b"               "z" 
[2,] "b"  "my little story" "20"
'''
matrix2rows3columns[2,] #print "b"               "my little story" "20"

#Functions
sumfunction<-function(argument1, insidefunction1){
  result<-argument1+insidefunction1
  return(result)
}
sumfunction
'''
function(argument1, insidefunction1){
  result<-argument1+insidefunction1
  return(result)
}
<bytecode: 0x558471f2db10>
'''
sumfunction(1,9) #print 10
sumfunction(argument1 = 90, insidefunction1=10) #print 100

#Packages
#For example, install ggplot2.  Type at Console window install.packages("ggplot2").  Use package, type library(ggplot2) in Source window.
library(ggplot2)
ggplot(dataframevariablebeginswithdf,aes(numbers,logical))+geom_point() #RM:  View graph at Plots tab Ctrl+6
ggplot2::geom #Help or find or search command in package.  The example is search for geom codes.
  