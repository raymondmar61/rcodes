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
#10.3c
#RM:  run each mylist separately in the for loop below
mylist <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),cc=matrix(c(T,T,F,T,F,F),3,2),dd="string here",ee=list(c("hello","you"),matrix(c("hello","there"))),ff=matrix(c("red","green","blue","yellow")))
# mylist <- list("tricked you",as.vector(matrix(1:6,3,2)))
# mylist <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))
namecomponents<-matrix(data=names(mylist))
class(mylist) #print list
countermatricesinlist <- 0
for(i in 1:length(mylist)){
  checkcontainmatrix <- mylist[[i]]
  print(checkcontainmatrix)
  if(is.matrix(checkcontainmatrix)){
    cat(namecomponents[[i]],"is a matrix\n")
    countermatricesinlist <- countermatricesinlist+1
  } else if (is.list(checkcontainmatrix)){ #check for a sublist inside mylist list.  If there is a sublist, then check for a matrix in sublist.
    for(j in 1:length(checkcontainmatrix)){
      if(is.matrix(checkcontainmatrix[[j]])){
        cat(namecomponents[[i]],"found another matrix in a sublist\n")
        countermatricesinlist <- countermatricesinlist+1
      }
    }
  }
}
countermatricesinlist
'''
[1] 3.4 1.0
     [,1] [,2]
[1,]    1    3
[2,]    2    4
bb is a matrix
      [,1]  [,2]
[1,]  TRUE  TRUE
[2,]  TRUE FALSE
[3,] FALSE FALSE
cc is a matrix
[1] "string here"
[[1]]
[1] "hello" "you"  

[[2]]
     [,1]   
[1,] "hello"
[2,] "there"

ee found another matrix in a sublist
     [,1]    
[1,] "red"   
[2,] "green" 
[3,] "blue"  
[4,] "yellow"
ff is a matrix
> countermatricesinlist
[1] 4
'''

#Exercises 10.4
#10.4a
mylist <- list()
counter <- 1
# mynumbersvector <- c(2,2,2,2,5,2)
# mynumbersvector <- 2:20
mynumbersvector <- c(10,1,10,1,2)
while(mynumbersvector[counter]<=5){
  print(mynumbersvector[[counter]])
  mylist[[counter]] <- diag(mynumbersvector[counter])
  counter <- counter+1
}
mylist #print list() for mynumbersvector <- c(10,1,10,1,2) because while loop exits at while(mynumbersvector[1]<=5) is false because while(10<=5) for which mynumbersvector[1] is 10.
#10.4b
factorial <- 12
answer <- 1
if(factorial == 0){
  answer <- 1
} else {
  while(factorial>0){
      answer = factorial * answer
      factorial <- factorial-1
  }
}
answer #print 479001600.  RM: 479001600 is 12!.
#10.4c
#Extract mystring in its entirity or at the end of the second "e" excluding the second "e"
substr(x=mystring,start=3,stop=3) #print f
nchar(mystring) #print 7
# mystring <- "R fever"
# mystring <- "beautiful"
# mystring <- "ECCENTRIC"
# mystring <- "ElAbOrAte"
mystring <- "eeeeek!"
index <- 1
ecount <- 0
result <- mystring
while(ecount<2&&index<=nchar(mystring)){
  print(substr(x=mystring,start=index,stop=index))
  secondlettere <-substr(x=mystring,start=index,stop=index)
  if(secondlettere == "e"|| secondlettere == "E"){
    ecount <- ecount+1
    print(ecount)
  }
  if(ecount==2){
    result<-substr(x=mystring,start=1,stop=index-1)
  }
  index <- index+1
}
result #print e

mystring <- "R fever"
for(x in 1:7){
  print(substr(x=mystring,start=x,stop=x))
  letter <- substr(x=mystring,start=x,stop=x)
}
'''
[1] "R"
[1] " "
[1] "f"
[1] "e"
[1] "v"
[1] "e"
[1] "r"
'''
#Exercises 10.5
#10.5a Calculate the product of the column elements
sortrow <- apply(sumrowscolumnsmatrix,1,sort,decreasing=TRUE)
sortrow
'''
     [,1] [,2] [,3] [,4]
[1,]    9   10   11   12
[2,]    5    6    7    8
[3,]    1    2    3    4
'''
multiplycolumns <- apply(sortrow,2,FUN=prod)
multiplycolumns #print 45 120 231 384
#10.5b Convert the for loop to an implict loop
matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))
matlist
'''
[[1]]
      [,1] [,2]
[1,]  TRUE TRUE
[2,] FALSE TRUE

[[2]]
     [,1] [,2]
[1,] "a"  "z" 
[2,] "c"  "p" 
[3,] "b"  "q" 

[[3]]
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
'''
for(i in 1:length(matlist)){
  matlist[[i]] <- t(matlist[[i]])
}
matlist
'''
[[1]]
     [,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE

[[2]]
     [,1] [,2] [,3]
[1,] "a"  "c"  "b" 
[2,] "z"  "p"  "q" 

[[3]]
     [,1] [,2]
[1,]    1    2
[2,]    3    4
[3,]    5    6
[4,]    7    8
'''
matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))
implicitlooptranspose <- lapply(matlist,FUN=t) #lapply operates member by member on a list.
implicitlooptranspose
'''
[[1]]
     [,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE

[[2]]
     [,1] [,2] [,3]
[1,] "a"  "c"  "b" 
[2,] "z"  "p"  "q" 

[[3]]
     [,1] [,2]
[1,]    1    2
[2,]    3    4
[3,]    5    6
[4,]    7    8
'''
#10.5c1
#four dimensional array comprised of three blocks.  Each block is an array made up of two layers of 4x4 matrices.
fourdimensionalarray <- array(96:1,dim=c(4,4,2,3))
fourdimensionalarray
'''
, , 1, 1

     [,1] [,2] [,3] [,4]
[1,]   96   92   88   84
[2,]   95   91   87   83
[3,]   94   90   86   82
[4,]   93   89   85   81

, , 2, 1

     [,1] [,2] [,3] [,4]
[1,]   80   76   72   68
[2,]   79   75   71   67
[3,]   78   74   70   66
[4,]   77   73   69   65

, , 1, 2

     [,1] [,2] [,3] [,4]
[1,]   64   60   56   52
[2,]   63   59   55   51
[3,]   62   58   54   50
[4,]   61   57   53   49

, , 2, 2

     [,1] [,2] [,3] [,4]
[1,]   48   44   40   36
[2,]   47   43   39   35
[3,]   46   42   38   34
[4,]   45   41   37   33

, , 1, 3

     [,1] [,2] [,3] [,4]
[1,]   32   28   24   20
[2,]   31   27   23   19
[3,]   30   26   22   18
[4,]   29   25   21   17

, , 2, 3

     [,1] [,2] [,3] [,4]
[1,]   16   12    8    4
[2,]   15   11    7    3
[3,]   14   10    6    2
[4,]   13    9    5    1
'''
#Implicit loop obtain the diagonal elements of all second layers matrices only
secondlayerdiagonals <- apply(fourdimensionalarray[,,2,],3,diag)
secondlayerdiagonals
'''
     [,1] [,2] [,3]
[1,]   80   48   16
[2,]   75   43   11
[3,]   70   38    6
[4,]   65   33    1
'''
#10.5c2
#Return the dimensions of each of the three matrices formed by accessing the four column of every matrix, wrapped by another implicit loop which finds the row sums of that returned structure.
dimensionsofeachmatrix <- apply(fourdimensionalarray[,4,,],3,dim)
dimensionsofeachmatrix
'''
     [,1] [,2] [,3]
[1,]    4    4    4
[2,]    2    2    2
'''
dimensionsofeachmatrix <- apply(dimensionsofeachmatrix,1,sum)
dimensionsofeachmatrix #print 12 6

#Exercises 10.6
#10.6a write a while loop without using break or next
fivevariable <- 5
numbers <- c(2,3,1.1,4,0,4.1,3)
counter = 1
while(counter <= length(numbers)){
  if(numbers[counter]==0){
    print("Skip the zero number")
  } else {
    result <- fivevariable/numbers[counter]
    print(result)
  }
  counter=counter+1
}
'''
[1] 2.5
[1] 1.666667
[1] 4.545455
[1] 1.25
[1] "Skip the zero number"
[1] 1.219512
[1] 1.666667
'''
#10.6a write an ifelse function returning the same results above
fivevariable <- 5
numbers <- c(2,3,1.1,4,0,4.1,3)
shortcutifelsefunction <- ifelse(test=numbers==0,yes="Skip the zero number",no=fivevariable/numbers)
shortcutifelsefunction
[1] "2.5"                  "1.66666666666667"     "4.54545454545454"    
[4] "1.25"                 "Skip the zero number" "1.21951219512195"    
[7] "1.66666666666667" 
#10.6b write a for loop using a break declaration
mylistforidentitymatrices <- list()
mynumbersvector <- c(4,5,1,2,6,2,4,6,6,2)
for(i in 1:length(mynumbersvector)){
  if(mynumbersvector[i]>5){
    break
  } else {
    mylistforidentitymatrices[[i]] <- diag(mynumbersvector[i])
  }
}
mylistforidentitymatrices
'''
[[1]]
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1

[[2]]
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    0    0    0    0
[2,]    0    1    0    0    0
[3,]    0    0    1    0    0
[4,]    0    0    0    1    0
[5,]    0    0    0    0    1

[[3]]
     [,1]
[1,]    1

[[4]]
     [,1] [,2]
[1,]    1    0
[2,]    0    1
'''
#10.6b write a repeat statement
mylistforidentitymatrices <- list()
mynumbersvector <- c(4,5,1,2,6,2,4,6,6,2)
counter <- 1
repeat{
  if(mynumbersvector[counter]>5){
    break
  } else {
    #print(diag(mynumbersvector[counter])) #RM:  also works without saving to the list mylistforidentitymatrices
    mylistforidentitymatrices[[counter]] <- diag(mynumbersvector[counter])
    counter <- counter + 1
  }
}
mylistforidentitymatrices
'''
[[1]]
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1

[[2]]
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    0    0    0    0
[2,]    0    1    0    0    0
[3,]    0    0    1    0    0
[4,]    0    0    0    1    0
[5,]    0    0    0    0    1

[[3]]
     [,1]
[1,]    1

[[4]]
     [,1] [,2]
[1,]    1    0
[2,]    0    1
'''
#10.6c
#Nested pair loops R code
counter <- 0
resultlist <- list()
for(i in 1:length(matricesnumberslist1)){
  for(j in 1:length(matricesnumberslist2)){
    counter <- counter+1
    if(ncol(matricesnumberslist1[[i]])!=nrow(matricesnumberslist2[[j]])){
      resultlist[[counter]] <- "Not possible"
      next
    }
    resultlist[[counter]] <- matricesnumberslist1[[i]]%*%matricesnumberslist2[[j]]
  }
}
resultlist
#Nested pair loops R code first run
matricesnumberslist1 <- list(matrix(1:4,2,2), matrix(1:4),matrix(1:8,4,2))
matricesnumberslist1
'''
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1]
[1,]    1
[2,]    2
[3,]    3
[4,]    4

[[3]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matricesnumberslist2 <- matricesnumberslist1
counter <- 0
resultlist <- list()
for(i in 1:length(matricesnumberslist1)){
  for(j in 1:length(matricesnumberslist2)){
    counter <- counter+1
    if(ncol(matricesnumberslist1[[i]])!=nrow(matricesnumberslist2[[j]])){
      resultlist[[counter]] <- "Not possible"
      next
    }
    resultlist[[counter]] <- matricesnumberslist1[[i]]%*%matricesnumberslist2[[j]]
  }
}
resultlist
[[1]]
[,1] [,2]
[1,]    7   15
[2,]   10   22

[[2]]
[1] "Not possible"

[[3]]
[1] "Not possible"

[[4]]
[1] "Not possible"

[[5]]
[1] "Not possible"

[[6]]
[1] "Not possible"

[[7]]
[,1] [,2]
[1,]   11   23
[2,]   14   30
[3,]   17   37
[4,]   20   44

[[8]]
[1] "Not possible"

[[9]]
[1] "Not possible"
#Nested pair loops R code second run
matricesnumberslist1 <- list(matrix(1:4,2,2), matrix(2:5,2,2),matrix(1:16,4,2))
matricesnumberslist2 <- list(matrix(1:8,2,4),matrix(10:7,2,2),matrix(9:2,4,2))
matricesnumberslist1
'''
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
     [,1] [,2]
[1,]    2    4
[2,]    3    5

[[3]]
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
'''
matricesnumberslist2
'''
[[1]]
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8

[[2]]
     [,1] [,2]
[1,]   10    8
[2,]    9    7

[[3]]
     [,1] [,2]
[1,]    9    5
[2,]    8    4
[3,]    7    3
[4,]    6    2
'''
counter <- 0
resultlist <- list()
for(i in 1:length(matricesnumberslist1)){
  for(j in 1:length(matricesnumberslist2)){
    counter <- counter+1
    if(ncol(matricesnumberslist1[[i]])!=nrow(matricesnumberslist2[[j]])){
      resultlist[[counter]] <- "Not possible"
      next
    }
    resultlist[[counter]] <- matricesnumberslist1[[i]]%*%matricesnumberslist2[[j]]
  }
}
resultlist
'''
[[1]]
     [,1] [,2] [,3] [,4]
[1,]    7   15   23   31
[2,]   10   22   34   46

[[2]]
     [,1] [,2]
[1,]   37   29
[2,]   56   44

[[3]]
[1] "Not possible"

[[4]]
     [,1] [,2] [,3] [,4]
[1,]   10   22   34   46
[2,]   13   29   45   61

[[5]]
     [,1] [,2]
[1,]   56   44
[2,]   75   59

[[6]]
[1] "Not possible"

[[7]]
     [,1] [,2] [,3] [,4]
[1,]   11   23   35   47
[2,]   14   30   46   62
[3,]   17   37   57   77
[4,]   20   44   68   92

[[8]]
     [,1] [,2]
[1,]   55   43
[2,]   74   58
[3,]   93   73
[4,]  112   88

[[9]]
[1] "Not possible"
'''