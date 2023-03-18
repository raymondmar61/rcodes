#Getting started with R： Basic Arithmetic and Coding in R ｜ R Tutorial 1.3 ｜ MarinStatsLectures [UYclmg1_KLk]
objectx = 11
print(objectx) #print 11
objectxassignmentoperator <- 222
print(objectxassignmentoperator) #print 222
ls() #return "objectx" "objectxassignmentoperator" RM:  returns all objects or variables
#periods are valid for assign objects or variables
periodbetweennumber.1 <- 14
print(periodbetweennumber.1) #print 14
stringswithquotes <- "surround string with quotes"
print(stringswithquotes) #print "surround string with quotes"
7*9 #return 63.  RM:  no need for print function
objectx+objectxassignmentoperator #return 233
7+objectx #return 18

#Create and Work with Vectors and Matrices in R ｜ R Tutorial 1.4 ｜ MarinStatslectures [2TcPAZOyV0U]
vectorintegers <- c(1,3,5,7,9)
vectorstrings <- c("male","female")
vectorsequence <- c(2:7)
seq(from=1,to=10,by=2) #return 1 3 5 7 9
seq(from=1,to=7,by=1/3)
'
 [1] 1.000000 1.333333 1.666667 2.000000 2.333333 2.666667 3.000000 3.333333 3.666667 4.000000 4.333333 4.666667 5.000000 5.333333
[15] 5.666667 6.000000 6.333333 6.666667 7.000000
'
seq(1,7,0.25) #return 1.00 1.25 1.50 1.75 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00 5.25 5.50 5.75 6.00 6.25 6.50 6.75 7.00
rep(1,times=10) #return 1 1 1 1 1 1 1 1 1 1
rep("marin",times=5) #return "marin" "marin" "marin" "marin" "marin"
rep("notimes=",3) #return "notimes=" "notimes=" "notimes="
rep(1:3,5) #return 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3
vectorsequence25 <- seq(2,5,0.25) #return 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
rep(vectorsequence25,5)
'
 [1] 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75
[26] 5.00 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50
[51] 4.75 5.00 2.00 2.25 2.50 2.75 3.00 3.25 3.50 3.75 4.00 4.25 4.50 4.75 5.00
'
rep(c("m","f"),5) #return "m" "f" "m" "f" "m" "f" "m" "f" "m" "f"
vectorx <- 1:5
print(vectorx) #print 1 2 3 4 5
vectory <- c(1,3,5,7,9)
vectory #return 1 3 5 7 9
vectorx-10 #return -9 -8 -7 -6 -5
vectorx/2 #return 0.5 1.0 1.5 2.0 2.5
#If two vectors are the same length, then we can perform arithmetic.
print(length(vectorx)) #print 5.  Vector length.
vectorx + vectory #return 2  5  8 11 14
vectory - vectorx #return 0 1 2 3 4
vectorx / vectory #return 1.0000000 0.6666667 0.6000000 0.5714286 0.5555556
vectory[3] #return 5
vectory[-3] #return 1 3 7 9
vectory[1:3] #return 1 3 5
vectory[c(1,5)] #return 1 9
vectory[-c(1,5)] #return 3 5 7
vectory[vectory<6] #return 1 3 5
rowwisematrix <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE)
rowwisematrix
'
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
'
columnwisematarix <- matrix(c(1:9),nrow=3,byrow=FALSE)
columnwisematarix
'''
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
'''
rowwisematrix[1,2] #return 2.  Row 1, column 2.
rowwisematrix[c(1,3),2] #return 2 8.  Row 1 and row 3, column 2.
rowwisematrix[2,] #return 4 5 6.  All row 2.
rowwisematrix[,1] #return 1 4 7.  All column 1.
rowwisematrix*11
'
     [,1] [,2] [,3]
[1,]   11   22   33
[2,]   44   55   66
[3,]   77   88   99
'

#Import Data, Copy Data from Excel to R CSV & TXT Files ｜ R Tutorial 1.5 ｜ MarinStatsLectures [qPk0YEKhqB8]
data1 <- read.csv(file.choose(), header = TRUE) #file.choose() opens a window to find csv file.  header=TRUE is first row is headers
data1
'
        Lung Age Height Smoke Gender Caesarean
1      6.475   6   62.1    no   male        no
2  10125.000  18   74.7   yes female        no
3      9.550  16   69.7    no female       yes
4     11.125  14   71.0    no   male        no
5      4.800   5   56.9    no   male        no
6      6.225  11   58.7    no female        no
7      4.950   8   63.3    no   male       yes
8      7.325  11   70.4    no   male        no
9      8.875  15   70.5    no   male        no
10     6.800  11   59.2    no   male        no
'
data2 <- read.table(file.choose(), header=T, sep=",") #file.choose() opens a window to find csv file.  header=TRUE is first row is headers
data2
'
        Lung Age Height Smoke Gender Caesarean
1      6.475   6   62.1    no   male        no
2  10125.000  18   74.7   yes female        no
3      9.550  16   69.7    no female       yes
4     11.125  14   71.0    no   male        no
5      4.800   5   56.9    no   male        no
6      6.225  11   58.7    no female        no
7      4.950   8   63.3    no   male       yes
8      7.325  11   70.4    no   male        no
9      8.875  15   70.5    no   male        no
10     6.800  11   59.2    no   male        no
'
importtextfile <- read.delim(file.choose(), header=T)
importtextfile
'
       Lung Age Height Smoke Gender Caesarean
1      6.475   6   62.1    no   male        no
2  10125.000  18   74.7   yes female        no
3      9.550  16   69.7    no female       yes
4     11.125  14   71.0    no   male        no
5      4.800   5   56.9    no   male        no
6      6.225  11   58.7    no female        no
7      4.950   8   63.3    no   male       yes
8      7.325  11   70.4    no   male        no
9      8.875  15   70.5    no   male        no
10     6.800  11   59.2    no   male        no
'
importtextfilereadtable <- read.table(file.choose(), header=T, sep="\t")
importtextfilereadtable
'
        Lung Age Height Smoke Gender Caesarean
1      6.475   6   62.1    no   male        no
2  10125.000  18   74.7   yes female        no
3      9.550  16   69.7    no female       yes
4     11.125  14   71.0    no   male        no
5      4.800   5   56.9    no   male        no
6      6.225  11   58.7    no female        no
7      4.950   8   63.3    no   male       yes
8      7.325  11   70.4    no   male        no
9      8.875  15   70.5    no   male        no
10     6.800  11   59.2    no   male        no
'

#Importing⧸Reading Excel data into R using RStudio (readxl) ｜ R Tutorial 1.5b ｜ MarinStatsLectures [JYVWufSQ4OI]

#Export Data from R (csv , txt and other formats) ｜ R Tutorial 1.6 ｜ MarinStatsLectures [WjpcbmcJjjM]
datatoexport <- data.frame(subject=c("Dave.Andreychuk","Jon.Stewart","Jane.Doe","Amelia.Earhart","Donald.Trump","Sidney.Crosby","Oprah.Winfrey","Steve.Jobs"),age=c(53,54,38,119,70,28,62,61),gender=c("male","male","female","female","male","male","female","male"),score=c(80.5,82.1,75.9,90.0,-25.5,87.2,88.8,91.1))
datatoexport
'
          subject age gender score
1 Dave.Andreychuk  53   male  80.5
2     Jon.Stewart  54   male  82.1
3        Jane.Doe  38 female  75.9
4  Amelia.Earhart 119 female  90.0
5    Donald.Trump  70   male -25.5
6   Sidney.Crosby  28   male  87.2
7   Oprah.Winfrey  62 female  88.8
8      Steve.Jobs  61   male  91.1
'
#save dataframe as a file in the current working directory setwd("~/rstudio")
write.table(datatoexport,file="exportfilenamecsvfile.csv",sep=",")
#save dataframe as a file in the current working directory setwd("~/rstudio") exclude row index numbers
write.table(datatoexport,file="exportfilenamecsvfile.csv",row.names=F,sep=",")
write.csv(datatoexport,file="exportfilenamecsvfile.csv",row.names=F) #write.csv2 for European style commas for decimal points and semicolon for separator
write.table(datatoexport,file="exportfilenametextfile.txt",row.names=F,sep="\t")
