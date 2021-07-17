assignvariabletrue <- TRUE
assignvariabletrue #print TRUE
assignvariablefalsef <- F
assignvariablefalsef #print FALSE
vectorstruefalse <- c(T,F,F,F,T,F,T,T,T,F,T,F)
vectorstruefalse
#[1]  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE
#[10] FALSE  TRUE FALSE
matrixtruefalse<-matrix(data=vectorstruefalse,nrow=3,ncol=4,byrow=F)
matrixtruefalse
# [,1]  [,2] [,3]  [,4]
# [1,]  TRUE FALSE TRUE FALSE
# [2,] FALSE  TRUE TRUE  TRUE
# [3,] FALSE FALSE TRUE FALSE
1==2 #print FALSE
topvector<-c(3,2,1,4,1,2,1,-1,0,3)
bottomvector<-c(4,1,2,1,1,0,0,3,0,4)
topvector
# [1]  3  2  1  4  1  2  1 -1  0  3
bottomvector
# [1] 4 1 2 1 1 0 0 3 0 4
length(x=topvector)==length(x=bottomvector) #print TRUE
topvector==bottomvector
# [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE
# [10] FALSE
topvector<=(bottomvector+10)
# [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
topvector3rd10thelement<-topvector[c(10,3)]
topvector3rd10thelement #print 3 1
topvector > topvector3rd10thelement
# [1] FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE
# [10]  TRUE
#RM:  topvector compares to being recycled topvector3rd10thelement.  3  2  1  4  1  2  1 -1  0  3 compare to 3 1 3 1 3 1 3 1 3 1
topvector < 3
# [1] FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
# [10] FALSE
topvector.matrix<-matrix(topvector,nrow=5,ncol=2)
bottomvector.matrix<-matrix(bottomvector,nrow=5,ncol=2)
topvector.matrix
# [,1] [,2]
# [1,]    3    2
# [2,]    2    1
# [3,]    1   -1
# [4,]    4    0
# [5,]    1    3
bottomvector.matrix
# [,1] [,2]
# [1,]    4    0
# [2,]    1    0
# [3,]    2    3
# [4,]    1    0
# [5,]    1    4
topvector.matrix<=bottomvector.matrix
# [,1]  [,2]
# [1,]  TRUE FALSE
# [2,] FALSE FALSE
# [3,]  TRUE  TRUE
# [4,] FALSE  TRUE
# [5,]  TRUE  TRUE
topvector.matrix<3
# [,1]  [,2]
# [1,] FALSE  TRUE
# [2,]  TRUE  TRUE
# [3,]  TRUE  TRUE
# [4,] FALSE  TRUE
# [5,]  TRUE FALSE
logicomparetopvectorbottomvector<-topvector==bottomvector
logicomparetopvectorbottomvector
# [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE
# [10] FALSE
any(logicomparetopvectorbottomvector) #print TRUE
all(logicomparetopvectorbottomvector) #print FALSE
TRUE&&TRUE #print TRUE
TRUE&TRUE #print TRUE
TRUE&&FALSE #print FALSE
TRUE&FALSE #print FALSE
topvectorTF<-c(T,F,F,F,T,F,T,T,T,F,T,F)
bottomvectorTF<-c(F,T,F,T,F,F,F,F,T,T,T,T)
topvectorTF&bottomvectorTF
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
# [10] FALSE  TRUE FALSE
topvectorTF&&bottomvectorTF #print FALSE
topvectorTF|bottomvectorTF
# [1]  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
# [10]  TRUE  TRUE  TRUE
topvectorTF||bottomvectorTF #print TRUE
addtwotruesoneeach = TRUE + TRUE
addtwotruesoneeach #print 2
addnegativetrueonetofalse = FALSE-TRUE
addnegativetrueonetofalse #print -1
numbersvector<-c(5,-2.3,4,4,4,6,8,10,40221,-8)
correspondingindextruesprinted<-numbersvector[c(F,T,F,F,F,F,F,F,F,T)]
correspondingindextruesprinted #print -2.3 -8.0
numbersvector<0 #print [1] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE [10]  TRUE
numbersvector[numbersvector<0] #print -2.3 -8.0
numbersvector[c(T,F)] #print 5     4     4     8 40221.  To be recycled.
numbersvector[(numbersvector<0)|(numbersvector>6)] #print -2.3     8.0    10.0 40221.0    -8.0
replacenegativenumber<-numbersvector[numbersvector<0]
replacenegativenumber #print -2.8 -8.0
replacenegativenumber <- -200
numbersvector[numbersvector<0] <- replacenegativenumber
numbersvector
# [1]     5  -200     4     4     4     6     8    10 40221
# [10]  -200
which(x=c(T,F,F,T,T)) #print 1 4 5
findthetrueindexposition<-which(x=numbersvector<0)
findthetrueindexposition #print 2 10
numbersvector[which(x=numbersvector<0)] #print -200 -200
numbersvector[which(x=numbersvector>6)] #print 8 10 40221
amatrix <-matrix(c(0.3,4.5,55.3,91.0,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
amatrix
# [,1]  [,2] [,3]
# [1,]  0.3  91.0 -4.2
# [2,]  4.5   0.1  8.2
# [3,] 55.3 105.5 27.9
amatrix<1
# [,1]  [,2]  [,3]
# [1,]  TRUE FALSE  TRUE
# [2,] FALSE  TRUE FALSE
# [3,] FALSE FALSE FALSE
amatrix[amatrix<1] <- -7
amatrix
# [,1]  [,2] [,3]
# [1,] -7.0  91.0 -7.0
# [2,]  4.5  -7.0  8.2
# [3,] 55.3 105.5 27.9
amatrix>25
# [,1]  [,2]  [,3]
# [1,] FALSE  TRUE FALSE
# [2,] FALSE FALSE FALSE
# [3,]  TRUE  TRUE  TRUE
which(x=amatrix>25) #print 3 4 6 9 #RM:  go down, right and up, down, right and up.  Returns four indexes satisfies the relational check which are scalar values.
stackcolumnsfirstthroughthird<-which(x=c(amatrix[,1],amatrix[,2],amatrix[,3])>25)
stackcolumnsfirstthroughthird #print 3 4 6 9.  The elements return TRUE are the third, fourth, sixth, and ninth elements.  Want which to return dimension specific indexes.  Set arr.ind array indexes to TRUE.
which(x=amatrix>25,arr.ind=T)
# row col
# [1,]   3   1
# [2,]   1   2
# [3,]   3   2
# [4,]   3   3
characterstringonelength <- "This is a character string!"
length(x=characterstringonelength) #print 1
nchar(x=characterstringonelength) #print 27
"alpha"=="alpha" #print TRUE
"alpha"=="Alpha" #print FALSE
c("alpha","beta","gamma") =="beta" #print FALSE TRUE FALSE
"alpha"<"Alpha" #print TRUE
concatenatethreewords <- c("awesome","R","is")
concatenatethreewords #print "awesome" "R"       "is"
length(x=concatenatethreewords) #print 3
cat(concatenatethreewords[2],concatenatethreewords[3],"totally",concatenatethreewords[1],"!") #print R is totally awesome !
paste(concatenatethreewords[2],concatenatethreewords[3],"totally",concatenatethreewords[1],"!") #print "R is totally awesome !"
paste(concatenatethreewords[2],concatenatethreewords[3],"totally",concatenatethreewords[1],"!",sep="-seperator-") #print "R-seperator-is-seperator-totally-seperator-awesome-seperator-!"
cat(concatenatethreewords[2],concatenatethreewords[3],"totally",concatenatethreewords[1],"!",sep="") #print Ristotallyawesome!
a<-3
b<-4.4
cat("The value stored as 'a' is ",a,".",sep="") #print The value stored as 'a' is 3.
paste("The value stored as 'b' is ",b,".",sep="") #print "The value stored as 'b' is 4.4."
paste("Is ",a+b," less than 10?  That's totally ",a+b<10,".") #print "Is  7.4  less than 10?  That's totally  TRUE ."
paste("Is ",a+b," less than 10?  That's totally ",a+b<10,".",sep="") #print "Is 7.4 less than 10?  That's totally TRUE."
