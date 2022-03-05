'''
Run from beginning of line Alt+Ctrl+B, run from line to end Alt+Ctrl+E, run all Alt+Ctrl+R,
run code selection Alt+Ctrl+T.
Run function definition Alt+Ctrl+F.
Rerun previous Alt+Ctrl+P.
Ctrl+D deletes line.  Ctrl+Shift+D duplicates line.
Alt+- assignment operator <-.
Ctrl+Up Arrow or Ctrl+Down Arrow works as scrolling in Sublime Text
'''

#Vector
vectorone<-c(1,2,3,4,5)
vectorone #print 1 2 3 4 5
is.vector(vectorone) #print TRUE
avectorcharacter<-c("a","b","b","my little story","z","20")
avectorasfactor<-as.factor(c("female","male","male","female","male"))

#Matrix
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
avectorcharacter<-c("a","b","b","my little story","z","20")
matrix2rows3columns<-matrix(avectorcharacter,2,3) #Click table under Environment tab display Grid shows the matrix as a data frame as a table in a tab named matrix2rows3columns.  avectorcharacter provides the data going down and then up and to the right
View(matrix2rows3columns) #Return matrix2rows3columns tab matrix data frame table
matrix2rows3columns
'''
     [,1] [,2]              [,3]
[1,] "a"  "b"               "z" 
[2,] "b"  "my little story" "20"
'''

#Array
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

#Data Frame
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
avectorcisconcatenate<-c(1,2,2,23,0.2)
avectorlogical<-c(T,F,FALSE,TRUE,F)
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

#List
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
avectorcisconcatenate<-c(1,2,2,23,0.2)
avectorlogical<-c(T,F,FALSE,TRUE,F)
avectorcharacter<-c("a","b","b","my little story","z","20")
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