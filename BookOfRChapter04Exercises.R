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

#Exercise 4.4
#a Recreate the output
all26letters<-"The quick brown fox\n \tjumped over\n \t\tthe lazy dogs"
all26letters #print "The quick brown fox\n \tjumped over\n \t\tthe lazy dogs"
all26letterscat<-cat("The quck brown fox \n \tjumped over\n \t\tthe lazy dogs")
'''
The quck brown fox 
 	jumped over
 		the lazy dogs
'''
all26letterscat #print NULL
cat(all26letters)
'''
The quick brown fox
 	jumped over
 		thelazy dogs
'''
#b Return the following string
num1<-4
num2<-0.75
cat("The result of multiplying",num1,"by",num2,"is",num1*num2) #print The result of multiplying 4 by 0.75 is 3
#c Replace tdavies with rmar
originalpath<-"/Users/tdavies/Documents/RBook/"
sub(pattern="tdavies",replacement="rmar",x=originalpath) #print "/Users/rmar/Documents/RBook/"
#d replace all wood with metal in newstring
chuckstring<-"How much wood could a woodchuck chuck"
newstring<-"if a woodchuck could chuck wood"
metalnewstring<-gsub(pattern = "wood",replacement = "metal",x=newstring)
metalnewstring #print "if a metalchuck could chuck metal"
#e packstring<-"Two 6-packs for $12.99"
packstring<-"Two 6-packs for $12.99"
#confirm between the fifth character and tenth character is 6-pack
substr(x=packstring,start=5,stop=10) #print "6-pack"
#Change the price to $10.99
sub(pattern="12.99",replacement="10.99",x=packstring) #print "Two 6-packs for $10.99"

#Exercise 4.5
#New Zeland government political parties National, Labour, Greens, Maori, Other.  Asked 20 New Zealanders.
#12 males, 8 females.  1, 5, 6, 7, 12, 14, 15, 16 are females.
#1, 4, 12, 15, 16 are Labour.  6, 9, 11 are Greens. 10, 20 are Other, Rest are National.
#a Create two character vectors sex zelanderssex and party as zelandersparty.  RM:  added third character vector all possible poltical parties as zelanderspartyfactor and fourth character vector all possible sexes.
zealanderssex<-c("F","M","M","M","F","M","F","M","M","M","M","F","M","F","M","F","M","M","M","M")
zealanderssex
'''
 [1] "F" "M" "M" "M" "F" "M" "F" "M" "M" "M" "M" "F" "M" "F"
[15] "M" "F" "M" "M" "M" "M"
'''
zealanderssexfactor<-c("M","F")
zealanderssexfactor #print "M" "F"
zealandersparty<-c("Labour","National","National","Labour","National","Greens","National","National","Greens","Other","Greens","Labour","National","National","Labour","Labour","National","National","Labour","Other")
zealandersparty
'''
 [1] "Labour"   "National" "National" "Labour"   "National"
 [6] "Greens"   "National" "National" "Greens"   "Other"   
[11] "Greens"   "Labour"   "National" "National" "Labour"  
[16] "Labour"   "National" "National" "Labour"   "Other" '''
zealanderspartyfactor<-c("National","Labour","Greens","Maori","Other") #print zelanderspartyfactor<-c("National","Labour","Greens","Maori","Other")
zealanderspartyfactor #print "National" "Labour"   "Greens"   "Maori"    "Other"  
#b Create factor vectors based on zealanderssex and zealandersparty
factor(x=zealanderssex)
'''
 [1] F M M M F M F M M M M F M F M F M M M M
Levels: F M
'''
factor(x=zealandersparty)
'''
 [1] Labour   National National Labour   National Greens  
 [7] National National Greens   Other    Greens   Labour  
[13] National National Labour   Labour   National National
[19] Labour   Other   
Levels: Greens Labour National Other
'''
factor(x=zealanderssex)
'''
 [1] F M M M F M F M M M M F M F M F M M M M
Levels: F M
'''
factor(x=zealanderssex,levels=zealanderssexfactor,ordered=TRUE)
'''
 [1] F M M M F M F M M M M F M F M F M M M M
Levels: M < F
'''
factor(x=zealandersparty)
'''
 [1] Labour   National National Labour   National Greens  
 [7] National National Greens   Other    Greens   Labour  
[13] National National Labour   Labour   National National
[19] Labour   Other   
Levels: Greens Labour National Other
'''
factor(x=zealandersparty,levels=zealanderspartyfactor,ordered=TRUE)
'''
 [1] Labour   National National Labour   National Greens  
 [7] National National Greens   Other    Greens   Labour  
[13] National National Labour   Labour   National National
[19] Labour   Other   
Levels: National < Labour < Greens < Maori < Other
'''
factor(x=zealandersparty,levels=zealanderspartyfactor,ordered=FALSE)
'''
 [1] Labour   National National Labour   National Greens  
 [7] National National Greens   Other    Greens   Labour  
[13] National National Labour   Labour   National National
[19] Labour   Other   
Levels: National Labour Greens Maori Other
#official solution: Should not use ordered=TRUE, there is no natural or low-to-high ordering here. Factor levels are arranged in the order specified in the levels argument.
'''
#c Return a subset
zealandersmaleindex<-c(zealanderssex=="M")
zealandersmaleindex
'''
 [1] FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[10]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[19]  TRUE  TRUE
'''
zealandersparty[zealandersmaleindex]
'''
 [1] "National" "National" "Labour"   "Greens"   "National"
 [6] "Greens"   "Other"    "Greens"   "National" "Labour"  
[11] "National" "National" "Labour"   "Other"   
'''
zealandersnationalindex<-c(zealandersparty=="National")
zealandersnationalindex
'''
 [1] FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE
[10] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE
[19] FALSE FALSE
'''
zealanderssex[zealandersnationalindex] #print "M" "M" "F" "F" "M" "M" "F" "M" "M"
#d Add six more New Zealanders
sixmorezealanderssex<-c("M","M","F","F","F","M")
sixmorezealandersparty<-c("National","Maori","Maori","Labour","Greens","Labour")
zealanderssexfactor<-factor(x=zealanderssex)
zealanderssexfactor
'''
[1] F M M M F M F M M M M F M F M F M M M M
Levels: F M
'''
sixmorezealanderssexfactor<-factor(x=sixmorezealanderssex)
sixmorezealanderssexfactor
'''
[1] M M F F F M
Levels: F M
'''
zealanderssexfactorlevel<-levels(zealanderssexfactor)
zealanderssexfactorlevel #print "F" "M"
zealanderssexupdate<-factor(x=zealanderssexfactorlevel[c(zealanderssexfactor,sixmorezealanderssexfactor)])
zealanderssexupdate
'''
[1] F M M M F M F M M M M F M F M F M M M M M M F F F M
Levels: F M
'''
zealanderspartyfactor<-factor(x=zealandersparty)
zealanderspartyfactor
'''
 [1] Labour   National National Labour   National Greens  
 [7] National National Greens   Other    Greens   Labour  
[13] National National Labour   Labour   National National
[19] Labour   Other   
Levels: Greens Labour National Other
'''
sixmorezealanderspartyfactor<-factor(x=sixmorezealandersparty)
sixmorezealanderspartyfactor
'''
[1] National Maori    Maori    Labour   Greens   Labour  
Levels: Greens Labour Maori National
'''
zealanderspartyfactorlevel<-levels(zealanderspartyfactor)
zealanderspartyfactorlevel #print "Greens"   "Labour"   "National" "Other"  
zealanderspartyupdate<-factor(x=zealanderspartyfactorlevel[c(zealanderspartyfactor,sixmorezealanderspartyfactor)])
zealanderspartyupdate
'''
 [1] Labour   National National Labour   National Greens  
 [7] National National Greens   Other    Greens   Labour  
[13] National National Labour   Labour   National National
[19] Labour   Other    Other    National National Labour  
[25] Greens   Labour  
Levels: Greens Labour National Other
'''
#e Create a factor with level of confidence Low percentage 0-29, moderate percentage 30-69, high percentage for 70-11.  Percentages Labour wins more seats than National in the next election.
percentages<-c(93,55,29,100,52,84,56,0,33,52,35,53,55,46, 40,40,56,45,64,31,10,29,40,95,18,61)
percentages
'''
 [1]  93  55  29 100  52  84  56   0  33  52  35  53  55  46
[15]  40  40  56  45  64  31  10  29  40  95  18  61
'''
bins<-c(0,30,70,100)
labelsreadeasier<-c("Low","Moderate","High")
cut(x=percentages,breaks=bins,right=TRUE,include.lowest=TRUE)
'''
 [1] (70,100] (30,70]  [0,30]   (70,100] (30,70]  (70,100]
 [7] (30,70]  [0,30]   (30,70]  (30,70]  (30,70]  (30,70] 
[13] (30,70]  (30,70]  (30,70]  (30,70]  (30,70]  (30,70] 
[19] (30,70]  (30,70]  [0,30]   [0,30]   (30,70]  (70,100]
[25] [0,30]   (30,70]
Levels: [0,30] (30,70] (70,100]
#RM:  upper end inclusive, lower end exclusive.
'''
cut(x=percentages,breaks=bins,right=FALSE,include.lowest=TRUE,labels=labelsreadeasier)
'''
 [1] High     Moderate Low      High     Moderate High    
 [7] Moderate Low      Moderate Moderate Moderate Moderate
[13] Moderate Moderate Moderate Moderate Moderate Moderate
[19] Moderate Moderate Low      Low      Moderate High    
[25] Low      Moderate
Levels: Low Moderate High
'''
#f Extract percentages who are Labour and National.
labournational<-c(zealanderspartyupdate=="Labour"|zealanderspartyupdate=="National")
percentages[labournational]
'''
 [1]  93  55  29 100  52  56   0  53  55  46  40  40  56  45
[15]  64  29  40  95  61
'''