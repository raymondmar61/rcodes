#Exercise 3.1
#a Construct and store a 4 × 2 matrix that’s filled row-wise with the values 4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, and 6.5, in that order.
amatrix<-matrix(data=c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5), nrow=4,ncol=2, byrow=TRUE)
amatrix
'''
     [,1] [,2]
[1,]  4.3  3.1
[2,]  8.2  8.2
[3,]  3.2  0.9
[4,]  1.6  6.5
'''
#b Confirm the dimensions of the matrix from (a) are 3 × 2 if you remove any one row.
dim(amatrix[2:4,]) #print 3 2
#official solution #RM:  negative number is omit
dim(amatrix[-1,]) #print 3 2
#RM:  dim(amatrix[2:,]) Error: unexpected ',' in "dim(amatrix[2:,"
dim(amatrix[2:nrow(amatrix),]) #print 3 2
#c Overwrite the second column of the matrix from (a) with that same column sorted from smallest to largest.
sort(c(5,99,-43,4), decreasing=FALSE) #print -43   4   5  99 #RM:  no need for x= for x=c(5,99,-43,4)
secondcolumnsorted<-sort(amatrix[,2])
secondcolumnsorted #print 0.9 3.1 6.5 8.2
amatrix[,2]<-secondcolumnsorted
amatrix
'''
     [,1] [,2]
[1,]  4.3  0.9
[2,]  8.2  3.1
[3,]  3.2  6.5
[4,]  1.6  8.2
'''
#d What does R return if you delete the fourth row and the first column from (c)? Use matrix to ensure the result is a single-column matrix, rather than a vector.
singlecolumnmatrix<-matrix(data=amatrix[1:3,2],nrow=3,ncol=1,byrow=FALSE)
singlecolumnmatrix
'''
     [,1]
[1,]  0.9
[2,]  3.1
[3,]  6.5
'''
singlecolumnvector<-amatrix[1:3,2]
singlecolumnvector #print 0.9 3.1 6.5
#e Store the bottom four elements of (c) as a new 2 × 2 matrix.  #RM  Extract 3rd row and 4th row and their two columns.
amatrix2x2<-amatrix[3:4,]
amatrix2x2
'''
     [,1] [,2]
[1,]  3.2  6.5
[2,]  1.6  8.2
'''
#f Overwrite, in this order, the elements of (c) at positions (4,2), (1,2), (4,1), and (1,1) with −1/2 of the two values on the diagonal of (e).  #RM:  divide by negative two the diagonal in e.  Replace the values row 4 column 2; row 1, column 2; row 4 column 1; and row 1 column 1.
dividebynegativetwo<--0.5*diag(amatrix2x2)
dividebynegativetwo #print -1.6 -4.1
amatrix[c(4,1),2:1]<--0.5*diag(amatrix2x2)
amatrix
'''
     [,1] [,2]
[1,] -4.1 -4.1
[2,]  8.2  3.1
[3,]  3.2  6.5
[4,] -1.6 -1.6
'''

#Exercise 3.2
#a Create the matrix.  Do the arithmetic.
leftmatrix<-cbind(c(1,2,7),c(2,4,6))
leftmatrix
'''
     [,1] [,2]
[1,]    1    2
[2,]    2    4
[3,]    7    6
'''
rightmatrix<-rbind(c(10,20),c(30,40),c(50,60))
rightmatrix
'''
     [,1] [,2]
[1,]   10   20
[2,]   30   40
[3,]   50   60
'''
leftmatrixsubtractrightmatrix<-leftmatrix-rightmatrix
leftmatrixsubtractrightmatrix
'''
     [,1] [,2]
[1,]   -9  -18
[2,]  -28  -36
[3,]  -43  -54
'''
leftmatrixsubtractrightmatrix<-(2/7)*leftmatrixsubtractrightmatrix
leftmatrixsubtractrightmatrix
'''
           [,1]       [,2]
[1,]  -2.571429  -5.142857
[2,]  -8.000000 -10.285714
[3,] -12.285714 -15.428571
'''
#b Complete the following multiplications if possible.
matrixa<-matrix(data=c(1,2,7),nrow=3,ncol=1,byrow=FALSE)
matrixb<-matrix(data=c(3,4,8),nrow=3,ncol=1,byrow=FALSE)
matrixa
'''
     [,1]
[1,]    1
[2,]    2
[3,]    7
'''
matrixb
'''
     [,1]
[1,]    3
[2,]    4
[3,]    8
'''
matrixa*matrixb
'''
     [,1]
[1,]    3
[2,]    8
[3,]   56
'''
t(matrixa)*matrixb #Error in t(matrixa) * matrixb : non-conformable arrays
t(matrixa)%*%matrixb #RM:  matrix multiplication for which matrixa is transposed
'''
     [,1]
[1,]   67
'''
solve(matrixb%*%t(matrixb)+matrixa%*%t(matrixa)-100*diag(3))
'''
             [,1]         [,2]        [,3]
[1,] -0.007923676  0.003123274 0.007843334
[2,]  0.003123274 -0.005350239 0.011483806
[3,]  0.007843334  0.011483806 0.017584735
'''
#c 
identitytmatrixdiagonalsareones<-diag(x=4)
identitytmatrixdiagonalsareones
'''
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1
'''
identitytmatrixdiagonalsareonesincorrect[c(1,2,3,4),c(1,2,3,4)]<-c(2,3,5,-1) #RM:  likewise same answer identitytmatrixdiagonalsareonesincorrect[c(1:4),c(1:4)]<-c(2,3,5,-1)
identitytmatrixdiagonalsareonesincorrect
'''
     [,1] [,2] [,3] [,4]
[1,]    2    2    2    2
[2,]    3    3    3    3
[3,]    5    5    5    5
[4,]   -1   -1   -1   -1
'''
identitytmatrixdiagonalsareones[1,1]<-2
identitytmatrixdiagonalsareones[2,2]<-3
identitytmatrixdiagonalsareones[3,3]<-5
identitytmatrixdiagonalsareones[4,4]<--1
identitytmatrixdiagonalsareones
'''
     [,1] [,2] [,3] [,4]
[1,]    2    0    0    0
[2,]    0    3    0    0
[3,]    0    0    5    0
[4,]    0    0    0   -1
'''