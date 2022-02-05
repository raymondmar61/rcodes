library(help="datasets") #opens tab documentation on package datasets which includes data sets contained in R
?ChickWeight #opens help file for ChickWeight data set
install.packages("tseries") #installs package tseries data set or downloads tseries package data set
library("tseries") #loads package tseries to RStudio
library(help="tseries") #opens tab documentation on package tseries which includes data sets contained in tseries package
data(ice.river) #loads ice.river data set from the tseries package
ice.river[1:5,] #view the first five rows in ice.river data set
readtextfile<-read.table(file="/home/mar/R/mydatafile.txt",header=TRUE,sep=" ",na.strings="*",stringsAsFactors = FALSE) #sep is the delimiter.  na.strings requests the characters used to denote missing values; in this case, use the asterik *.  * asterik is the missing value in mydatafile.txt.
readtextfile
'''
  person age sex funny age.mon
1  Peter  NA   M  High     504
2   Lois  40   F  <NA>     480
3    Meg  17   F   Low     204
4  Chris  14   M   Med     168
5 Stewie   1   M  High      NA
6  Brian  NA   M   Med      NA
'''
list.files("/home/mar/R") #returns list of files in directory
'''
[1] "BookOfRChapter01.R"                     
[2] "BookOfRChapter02.R"                     
[3] "BookOfRChapter02Exercises.R"            
[4] "BookOfRChapter02Vectors.R"              
[5] "BookOfRChapter03.R"                     
[6] "BookOfRChapter03Exercises.R"
...
'''
file.choose() #opens OS's file explorer window like opening the R-Studio Open File window Ctrl+O.  It returns the character string of the directory and the file name.  E.g., I select BookOfRChapter04.R which returns "/home/mar/R/BookOfRChapter04.R" in Console.
choosefiletoopen<-read.table(file=file.choose(),header=TRUE,sep=" ",na.strings="*",stringsAsFactors=FALSE) #opens OS's file explorer window to choose the file to open as long as it meets the read.table option criteria.  It's like opening the R-Studio Open File window Ctrl+O.  E.g., I select mydatafile.txt.  mydatafile.txt is loaded.  I see the choosefiletoopen in Environment tab.
choosefiletoopen
'''
  person age sex funny age.mon
1  Peter  NA   M  High     504
2   Lois  40   F  <NA>     480
3    Meg  17   F   Low     204
4  Chris  14   M   Med     168
5 Stewie   1   M  High      NA
6  Brian  NA   M   Med      NA
'''
choosefiletoopen[1:3,]
'''
  person age sex funny age.mon
1  Peter  NA   M  High     504
2   Lois  40   F  <NA>     480
3    Meg  17   F   Low     204
'''
readspreadsheet<-read.csv(file="/home/mar/R/spreadsheetfile.csv",header=FALSE,stringsAsFactors=TRUE) #set stringsAsFactors=TRUE because don't want to treat the non-numeric variable as a factor.  No need to set the na.strings because there is no missing values.
readspreadsheet
'''
   V1  V2     V3
1  55 161 female
2  85 185   male
3  75 174   male
4  42 154 female
5  93 188   male
6  63 178   male
7  58 170 female
8  75 167   male
9  89 181   male
10 67 178 female
'''
readwebbasedfileurl<-"https://innovateinfinitely.com/sitemap.txt" #save url to variable readwebbasedfileurl
readwebbasedfile<-read.table(readwebbasedfileurl)
readwebbasedfile
'''
 V1
1                                          http://www.innovateinfinitely.com/aboutinin.html
2                                            http://www.innovateinfinitely.com/aboutme.html
3                                               http://www.innovateinfinitely.com/blog.html
4                                            http://www.innovateinfinitely.com/contact.html
5                                         http://www.innovateinfinitely.com/cooking101.html
6                                     http://www.innovateinfinitely.com/favoritequotes.html
7                                              http://www.innovateinfinitely.com/index.html
...
'''
write.table(x=choosefiletoopen,file="/home/mar/R/somenewfile.txt",sep="@",na="??",quote=FALSE,row.names=FALSE) #Write table format file.  x= is the data frame object choosefiletoopen.  Write choosefiletoopen to a new file somenewfile.txt with folder location /home/mar/R/.  Delimiter is @.  Missing values is ??.  quote determines whether to encapulsate each non-numeric entry in double quotes.  row.names asks to include row names.
readsomenewfile<-read.table(file="/home/mar/R/somenewfile.txt",header=TRUE,sep="@",na.strings="??",stringsAsFactors = FALSE)
readsomenewfile
'''
  person age sex funny age.mon
1  Peter  NA   M  High     504
2   Lois  40   F  <NA>     480
3    Meg  17   F   Low     204
4  Chris  14   M   Med     168
5 Stewie   1   M  High      NA
6  Brian  NA   M   Med      NA
'''
#Create a chart in .jpg or .pdf
jpeg(filename="/home/mar/R/createjpegfile.jpg",width=600,height=600) #create plot or chart
plot(1:5,6:10,ylab="a nice ylab",xlab="here's an xlab",main="a saved .jpg plot")
points(1:5,10:6,cex=2,pch=4,col=2)
dev.off() #close the file device or stop plotting a chart
pdf(file="/home/mar/R/createpdfchartfile.pdf",width=5,height=5)
plot(1:5,6:10,ylab="a nice ylab",xlab="here's an xlab",main="a saved .pdf plot")
points(1:5,10:6,cex=2,pch=4,col=2)
dev.off()
quickchartxvalues<-c(1.1,2,3.5,3.9,4.2)
quickchartyvalues<-c(2,2.2,-1.3,0,0.2)
qplot(quickchartxvalues,quickchartyvalues,geom="blank")+geom_point(size=3,shape=8,color="darkgreen")+geom_line(color="orange",linetype=4) #return Error in qplot(quickchartxvalues, quickchartyvalues, geom = "blank") : could not find function "qplot"
ggsave(filename="/home/mar/R/saveplotaspng.png") #return Error in ggsave(filename = "/home/mar/R/saveplotaspng.png") : could not find function "ggsave"
#Create a list object to save to a file.  Write object to a file.
readlist<-list(listofnumbers=c(5,2,45),listofmatrix=matrix(data=c(T,T,F,F,F,F,T,F,T),nrow=3,ncol=3),listoffactors=factor(c(1,2,2,3,1,1,3),levels=1:3,ordered=T))
readlist
'''
$listofnumbers
[1]  5  2 45

$listofmatrix
      [,1]  [,2]  [,3]
[1,]  TRUE FALSE  TRUE
[2,]  TRUE FALSE FALSE
[3,] FALSE FALSE  TRUE

$listoffactors
[1] 1 2 2 3 1 1 3
Levels: 1 < 2 < 3
'''
dput(x=readlist,file="/home/mar/R/saverlisttextfile.txt")
dput
'''
function (x, file = "", control = c("keepNA", "keepInteger", 
    "niceNames", "showAttributes")) 
{
    if (is.character(file)) 
        if (nzchar(file)) {
            file <- file(file, "wt")
            on.exit(close(file))
        }
        else file <- stdout()
    .Internal(dput(x, file, .deparseOpts(control)))
}
<bytecode: 0x55675e8deaf8>
<environment: namespace:base>
'''
importreadlist<-dget(file="/home/mar/R/saverlisttextfile.txt") #saverlisttextfile.txt file created.  The text file is the list object readlist.
importreadlist
'''
$listofnumbers
[1]  5  2 45

$listofmatrix
      [,1]  [,2]  [,3]
[1,]  TRUE FALSE  TRUE
[2,]  TRUE FALSE FALSE
[3,] FALSE FALSE  TRUE

$listoffactors
[1] 1 2 2 3 1 1 3
Levels: 1 < 2 < 3
'''