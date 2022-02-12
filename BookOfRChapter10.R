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


