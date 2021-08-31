library(help="datasets") #opens tab Information on package ‘datasets’ which includes data sets contained in R
?ChickWeight #opens help file for ChickWeight data set
install.packages("tseries") #installs package tseries
library("tseries") #loads package tseries
readtextfile<-read.table(file="/home/mar/R/mydatafile.txt",header=TRUE,sep=" ",na.strings="*",stringsAsFactors = FALSE) #sep is the delimiter.  na.strings requests the characters used to denote missing values; in this case, use the asterik *.
list.files("/home/mar/R") #returns list of files in directory
file.choose() #opens OS's file explorer window
choosefiletoopen<-read.table(file=file.choose(),header=TRUE,sep=" ",na.strings="*",stringsAsFactors=FALSE) #opens OS's file explorer window to choose the file to open as long as it meets the read.table option criteria
readspreadsheet<-read.csv(file="/home/mar/R/spreadsheetfile.csv",header=FALSE,stringsAsFactors=TRUE) #set stringsAsFactors=TRUE because don't want to treat the non-numeric variable as a factor.  No need to set the na.strings because there is no missing values.
readwebbasedfileurl<-"https://innovateinfinitely.com/sitemap.txt" #save url to variable readwebbasedfileurl
readwebbasedfile<-read.table(readwebbasedfileurl)
write.table(x=readtextfile,file="/home/mar/R/somenewfile.txt",sep="@",na="??",quote=FALSE,row.names=FALSE) #writes new file to readtextfile created at line 5.  Provide the file location ending with the filename for the new data file.  Delimiter is @.  Missing values denoted with ??.  quote determines whether to encapsulate each non-numeric entry in double quotes; no quotes set to FALSE.  row.names asks whether to include the row names of readtextfile.  write.csv is the shortcut version of write.table for .csv files.
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
importreadlist<-dget(file="/home/mar/R/saverlisttextfile.txt")
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