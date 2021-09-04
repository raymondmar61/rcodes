#Exercises 2.1
#a Verify 29.50556
(6*(2.3)+42)/3^(4.2-3.62) #return 29.50556
#b Square -4 and add 2
-4^2+2  #RM:  Answer should be 18 because (-4)*(-4) is +16.
#c Calculate the square root of half of the average of the number 25.2, 15, 16.44, 15.3, 18.6
sqrt(x=0.5*((25.2+15+16.44+15.3+18.6)/5))
#or
fivenumbers<-(25.2+15+16.44+15.3+18.6)
fivenumbers #print 90.54
mean(fivenumbers) #return 90.54 RM:  I'm doing mean incorrectly?
mean(fivenumbers)*0.50 #return 45.27
squareroothalf<-mean(fivenumbers)*0.50
sqrt(x=squareroothalf) #return 6.728298 which is incorrect
#d log(e) 0.3
log(x=0.3) #-1.203973
#e exponential function 0.3
exp(x=log(x=0.3)) #return 0.3
exp(x=-1.203973) #return -1.203973
#f Print how R returns -0.00000000423546322
#return -4.235463e-09

#Exercises 2.2
#a Create an object
createobject<-(3^2)*(4^(1/8))
#b Divide the answer in a by 2.33
dividecreateobject<-createobject/2.33
dividecreateobject #return 4.593504
#c Create a new object
createnewobject<-(-8.2e-13) #scientific notation -8.2X10^-13
createnewobject #return -8.2e-13
#d Multiply answer in b by answer in c
dividecreateobject*createnewobject #return -3.766673e-12

#Exercises 2.3
#a Create and store a sequence of values from 5 to −11 that progresses in steps of 0.3.
fivetonegativeeleven<-seq(from=5,to=-11,by=-0.3)
fivetonegativeeleven
''' [1]   5.0   4.7   4.4   4.1   3.8   3.5   3.2   2.9   2.6
[10]   2.3   2.0   1.7   1.4   1.1   0.8   0.5   0.2  -0.1
[19]  -0.4  -0.7  -1.0  -1.3  -1.6  -1.9  -2.2  -2.5  -2.8
[28]  -3.1  -3.4  -3.7  -4.0  -4.3  -4.6  -4.9  -5.2  -5.5
[37]  -5.8  -6.1  -6.4  -6.7  -7.0  -7.3  -7.6  -7.9  -8.2
[46]  -8.5  -8.8  -9.1  -9.4  -9.7 -10.0 -10.3 -10.6 -10.9
'''
#b Overwrite the object from (a) using the same sequence with the order reversed.  RM:  Reverse the sort order.
fivetonegativeelevenreverse<-sort(x=fivetonegativeeleven, decreasing=FALSE)
fivetonegativeelevenreverse
'''
 [1] -10.9 -10.6 -10.3 -10.0  -9.7  -9.4  -9.1  -8.8  -8.5
[10]  -8.2  -7.9  -7.6  -7.3  -7.0  -6.7  -6.4  -6.1  -5.8
[19]  -5.5  -5.2  -4.9  -4.6  -4.3  -4.0  -3.7  -3.4  -3.1
[28]  -2.8  -2.5  -2.2  -1.9  -1.6  -1.3  -1.0  -0.7  -0.4
[37]  -0.1   0.2   0.5   0.8   1.1   1.4   1.7   2.0   2.3
[46]   2.6   2.9   3.2   3.5   3.8   4.1   4.4   4.7   5.0
'''
#c Repeat vector twice which each element repeated 10 times.  Sort largest to smallest
repeatvector<-c(-1,3,-5,7,-9)
rep(x=repeatvector,times=2) #print -1  3 -5  7 -9 -1  3 -5  7 -9
rep(x=repeatvector,times=2,each=10)
'''
  [1] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1  3  3  3  3  3  3  3  3  3
 [20]  3 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5  7  7  7  7  7  7  7  7
 [39]  7  7 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9 -1 -1 -1 -1 -1 -1 -1
 [58] -1 -1 -1  3  3  3  3  3  3  3  3  3  3 -5 -5 -5 -5 -5 -5
 [77] -5 -5 -5 -5  7  7  7  7  7  7  7  7  7  7 -9 -9 -9 -9 -9
 [96] -9 -9 -9 -9 -9
 '''
sort(rep(x=repeatvector,times=2,each=10),decreasing=TRUE)
'''
  [1]  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7
 [20]  7  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3  3
 [39]  3  3 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
 [58] -1 -1 -1 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5 -5
 [77] -5 -5 -5 -5 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9 -9
 [96] -9 -9 -9 -9 -9
 '''
vectorlengthinc<-length(sort(rep(x=repeatvector,times=2,each=10),decreasing=TRUE))
#d Create and store the following four vectors.  #RM:  solution says store the four vectors in one vector
integersequence<-6:12
integersequence #print 6  7  8  9 10 11 12 
repeatthreetimes<-rep(x=5.3,times=3)
repeatthreetimes #print 5.3 5.3 5.3
negativethree<--0.3
negativethree #print -0.3
sequenceninevalues<-seq(from=102,to=vectorlengthinc, length.out=9)
sequenceninevalues
'''
[1] 102.00 101.75 101.50 101.25 101.00 100.75 100.50 100.25
[9] 100.00
'''
onevector<-c(integersequence,repeatthreetimes,negativethree,sequenceninevalues)
#e length of onevector is 20
length(onevector) #return 20

#Exercises 2.4
#a Create and store the following three vectors.  #RM:  solution says store the four vectors in one vector
sequencelengthfive<-seq(from=3,to=6,length.out=5)
sequencelengthfive #print 3.00 3.75 4.50 5.25 6.00
inputvector<-c(2,-5.1,-33)
repeattwotimes<-rep(x=inputvector,times=2)
repeattwotimes #print 2.0  -5.1 -33.0   2.0  -5.1 -33.0
avalue<-(7/42)+2
avalue #print 2.166667
onevector2<-c(sequencelengthfive,repeattwotimes,avalue)
onevector2
'''
 [1]   3.000000   3.750000   4.500000   5.250000   6.000000
 [6]   2.000000  -5.100000 -33.000000   2.000000  -5.100000
[11] -33.000000   2.166667
'''
#b Extract the first and last elements in onevector2 storing them as a new object
onevector2firstlast<-c(onevector2[+1],onevector2[length(onevector2)])
onevector2firstlast #print 3.000000 2.166667
#c Extract all elements except the first and last elements in onevector2 storing them as a new object
dumbvariable<-length(onevector2)-1
dumbvariable #print 11
#RM:  onevector2[2:length(onevector2)-1] returns incorrect answer
onevector2exceptfirstlast<-c(onevector2[2:dumbvariable])
onevector2exceptfirstlast
'''
 [1]   3.75   4.50   5.25   6.00   2.00  -5.10 -33.00   2.00
 [9]  -5.10 -33.00
 '''
#d Use b and c to reconstruct a
ananswertod<-c(onevector2firstlast[1],onevector2exceptfirstlast,onevector2firstlast[2])
ananswertod
'''
 [1]   3.000000   3.750000   4.500000   5.250000   6.000000
 [6]   2.000000  -5.100000 -33.000000   2.000000  -5.100000
[11] -33.000000   2.166667
'''
#e Sort a smallest to largest
sort(x=onevector2,decreasing=FALSE)
'''
 [1] -33.000000 -33.000000  -5.100000  -5.100000   2.000000
 [6]   2.000000   2.166667   3.000000   3.750000   4.500000
[11]   5.250000   6.000000
'''
#f Reverse e as an index vector and confirm f is identical to e using sort with decreasing=TRUE
indexvectore<-sort(x=onevector2,decreasing=FALSE)
indexvectore[length(indexvectore):1]
'''
 [1]   6.000000   5.250000   4.500000   3.750000   3.000000
 [6]   2.166667   2.000000   2.000000  -5.100000  -5.100000
[11] -33.000000 -33.000000
'''
indexvectore[length(indexvectore):1]==sort(x=onevector2,decreasing=TRUE) #return TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#g Create a vector from c repeating the third element of c three times, the sixth element four times, and the last element one time.
onevector2exceptfirstlast
'''
 [1]   3.75   4.50   5.25   6.00   2.00  -5.10 -33.00   2.00
 [9]  -5.10 -33.00
 '''
repeatsvector<-c(rep(x=onevector2[3],times=3),rep(x=onevector2[6],times=4),rep(x=onevector2[length(onevector2)],times=1))
repeatsvector
'''
[1] 4.500000 4.500000 4.500000 2.000000 2.000000 2.000000
[7] 2.000000 2.166667
'''
#h Copy e as a new vector assignment.  Overwrite the first, fifth, sixth, seventh, and the last element with 99 to 95 inclusive respectively.
hnewvectorassignment<-sort(x=onevector2,decreasing=FALSE)
hnewvectorassignment
'''
 [1] -33.000000 -33.000000  -5.100000  -5.100000   2.000000
 [6]   2.000000   2.166667   3.000000   3.750000   4.500000
[11]   5.250000   6.000000
'''
nintyninenintyfive<-c(99:95)
nintyninenintyfive #print 99 98 97 96 95
hnewvectorassignment[c(1,5,6,7,length(hnewvectorassignment))]<-nintyninenintyfive
hnewvectorassignment
'''
 [1]  99.00 -33.00  -5.10  -5.10  98.00  97.00  96.00   3.00
 [9]   3.75   4.50   5.25  95.00
 '''