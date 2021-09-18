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
numbersvector
'''
 [1]     5  -200     4     4     4     6     8    10 40221
[10]  -200
'''
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
#The which function takes a logical vector for the x argument.  It returns the indexes corresponding to the position of any and all TRUE entries.
which(x=c(T,F,F,T,T)) #print 1 4 5
findthetrueindexposition<-which(x=numbersvector<0)
findthetrueindexposition #print 2 10
numbersvector[findthetrueindexposition] #print -200 -200
which(x=numbersvector<0) #print 2 10
numbersvector[which(x=numbersvector<0)] #print -200 -200
which(x=numbersvector>6) #print 7 8 9
numbersvector[which(x=numbersvector>6)] #print 8 10 40221
#Use which to identify the numeric indexes to delete and render them negative.  RM:  I don't think render them negative means a negative number.
numbersvector[-which(x=numbersvector<0)] #print [1]     5     4     4     4     6     8    10 40221
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
extractthewordstring<-"This is a character string."
substr(x=extractthewordstring,start=21,stop=27) #print "string."  RM:  start the index count at 1.  Start and stop are inclusive.
substr(x=extractthewordstring,start=1,stop=4)<-"Replace"
extractthewordstring #print "Repl is a character string."
substituteword<-"How much wood could a woodchuck chuck"
sub(pattern="chuck",replacement="hurl",x=substituteword) #print "How much wood could a woodhurl chuck"
gsub(pattern="chuck",replacement="hurl",x=substituteword)
#print "How much wood could a woodhurl hurl" RM:  replaces all chuck with hurl
#sub and gsub have search options like case-sensitivity or ignore.case and fixed meaning TRUE pattern is matched as is.
#factors example.  A data set of eight individuals, male or female, and month of birth.
firstname<-c("Liz","Jolene","Susan","Boris","Rochelle","Tim","Simon","Amy")
sex.num<-c(0,0,0,1,0,1,1,0)
sex.char<-c("female","female","female","male","female","male","male","female")
#All possible values in a finite number of categories are best represented using factors.  firstname is infinite.
#Use the function factor to create a factor vector
sex.num.factor<-factor(x=sex.num)
sex.num.factor
'''
[1] 0 0 0 1 0 1 1 0
Levels: 0 1
'''
sex.char.factor<-factor(x=sex.char)
sex.char.factor
'''
[1] female female female male   female male   male   female
Levels: female male
'''
levels(x=sex.num.factor) #print "0" "1"
levels(x=sex.char.factor) #print "female" "male"
levels(x=sex.num.factor)<-c("111","222") #relabel females as 111 and males as 222
sex.num.factor
'''
[1] 111 111 111 222 111 222 222 111
Levels: 111 222
'''
sex.char.factor[2:5]
'''
[1] female female male   female
Levels: female male
'''
sex.char.factor[c(1:3,5,8)]
'''
[1] female female female female female
Levels: female male
'''
sex.num.factor=="222" #[1] FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE
firstname[sex.char.factor=="male"] #print "Boris" "Tim"   "Simon"
firstname[sex.num.factor=="222"] #print "Boris" "Tim"   "Simon"
sevenmonthsofbirth<-c("Apr","Jan","Dec","Sep","Nov","Jul","Jul","Jun")
sevenmonthsofbirth[2] #print "Jan"
sevenmonthsofbirth[3] #print "Dec"
sevenmonthsofbirth[2]<sevenmonthsofbirth[3] #print FALSE.  Alphametically FALSE is correct.  FALSE is incorrect in order of the calendar months.
#Create a factor object sevenmonthsofbirth.factor from sevenmonthsofbirth
monthsfactor<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
sevenmonthsofbirth.factor<-factor(x=sevenmonthsofbirth,levels=monthsfactor,ordered=TRUE)
sevenmonthsofbirth.factor
'''
[1] Apr Jan Dec Sep Nov Jul Jul Jun
12 Levels: Jan < Feb < Mar < Apr < May < Jun < ... < Dec
'''
sevenmonthsofbirth.factor[2]
'''
[1] Jan
12 Levels: Jan < Feb < Mar < Apr < May < Jun < ... < Dec
'''
sevenmonthsofbirth.factor[3]
'''
[1] Dec
12 Levels: Jan < Feb < Mar < Apr < May < Jun < ... < Dec
'''
sevenmonthsofbirth.factor[2]<sevenmonthsofbirth.factor[3] #print TRUE
combinenumbersone<-c(5.1,3.3,3.1,4)
combinenumberstwo<-c(4.5,1.2)
c(combinenumbersone,combinenumbersone) #print 5.1 3.3 3.1 4.0 5.1 3.3 3.1 4.0
tenmonthsofbirth.factor<-factor(x=c("Oct","Feb","Feb"),levels=levels(sevenmonthsofbirth.factor),ordered=TRUE)
tenmonthsofbirth.factor
'''
[1] Oct Feb Feb
12 Levels: Jan < Feb < Mar < Apr < May < Jun < ... < Dec
'''
sevenmonthsofbirth.factor
'''
[1] Apr Jan Dec Sep Nov Jul Jul Jun
12 Levels: Jan < Feb < Mar < Apr < May < Jun < ... < Dec
'''
c(sevenmonthsofbirth.factor,tenmonthsofbirth.factor) #print 4  1 12  9 11  7  7  6 10  2  2.  c function interprets factors as integers.
levels(sevenmonthsofbirth.factor)
'''
 [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep"
[10] "Oct" "Nov" "Dec"
'''
#Use the integers with levels(sevenmonthsofbirth.factor) to retrieve a character vector
levels(sevenmonthsofbirth.factor)[c(sevenmonthsofbirth.factor,tenmonthsofbirth.factor)]
'''
 [1] "Apr" "Jan" "Dec" "Sep" "Nov" "Jul" "Jul" "Jun" "Oct"
[10] "Feb" "Feb"
'''
sevenmonthsofbirth.update<-levels(sevenmonthsofbirth.factor)[c(sevenmonthsofbirth.factor,tenmonthsofbirth.factor)]
sevenmonthsofbirth.update.factor<-factor(x=sevenmonthsofbirth.update,levels=levels(sevenmonthsofbirth.factor),ordered=TRUE)
sevenmonthsofbirth.update.factor
'''
 [1] Apr Jan Dec Sep Nov Jul Jul Jun Oct Feb Feb
12 Levels: Jan < Feb < Mar < Apr < May < Jun < ... < Dec
'''
tennumberstogroup<-c(0.53,5.4,1.5,3.33,0.45,0.01,2,4.2,1.99,1.01)
#group numbers small 0 to 1.9, medium 2 to 3.9, large 4 to 6.  Square bracket is inclusion.  Parenthesis is exclusion.Use the cut function and supply the break  intervals or bin intervals to the break argument.
bins<-c(0,2,4,6)
cut(x=tennumberstogroup,breaks=bins)
'''
[1] (0,2] (4,6] (0,2] (2,4] (0,2] (0,2] (0,2] (4,6] (0,2]
[10] (0,2]
Levels: (0,2] (2,4] (4,6]
#gives a factor which each number assigned an interval.  However, the boundary intervals are back-to-front  Set right to FALSE.
'''
cut(x=tennumberstogroup,breaks=bins,right=FALSE)
'''
[1] [0,2) [4,6) [0,2) [2,4) [0,2) [0,2) [2,4) [4,6) [0,2)
[10] [0,2)
Levels: [0,2) [2,4) [4,6)
6 is exclusive.  Want 6 inclusive or [4,6].  Set include.lowest to TRUE.
'''
cut(x=tennumberstogroup,breaks=bins,right=FALSE,include.lowest=TRUE)
'''
[1] [0,2) [4,6] [0,2) [2,4) [0,2) [0,2) [2,4) [4,6] [0,2)
[10] [0,2)
Levels: [0,2) [2,4) [4,6]
'''
labelsreadeasier<-c("Small","Medium","Large")
cut(x=tennumberstogroup,breaks=bins,right=FALSE,include.lowest=TRUE,labels=labelsreadeasier)
'''
 [1] Small  Large  Small  Medium Small  Small  Medium Large 
 [9] Small  Small 
Levels: Small Medium Large
'''