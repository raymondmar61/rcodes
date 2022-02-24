initialnumber<-3
initialnumber #print 3
numberfour<-4
if(initialnumber<=numberfour){
  initialnumber<-initialnumber^2
}
initialnumber #print 9
avector<-c(2.73,5.40,2.15,5.29,1.36,2.16,1.41,6.97,7.99,9.52)
avector #print 2.73 5.40 2.15 5.29 1.36 2.16 1.41 6.97 7.99 9.52
amatrix<-matrix(c(2,0,1,2,3,0,3,0,1,1),5,2) #same as nrow=5,ncol=2
amatrix
'''
     [,1] [,2]
[1,]    2    0
[2,]    0    3
[3,]    1    0
[4,]    2    1
[5,]    3    1
'''
avector-1 #print 1.73 4.40 1.15 4.29 0.36 1.16 0.41 5.97 6.99 8.52
(avector-1)>9 #print FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
any((avector-1)>9) #print FALSE
avector[seq(1,9,2)] #print 2.73 2.15 1.36 1.41 7.99
matrix(avector,2,5) #nrow=2,ncol=5
'''
     [,1] [,2] [,3] [,4] [,5]
[1,] 2.73 2.15 1.36 1.41 7.99
[2,] 5.40 5.29 2.16 6.97 9.52
'''
matrix(avector,2,5)[2,1] #print 5.4. slice row 2, column 1
matrix(avector,2,5)[2,1]<=6 #TRUE
(any(avector-1 >9)||matrix(avector,2,5)[2,1]<=6) #print TRUE
if(any((avector-1)>9)||matrix(avector,2,5)[2,1]<=6){
  new.avector <- avector
  new.avector[seq(1,9,2)] <- NA
  mylist <- list(aa=new.avector,bb=amatrix+0.5)
}
mylist #RM:  stupid if statement example.  The if statement evalulates to TRUE.  Copy avector to new.avector.  Replace every odd indexed number in avector with NA.  Add .5 to each number in matrix(avector,2,5).
'''
$aa
 [1]   NA 5.40   NA 5.29   NA 2.16   NA 6.97   NA 9.52

$bb
     [,1] [,2]
[1,]  2.5  0.5
[2,]  0.5  3.5
[3,]  1.5  0.5
[4,]  2.5  1.5
[5,]  3.5  1.5
'''
initialnumberfive<-5
numberfour<-4
if(initialnumberfive<=numberfour){
  initialnumberfive<-initialnumberfive^2
} else {
  initialnumberfive<-initialnumberfive^3
}
initialnumberfive #print 125
#An if statement checks the condition of only a single logical value.  The if statement checks the very first element.
if(c(FALSE,TRUE,FALSE,TRUE,TRUE)){}
'''
Warning message:
In if (c(FALSE, TRUE, FALSE, TRUE, TRUE)) { :
  the condition has length > 1 and only the first element will be used
'''
vectorfive<-5
vectorrangefives<--5:5
vectorrangefives #print -5 -4 -3 -2 -1  0  1  2  3  4  5
vectorrangefives==0 #print FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE
shortcutifelsefunction<-ifelse(test=vectorrangefives==0,yes=NA,no=vectorfive/vectorrangefives) #Uses exact matching.  test takes a logical-valued data structure.  yes provides the element to return if the condition is satisifed.  no gives the element to return if the condition is FALSE.  The returned structure is the same length and attributes as test.
shortcutifelsefunction
'''
 [1] -1.000000 -1.250000 -1.666667 -2.500000 -5.000000        NA  5.000000  2.500000
 [9]  1.666667  1.250000  1.000000
 '''
initialnumber<-3
numberfour<-4
if (initialnumber<=numberfour){
  initialnumber <- initialnumber^2
  if(numberfour>3){
    sequencenumbers <- seq(1,initialnumber,length=numberfour)
  } else {
    sequencenumbers <- initialnumber*numberfour
  }
}
initialnumber #print 9
sequencenumbers #print 1.000000 3.666667 6.333333 9.000000
initialnumber<-5
numberfour<-4
if (initialnumber<=numberfour){
  initialnumber <- initialnumber^2
  if(numberfour>3){
    sequencenumbers <- seq(1,initialnumber,length=numberfour)
  } else {
    sequencenumbers <- initialnumber*numberfour
  }
} else {
  initialnumber <- initialnumber-3.5
  if(numberfour>=4) {
    replicatenumbers <- initialnumber^3
  } else {
    replicatenumbers<-rep(initialnumber,times=3)
  }
}
initialnumber #print 1.5
sequencenumbers #print 1.000000 3.666667 6.333333 9.000000
replicatenumbers #print 3.375
initialnumber<-3
numberfour<-4
sequencenumbers <- c()
replicatenumbers<-c()
if(initialnumber<=numberfour && numberfour>3){
  initialnumber <- initialnumber^2
  sequencenumbers <- seq(1,initialnumber,length=numberfour)
} else if(initialnumber<=numberfour && numberfour<=3){
  initialnumber <- initialnumber^2
  sequencenumbers<-initialnumber*numberfour
} else if(numberfour>=4){
  initialnumber<-initialnumber-3.5
} else {
  initialnumber <- initialnumber-3.5
  replicatenumbers <- rep(initialnumber+numberfour,times=5)
  }
initialnumber
numberfour
sequencenumbers
replicatenumbers
'''
> initialnumber
[1] 9
> numberfour
[1] 4
> sequencenumbers
[1] 1.000000 3.666667 6.333333 9.000000
> replicatenumbers
NULL
'''
simpsonscharacter <- "Lisa"
if(simpsonscharacter=="Homer"){
  simpsonsnumber <- 12
} else if(simpsonscharacter=="Marge"){
  simpsonsnumber <- 34
} else if(simpsonscharacter=="Bart"){
  simpsonsnumber <- 56
} else if(simpsonscharacter=="Lisa"){
  simpsonsnumber <- 78
} else if(simpsonscharacter=="Maggie"){
  simpsonsnumber <- 90
} else {
  simpsonsnumber <- NA
}
simpsonsnumber #print 78
simpsonscharacter <- "Peter"
simpsonsnumberswitch <- switch(EXPR=simpsonscharacter,Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90,NA)
simpsonsnumberswitch #print NA
positionnumber <- 3
switchintegerversion <- switch(EXPR=positionnumber,12,34,56,78,NA)
switchintegerversion #print 56
positionnumberzero <- 0
switchintegerversion <- switch(EXPR=positionnumberzero,12,34,56,78,NA)
switchintegerversion #print NULL
for(loopnumber in 1:6){
  cat("loopnumber is",loopnumber,"\n")
}
'''
loopnumber is 1 
loopnumber is 2 
loopnumber is 3 
loopnumber is 4 
loopnumber is 5 
loopnumber is 6 
'''
vectornumbers <- c(0.4,1.1,0.34,0.55)
for(eachvectornumbers in vectornumbers){
  print(2*eachvectornumbers)
  '''
  [1] 0.8
  [1] 2.2
  [1] 0.68
  [1] 1.1
  '''
}
listmostdatatypes <- list(aavector=c(3.4,1),bbmatrix=matrix(1:4,nrow=2,ncol=2),ccmatrix=matrix(c(T,T,F,T,F,F),3,2),ddstring="string here",eematrix=matrix(c("red","green","blue","yellow"))) #RM: default matrix column is one column?
listmostdatatypes
'''
$aavector
[1] 3.4 1.0

$bbmatrix
     [,1] [,2]
[1,]    1    3
[2,]    2    4

$ccmatrix
      [,1]  [,2]
[1,]  TRUE  TRUE
[2,]  TRUE FALSE
[3,] FALSE FALSE

$ddstring
[1] "string here"

$eematrix
     [,1]    
[1,] "red"   
[2,] "green" 
[3,] "blue"  
[4,] "yellow"
'''
listofnames <- names(listmostdatatypes)
listofnames #print "aavector" "bbmatrix" "ccmatrix" "ddstring" "eematrix"
is.mat <- rep(NA,length(listmostdatatypes)) #is.mat check each member is a matrix
is.mat #print NA NA NA NA NA
numberofrows <- is.mat
numberofcolumns <- is.mat
data.type <- is.mat
numberofrows #print NA NA NA NA NA
numberofcolumns #print NA NA NA NA NA
data.type #print NA NA NA NA NA
for(i in 1:length(listmostdatatypes)){
  print(i)
  eachlistmostdatatypes <- listmostdatatypes[[i]] #RM:  double brackets required?
  print(eachlistmostdatatypes)
  if(is.matrix(eachlistmostdatatypes)){
    is.mat[i] <- "Yes"
    numberofrows[i] <- nrow(eachlistmostdatatypes)
    numberofcolumns[i] <- ncol(eachlistmostdatatypes)
    data.type[i] <- class(as.vector(eachlistmostdatatypes)) #coerces the matrix into a vector with as.vector and uses the class function to find the data type of the elements
  } else {
    is.mat[i] <- "No"
  }
}
'''
[1] 1
$aavector
[1] 3.4 1.0

[1] 2
$bbmatrix
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[1] 3
$ccmatrix
      [,1]  [,2]
[1,]  TRUE  TRUE
[2,]  TRUE FALSE
[3,] FALSE FALSE

[1] 4
$ddstring
[1] "string here"

[1] 5
$eematrix
     [,1]    
[1,] "red"   
[2,] "green" 
[3,] "blue"  
[4,] "yellow"
'''
forloopresultsdataframe <- data.frame(listofnames,is.mat,numberofrows,numberofcolumns,data.type,stringAsFactors=FALSE) #A data frame is created from the vectors given stringAsFactors=FALSE to prevent the character string vectors being automatically converted to factors
forloopresultsdataframe
'''
  listofnames is.mat numberofrows numberofcolumns data.type stringAsFactors
1    aavector     No           NA              NA      <NA>           FALSE
2    bbmatrix    Yes            2               2   integer           FALSE
3    ccmatrix    Yes            3               2   logical           FALSE
4    ddstring     No           NA              NA      <NA>           FALSE
5    eematrix    Yes            4               1 character           FALSE
'''
outerloopnumbers<-5:7
outerloopnumbers #print 5 6 7
innerloopnumbers<-9:6
innerloopnumbers #print 9 8 7 6
blankmatrixna <- matrix(NA,3,4) #three row and four column matrix
blankmatrixna
'''
     [,1] [,2] [,3] [,4]
[1,]   NA   NA   NA   NA
[2,]   NA   NA   NA   NA
[3,]   NA   NA   NA   NA
'''
for(i in 1:length(outerloopnumbers)){
  for(j in 1:length(innerloopnumbers)){
    outerloopi <- outerloopnumbers[i]
    innerloopj <- innerloopnumbers[j]
    blankmatrixna[i,j] <- outerloopi*innerloopj
  }
}
blankmatrixna
'''
     [,1] [,2] [,3] [,4]
[1,]   45   40   35   30
[2,]   54   48   42   36
[3,]   63   56   49   42
'''