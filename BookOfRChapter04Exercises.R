#Exercise 4.1
#a A vector with 15 values as an object.
vectorobject<-c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
#vectorobject equal to six
vectorobject==6
'''
[1]  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE
[10]  TRUE  TRUE FALSE FALSE FALSE FALSE
'''
#vectorobject greater than or equal to six
vectorobject>=6
'''
 [1]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE
[10]  TRUE  TRUE  TRUE FALSE  TRUE FALSE
'''
#vectorobject less than 6+2
vectorobject<=6+2
'''
 [1]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
[10]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE
'''
#vectorobject not equal to 6
vectorobject!=6
'''
 [1] FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE
[10] FALSE FALSE  TRUE  TRUE  TRUE  TRUE
'''
#b Delete the first three elements from vectorobject.  Fill a 2x2x3 array.
#vectorobject[3:] return error message Error: unexpected ']' in "vectorobject[3:]"
vectorobject[4:length(vectorobject)] #print [1] 3 6 7 9 6 3 6 6 7 1 9 1  #RM:  official solution vectorobject[-1:3] 
vectorobjectarray<-array(data=vectorobject[4:length(vectorobject)],dim=c(2,2,3))
vectorobjectarray
'''
, , 1

     [,1] [,2]
[1,]    3    7
[2,]    6    9

, , 2

     [,1] [,2]
[1,]    6    6
[2,]    3    6

, , 3

     [,1] [,2]
[1,]    7    9
[2,]    1    1
'''
vectorobjectarray<=(6/2)+4
'''
, , 1

     [,1]  [,2]
[1,] TRUE  TRUE
[2,] TRUE FALSE

, , 2

     [,1] [,2]
[1,] TRUE TRUE
[2,] TRUE TRUE

, , 3

     [,1]  [,2]
[1,] TRUE FALSE
[2,] TRUE  TRUE
'''
(vectorobjectarray+2)<=(6/2)+4
'''
, , 1

      [,1]  [,2]
[1,]  TRUE FALSE
[2,] FALSE FALSE

, , 2

      [,1]  [,2]
[1,] FALSE FALSE
[2,]  TRUE FALSE

, , 3

      [,1]  [,2]
[1,] FALSE FALSE
[2,]  TRUE  TRUE
'''
#c Confirm the specific loations of elements equal to 0 in the 10x10 identity matrix.
identitymatrix10x10<-diag(x=10)
identitymatrix10x10
'''
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
 [1,]    1    0    0    0    0    0    0    0    0     0
 [2,]    0    1    0    0    0    0    0    0    0     0
 [3,]    0    0    1    0    0    0    0    0    0     0
 [4,]    0    0    0    1    0    0    0    0    0     0
 [5,]    0    0    0    0    1    0    0    0    0     0
 [6,]    0    0    0    0    0    1    0    0    0     0
 [7,]    0    0    0    0    0    0    1    0    0     0
 [8,]    0    0    0    0    0    0    0    1    0     0
 [9,]    0    0    0    0    0    0    0    0    1     0
[10,]    0    0    0    0    0    0    0    0    0     1
'''
identitymatrix10x10==0
'''
       [,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]  [,8]  [,9]
 [1,] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [2,]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [3,]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [4,]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
 [5,]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
 [6,]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
 [7,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
 [8,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE
 [9,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
[10,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
      [,10]
 [1,]  TRUE
 [2,]  TRUE
 [3,]  TRUE
 [4,]  TRUE
 [5,]  TRUE
 [6,]  TRUE
 [7,]  TRUE
 [8,]  TRUE
 [9,]  TRUE
[10,] FALSE
'''
#d Check whether any of the values of the logical arrays created in (b) are TRUE.  If they are, then check whether they are all TRUE.
any(vectorobjectarray<=(6/2)+4) #print TRUE
all(vectorobjectarray<=(6/2)+4) #print FALSE
any(vectorobjectarray+2<=(6/2)+4) #print TRUE
all(vectorobjectarray+2<=(6/2)+4) #print FALSE
#e Extract the diagonal elements in identitymatrix10x10.  use any to confirm there are no TRUE entries.
diag(10)==0
'''
       [,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]  [,8]  [,9]
 [1,] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [2,]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [3,]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [4,]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
 [5,]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
 [6,]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
 [7,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
 [8,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE
 [9,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
[10,]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
      [,10]
 [1,]  TRUE
 [2,]  TRUE
 [3,]  TRUE
 [4,]  TRUE
 [5,]  TRUE
 [6,]  TRUE
 [7,]  TRUE
 [8,]  TRUE
 [9,]  TRUE
[10,] FALSE
'''
diag(diag(10)==0)
'''
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[10] FALSE
'''
any(diag(diag(10)==0)) #print FALSE

#Exercise 4.2
#a Identify the elements greater than 5 or equal to 2.
foovector<-c(7,1,7,10,5,9,10,3,10,8)
foovector[foovector>5|foovector==2] #print [1]  7  7 10  9 10 10  8
(foovector>5)|(foovector==2)
'''
 [1]  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE
[10]  TRUE
'''
#b Identify the elements less than or equal to 6 and not equal to 4.
barvector<-c(8,8,4,4,5,1,5,6,6,8)
(barvector<=6)&(barvector!=4)
'''
 [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
[10] FALSE
'''
#c Identify elements that satisfy foovector and satisfy barvector.  RM:  write the R code in a and the R code in b with the and in between.
((foovector>5)|(foovector==2))&((barvector<=6)&(barvector!=4))
'''
 [1] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE
[10] FALSE
'''
#d Store a third vector called bazvector which is equal to the element-wise sum of foovector and barvector.
bazvector<-foovector+barvector
bazvector #print [1] 15  9 11 14 10 10 15  9 16 16
#elements in bazvector greater than or equal to 14 and not equal to 15.
bazvector>=14&bazvector!=15
'''
 [1] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE
[10]  TRUE
'''
#Divide elements of foovector by barvector element-wise.  Elements greater than 4 or less than or equal to 2.
(barvector<=6)&(barvector!=4)
'''
 [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
[10] FALSE
'''
dividefoovectorbybarvector<-foovector/barvector
(dividefoovectorbybarvector>4)|(dividefoovectorbybarvector<=2)
'''
 [1]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
[10]  TRUE
'''
#e Confirm the answers using the long version performs only the first comparison.  The results in e match the first entries of the previously obtained vectors a-d.
(foovector>5)||(foovector==2) #print TRUE
(barvector<=6)&&(barvector!=4) #print FALSE
((foovector>5)||(foovector==2))&&((barvector<=6)&&(barvector!=4)) #print FALSE
bazvector>=14&&bazvector!=15 #print FALSE
(dividefoovectorbybarvector>4)||(dividefoovectorbybarvector<=2) #print TRUE

#Exercise 4.3
#a vectortenvalues
vectortenvalues<-c(7,5,6,1,2,10,8,3,8,2)
#Extract elements greater than or equal to 5.  Store results as barfivevalues.
barfivevalues<-vectortenvalues[vectortenvalues>=5]
barfivevalues #print [1]  7  5  6 10  8  8
#Display the vector containing elements from vectortenvalues remain after omitting all elements greater than or equal to five.
which(x=vectortenvalues>=5) #print 1 2 3 6 7 9
ommitbarfivevaluesfromvectortenvalues<-vectortenvalues[-which(x=vectortenvalues>=5)]
ommitbarfivevaluesfromvectortenvalues #print 1 2 3 2
#b Create a 2x3 matrix from barfivevalues 7  5  6 10  8  8.
matrixsixvalues<-matrix(data=barfivevalues,nrow=2,ncol=3,byrow=TRUE)
matrixsixvalues
'''
     [,1] [,2] [,3]
[1,]    7    5    6
[2,]   10    8    8
'''
#Replace any elements equal to 8 with the squared value of the element in row 1, column 2.  RM:  8 becomes 5^2 or 25.
which(x=matrixsixvalues==8) #print 4 6
matrixsixvalues[which(x=matrixsixvalues==8)]<-matrixsixvalues[1,2]^2
matrixsixvalues
'''
     [,1] [,2] [,3]
[1,]    7    5    6
[2,]   10   25   25
'''
#Confirm all values are less than or equal to 25 and greater than 4
(matrixsixvalues<=25)&(matrixsixvalues>4)
'''
     [,1] [,2] [,3]
[1,] TRUE TRUE TRUE
[2,] TRUE TRUE TRUE
'''
(matrixsixvalues<=25)&&(matrixsixvalues>4) #print TRUE
all((matrixsixvalues<=25)&(matrixsixvalues>4)) #print TRUE

#c Create a 3 × 2 × 3 array called qux using the following vector of 18 values: c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3).
quxarray<-array(data=c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3),dim=c(3,2,3))
quxarray
'''
, , 1

     [,1] [,2]
[1,]   10    4
[2,]    5    7
[3,]    1    4

, , 2

     [,1] [,2]
[1,]    3    3
[2,]    3    4
[3,]    1    3

, , 3

     [,1] [,2]
[1,]    1    3
[2,]    7    7
[3,]    8    3
'''
#Identify the dimension specific index positions of elements equal to 3 or equal to 4
dimensionspecificindex<-which(quxarray==3|quxarray==4)
dimensionspecificindex #print 4  6  7  8 10 11 12 16 18
dimensionspecificindexspecific<-which(quxarray==3|quxarray==4, arr.ind=TRUE)
dimensionspecificindexspecific  #RM:  dim1 is row, dim2 is column, dim3 is dimension
'''
      dim1 dim2 dim3
 [1,]    1    2    1
 [2,]    3    2    1
 [3,]    1    1    2
 [4,]    2    1    2
 [5,]    1    2    2
 [6,]    2    2    2
 [7,]    3    2    2
 [8,]    1    2    3
 [9,]    3    2    3
'''
#Replace elements less than 3 or greater than or equal to 7 with 100
quxarray[which(x=quxarray<3|quxarray>=7)]<-100
#or
quxarray[x=quxarray<3|quxarray>=7]<-100
quxarray
'''
, , 1

     [,1] [,2]
[1,]  100    4
[2,]    5  100
[3,]  100    4

, , 2

     [,1] [,2]
[1,]    3    3
[2,]    3    4
[3,]  100    3

, , 3

     [,1] [,2]
[1,]  100    3
[2,]  100  100
[3,]  100    3
'''
#d Use vectorobject<-c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1) to extract every second value.  Can you substitute 0 for FALSE and 1 for TRUE?  No.
vectorobject[c(F,T)] #print 9 3 7 6 6 7 9
vectorobject[c(0,1)] #print 6
