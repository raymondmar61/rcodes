#Exercises 10.1
#10.1a
vec1 <-c(2,1,1,3,2,1,0)
vec2 <-c(3,8,2,2,0,0,0)
cat("This is a test using cat() concatenate display string") #print This is a test using cat()
vec1[1] #print 2
vec2[2] #print 8
(vec2-vec1) #print 1  7  1 -1 -2 -1  0
(vec2-vec1)[c(1,5,1,4)] #print 1 -2, 1, -1
(vec2-vec1)[c(2,6)] #print 7 -1
(vec2-vec1)[2,6] #print Error in (vec2 - vec1)[2, 6] : incorrect number of dimensions
vec2[3] #print 2
if((vec1[1]+vec2[2])==10){cat("True if statement")}
if(vec1[1]>=2&&vec2[1]>=2){cat("True if statement")}
if(all((vec2-vec1)[c(2,6)]<7)){cat("pass")}else{cat("False if statement")}  
if(!is.na(vec2[3])){cat("True if statement")}
#10.1b
#multiply corresponding elements if sum greater than 3; otherwise sum
multiplyorsum<-ifelse(test=vec1+vec2>3,yes=vec1*vec2,no=vec1+vec2)
multiplyorsum #print 6 8 3 6 2 1 0
#10.1c
#skipped

#Exercises 10.2
#10.2a
mynum <- 3
if (mynum == 1){
  foo <- 12
} else if (mynum==2){
  foo <- 34
} else if (mynum==3){
  foo <- 56
} else if (mynum==4){
  foo <- 78
} else {
  foo<-NA
}
foo #print 56
mynum <- 0
if (mynum == 1){
  foo <- 12
} else if (mynum==2){
  foo <- 34
} else if (mynum==3){
  foo <- 56
} else if (mynum==4){
  foo <- 78
} else {
  foo<-NULL
}
foo #print NULL
#10.2b
#Dosage thresholds (lowdose, meddose, highdose).  Predetermined dose level factor vector named doselevel.  Write a set of nested if statements to produce a new numeric vector called dosage.
#RM:  Looked at solution for setup because the instructions are confusing.  Answers don't match my results.  Dumb question.
if(any(doselevel=="High")){
  if(lowdose>=10){
    lowdose <- 10
  } else {
    lowdose <- lowdose/2
  }
  if(meddose>=26){
    meddose <- 26
  }
  if(highdose<60){
    highdose <- 60
  } else {
    highdose <- highdose*1.5
  }
  dosage <- rep(lowdose,length(doselevel))
  dosage[doselevel=="Med"] <- meddose
  dosage[doselevel=="High"] <- highdose
} else {
  doselevel<-factor(doselevel,levels=c("Low","Med"),labels=c("Small","Large"))
  if(lowdose<15&&meddose<35){
    lowdose<-lowdose*2
    meddose<-meddose+highdose
  }
  dosage<-rep(lowdose,length(doselevel))
  dosage[doselevel=="Large"]<-meddose
}
#(i)
lowdose <- 12.5
meddose <- 25.3
highdose <- 58.1
doselevel <- factor(c("Low","High","High","High","Low","Med","Med"),levels=c("Low","Med","High"))
dosage #print 10.0 60.0 60.0 60.0 10.0 25.3 25.3
#(ii)
lowdose <- 12.5
meddose <- 25.3
highdose <- 58.1
doselevel <- factor(c("Low","Low","Low","Med","Low","Med","Med"),levels=c("Low","Med","High"))
dosage
doselevel
##(iii)
lowdose <- 9
meddose <- 49
highdose <- 61
doselevel <- factor(c("Low","Med","Med"),levels=c("Low","Med","High"))
dosage
doselevel
##(iv)
lowdose <- 9
meddose <- 49
highdose <- 61
doselevel <- factor(c("Low","High","High","High","Low","Med","Med"),levels=c("Low","Med","High"))
dosage #print 4.5 91.5 91.5 91.5  4.5 26.0 26.0
#(c)
mynum <- 3
ifelse(mynum>0,switch(mynum,"one","two","three","four","five","six","seven","eight","nine"),"zero")
mynum #print "zero"
mynum <- 0
ifelse(mynum>0,switch(mynum,"one","two","three","four","five","six","seven","eight","nine"),"zero")
mynum #print 0
#10.2c
integerzerotonine <- 10
if (integerzerotonine == 0){
  integerzerotonine <- "zero"
} else {
  integerzerotonine <-  switch(EXPR=integerzerotonine,"one","two","three","four","five","six","seven","eight","nine")
}
integerzerotonine #print NULL

#Exercises 10.3
#10.3a
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
for(loopavector in innerloopnumbers){
  print(loopavector) #print 9\n 8\n 7\n 6
}
for(i in 1:length(outerloopnumbers)){
  print(i)
  print(outerloopnumbers[i])
  print(innerloopnumbers)
  '''
  [1] 1
  [1] 5
  [1] 9 8 7 6
       [,1] [,2] [,3] [,4]
  [1,]   45   40   35   30
  [2,]   NA   NA   NA   NA
  [3,]   NA   NA   NA   NA
  [1] 2
  [1] 6
  [1] 9 8 7 6
       [,1] [,2] [,3] [,4]
  [1,]   45   40   35   30
  [2,]   54   48   42   36
  [3,]   NA   NA   NA   NA
  [1] 3
  [1] 7
  [1] 9 8 7 6
       [,1] [,2] [,3] [,4]
  [1,]   45   40   35   30
  [2,]   54   48   42   36
  [3,]   63   56   49   42
  '''
  blankmatrixna[i,] <- outerloopnumbers[i]*innerloopnumbers
  print(blankmatrixna)
}
blankmatrixna
'''
     [,1] [,2] [,3] [,4]
[1,]   45   40   35   30
[2,]   54   48   42   36
[3,]   63   56   49   42
'''
#10.3b
simpsonscharactervector <- c("Peter","Homer","Lois","Stewie","Maggie","Bart")
for(eachsimpsonscharactervector in simpsonscharactervector){
  # print(eachsimpsonscharactervector)
  # '''
  # [1] "Peter"
  # [1] "Homer"
  # [1] "Lois"
  # [1] "Stewie"
  # [1] "Maggie"
  # [1] "Bart"
  # '''
  simpsonsnumberswitch <- switch(EXPR=eachsimpsonscharactervector,Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90,NA)
  print(simpsonsnumberswitch)
  '''
  [1] NA
  [1] 12
  [1] NA
  [1] NA
  [1] 90
  [1] 56
  '''
}
