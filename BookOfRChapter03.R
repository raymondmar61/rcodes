#Matrix index order starts with one.
firstmatrix<-matrix(data=c(-3,2,135,893,0.17,921),nrow=3,ncol=2)  #default is go down or column first, then next column to the right.  Go right or row first set byrow=TRUE.
firstmatrix
#      [,1]   [,2]
# [1,]   -3 893.00
# [2,]    2   0.17
# [3,]  135 921.00
defaultmatrixbyrowfalse<-matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)
defaultmatrixbyrowfalse
# [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
matrixbyrowtrue<-matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)
matrixbyrowtrue
# [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
rowbinding<-rbind(1:3,4:6)
rowbinding
# [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
columnbinding<-cbind(c(1,4),c(2,5),c(3,6))
columnbinding
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
matrixdimensions<-rbind(c(1,3,4),5:3,c(100,20,90),11:13) #rbind create matrix by row left to right.  Each row separated by a comma.
matrixdimensions
# [,1] [,2] [,3]
# [1,]    1    3    4
# [2,]    5    4    3
# [3,]  100   20   90
# [4,]   11   12   13
dim(matrixdimensions) #return 4 3
nrow(matrixdimensions) #return 4
ncol(matrixdimensions) #return 3
dim(matrixdimensions)[2] #return 3
subsettingextraction<-matrix(data=c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
subsettingextraction
# [,1]  [,2] [,3]
# [1,]  0.3  91.0 -4.2
# [2,]  4.5   0.1  8.2
# [3,] 55.3 105.5 27.9
subsettingextraction[3,2] #return 105.5  RM:  subsetting or slicing is [what row, what column].
subsettingextraction[1,1] #return 0.3
subsettingextraction[1,] #return 0.3 91.0 -4.2
subsettingextraction[,2] #return 91.0   0.1 105.5
subsettingextraction[2:3,]
# [,1]  [,2] [,3]
# [1,]  4.5   0.1  8.2
# [2,] 55.3 105.5 27.9
subsettingextraction[,c(3,1)] #all rows and column 3 and column 1 in order of 3 and 1.
# [,1] [,2]
# [1,] -4.2  0.3
# [2,]  8.2  4.5
# [3,] 27.9 55.3
subsettingextraction[c(3,1),2:3]  #extract row 3 and row 1 and get column 2 and column 3
# [,1] [,2]
# [1,] 105.5 27.9
# [2,]  91.0 -4.2
diag(x=subsettingextraction) #return 0.3  0.1 27.9
subsettingextraction[,-2] #omit second column
# [,1] [,2]
# [1,]  0.3 -4.2
# [2,]  4.5  8.2
# [3,] 55.3 27.9
subsettingextraction[-1,3:2] #omit first row, return third column and then second column
# [,1]  [,2]
# [1,]  8.2   0.1
# [2,] 27.9 105.5
subsettingextraction[-1,-2] #omit first row and second column
# [,1] [,2]
# [1,]  4.5  8.2
# [2,] 55.3 27.9
subsettingextraction[-1,-c(2,3)] #omit first row and omit second column and third column
# 4.5 55.3
copysubsettingextraction<-subsettingextraction
copysubsettingextraction
# [,1]  [,2] [,3]
# [1,]  0.3  91.0 -4.2
# [2,]  4.5   0.1  8.2
# [3,] 55.3 105.5 27.9
copysubsettingextraction[2,]<-c(100,222,-333) #replace row two values
copysubsettingextraction
# [,1]  [,2]   [,3]
# [1,]   0.3  91.0   -4.2
# [2,] 100.0 222.0 -333.0
# [3,]  55.3 105.5   27.9
copysubsettingextraction[c(1,3),2]<-900 #replace row one and row three column two values
copysubsettingextraction
# [,1] [,2]   [,3]
# [1,]   0.3  900   -4.2
# [2,] 100.0  222 -333.0
# [3,]  55.3  900   27.9
copysubsettingextraction[,3]<-copysubsettingextraction[3,] #replace third column values with third row values
copysubsettingextraction
# [,1] [,2]  [,3]
# [1,]   0.3  900  55.3
# [2,] 100.0  222 900.0
# [3,]  55.3  900  27.9
copysubsettingextraction[c(1,3),c(1,3)]<-c(-7,7) #vector recycling.  Replace the column one and column three and row one and row three with two values -7 and 7 in order of -7 first and 7 second.
copysubsettingextraction
# [,1] [,2] [,3]
# [1,]   -7  900   -7
# [2,]  100  222  900
# [3,]    7  900    7
copysubsettingextraction[c(1,3),2:1]<-c(65,-65,88,-88) #vector recycling.  Replace row 1 column 2, row 3 column 2, row 1 column 1 and row 3 column 1 with 65, -65, 88, -88.  Replace row 1 column 2 with 65, row 3 column 2 with -65 , row 1 column 1 with 88, and row 3 column 1 with -88.
copysubsettingextraction
# [,1] [,2] [,3]
# [1,]   88   65   -7
# [2,]  100  222  900
# [3,]  -88  -65    7
diag(x=copysubsettingextraction)<-rep(x=0,times=3)
copysubsettingextraction
# [,1] [,2] [,3]
# [1,]    0   65   -7
# [2,]  100    0  900
# [3,]  -88  -65    0
transposematrix<-rbind(c(2,5,2),c(6,1,4))
transposematrix
# [,1] [,2] [,3]
# [1,]    2    5    2
# [2,]    6    1    4
t(transposematrix)
# [,1] [,2]
# [1,]    2    6
# [2,]    5    1
# [3,]    2    4
t(t(transposematrix))
# [,1] [,2] [,3]
# [1,]    2    5    2
# [2,]    6    1    4
identitytmatrix<-diag(x=3) #identify matrix ones on the diagonal and zeros elsewhere.  If x is a positive integer, then an identity matrix is returned.  If x is a matrix, then the diagonal elements of the matrix is returned.
identitytmatrix
# [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    1    0
# [3,]    0    0    1
matrixmultiplybytwo<-rbind(c(2,5,2),c(6,1,4))
matrixmultiplybytwo
# [,1] [,2] [,3]
# [1,]    2    5    2
# [2,]    6    1    4
matrixmultiplybytwo*2
# [,1] [,2] [,3]
# [1,]    4   10    4
# [2,]   12    2    8
matrixaddorsubtract<-cbind(c(2,5,2),c(6,1,4))
matrixaddorsubtract
# [,1] [,2]
# [1,]    2    6
# [2,]    5    1
# [3,]    2    4
matrixaddorsubtract2<-cbind(c(-2,3,6),c(8.1,8.2,-9.8))
matrixaddorsubtract2
# [,1] [,2]
# [1,]   -2  8.1
# [2,]    3  8.2
# [3,]    6 -9.8
matrixaddorsubtract-matrixaddorsubtract2
# [,1] [,2]
# [1,]    4 -2.1
# [2,]    2 -7.2
# [3,]   -4 13.8
matrixmultiply1<-rbind(c(2,5,2),c(6,1,4))
matrixmultiply1
# [,1] [,2] [,3]
# [1,]    2    5    2
# [2,]    6    1    4
matrixmultiply2<-cbind(c(3,-1,1),c(-3,1,5))
matrixmultiply2
# [,1] [,2]
# [1,]    3   -3
# [2,]   -1    1
# [3,]    1    5
matrixmultiply1%*%matrixmultiply2 #matrix multiplication is not a simple element-wise calculation, and the standard * operator cannot be used. Instead, you must use R’s matrix product operator, written with percent symbols as %*%.  RM:  matrix multiplication is the math learned in Business Math Spring Semester 1995.
# [,1] [,2]
# [1,]    3    9
# [2,]   21    3
#multiply the row 1 in matrixmultiply1 by the column 1 in matrixmultiply2.  Add the products.  Move to the right.  Repeat for row 1 by column 2.  Add the products. New row.  Multiply the row 2 in matrixmultiply1 by the column 1 in matrixmultiply2.  Add the products.  Repeat for row 2 by column 2.
matrixmultiply2%*%matrixmultiply1
# [,1] [,2] [,3]
# [1,]  -12   12   -6
# [2,]    4   -4    2
# [3,]   32   10   22
inversionmatrix<-matrix(data=c(3,4,1,2),nrow=2,ncol=2)
inversionmatrix
# [,1] [,2]
# [1,]    3    1
# [2,]    4    2
solve(inversionmatrix) #Use solve for inverting a matrix
# [,1] [,2]
# [1,]    1 -0.5
# [2,]   -2  1.5
multidimensionalarraythreerowsfourcolumnstwolayer<-array(data=1:24,dim=c(3,4,2))
multidimensionalarraythreerowsfourcolumnstwolayer
# , , 1
# 
# [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12
# 
# , , 2
# 
# [,1] [,2] [,3] [,4]
# [1,]   13   16   19   22
# [2,]   14   17   20   23
# [3,]   15   18   21   24
