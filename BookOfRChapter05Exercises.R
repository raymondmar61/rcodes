#Exercise 5.1
#a Create a list
twentynumberssequence<-seq(from=-4,to=4,length.out=20)
twentynumberssequence  
'''
 [1] -4.0000000 -3.5789474 -3.1578947 -2.7368421 -2.3157895
 [6] -1.8947368 -1.4736842 -1.0526316 -0.6315789 -0.2105263
[11]  0.2105263  0.6315789  1.0526316  1.4736842  1.8947368
[16]  2.3157895  2.7368421  3.1578947  3.5789474  4.0000000
'''
logicalmatrix<-matrix(c(F,T,T,T,F,T,T,F,F),nrow=3,ncol=3,byrow=FALSE)
logicalmatrix
'''
      [,1]  [,2]  [,3]
[1,] FALSE  TRUE  TRUE
[2,]  TRUE FALSE FALSE
[3,]  TRUE  TRUE FALSE
'''
charactervector<-c("don","quixote")
charactervector #print "don"     "quixote"
factorvector<-factor(c("LOW","MED","LOW","MED","MED","HIGH"))
factorvector
'''
[1] LOW  MED  LOW  MED  MED  HIGH
Levels: HIGH LOW MED
'''
listobjects<-list(twentynumberssequence,logicalmatrix,charactervector,factorvector)
listobjects
'''
[[1]]
 [1] -4.0000000 -3.5789474 -3.1578947 -2.7368421 -2.3157895
 [6] -1.8947368 -1.4736842 -1.0526316 -0.6315789 -0.2105263
[11]  0.2105263  0.6315789  1.0526316  1.4736842  1.8947368
[16]  2.3157895  2.7368421  3.1578947  3.5789474  4.0000000

[[2]]
      [,1]  [,2]  [,3]
[1,] FALSE  TRUE  TRUE
[2,]  TRUE FALSE FALSE
[3,]  TRUE  TRUE FALSE

[[3]]
[1] "don"     "quixote"

[[4]]
[1] LOW  MED  LOW  MED  MED  HIGH
Levels: HIGH LOW MED
'''
#i Extract row elements 2 and 1 of columns 2 and 3 from logicalmatrix
extractrowelements2andcolumnelementss2and3<-listobjects[[2]][2:1,2:3]
extractrowelements2andcolumnelementss2and3
'''
      [,1]  [,2]
[1,] FALSE FALSE
[2,]  TRUE  TRUE
'''
#ii Overwrite quixote with Quixote and don with Don.  Concatenate the statement exactly.
listobjects[[3]]<-paste(sub(pattern="quixote",replacement="Quixote",x=listobjects[[3]]))
listobjects[[3]]<-paste(sub(pattern="don",replacement="Don",x=listobjects[[3]]))
listobjects[[3]] #print "Don"     "Quixote"
incorrectsolution<-cat("\"Windmills! ATTACK!\"\n\t-\\",listobjects[[3]],"/-")
'''
"Windmills! ATTACK!"
	-\ Don Quixote /-
'''
correctsolutionstar<-cat("\"Windmills! ATTACK!\"\n\t-\\",listobjects[[3]][1]," ",listobjects[[3]][2],"/-",sep="")
'''
"Windmills! ATTACK!"
	-\Don Quixote/-
'''
correctsolutionstar<-cat("\"Windmills! ATTACK!\"\n\t-\\",listobjects[[3]][1]," ",listobjects[[3]][2],"/-",sep="*")
'''
"Windmills! ATTACK!"
	-\*Don* *Quixote*/-
'''
#iii Obtained all values from twentynumberssequence greater than 1
greaterthanone<-listobjects[[1]]>1
greaterthanone
'''
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[10] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[19]  TRUE  TRUE
'''
greaterthanonevalues<-listobjects[[1]]
greaterthanonevalues[greaterthanonevalues>1]
'''
[1] 1.052632 1.473684 1.894737 2.315789 2.736842 3.157895
[7] 3.578947 4.000000
'''
greaterthanonevaluesofficialsolution<-listobjects[[1]][listobjects[[1]]>1]
greaterthanonevaluesofficialsolution
'''
[1] 1.052632 1.473684 1.894737 2.315789 2.736842 3.157895
[7] 3.578947 4.000000
'''
#iv Use which to get the indexes from factorvector equal to MED
mediumfactorvector<-which(x=listobjects[[4]]=="MED")
mediumfactorvector #print 2 4 5
#b Create a new list from (a) as a component.  RM:  oldlist refers to listobjects' twentynumberssequence, logicalmatrix, and charactervector combined together as a sublists twentynumberssequence, logicalmatrix, and charactervector inside mainlist named oldlist.
componentlist<-list(facs=factorvector,nums=c(3,2.1,3.3,4,1.5,4.9),oldlist=listobjects[1:3])
componentlist
'''
$facs
[1] LOW  MED  LOW  MED  MED  HIGH
Levels: HIGH LOW MED

$nums
[1] 3.0 2.1 3.3 4.0 1.5 4.9

$oldlist
$oldlist[[1]]
 [1] -4.0000000 -3.5789474 -3.1578947 -2.7368421 -2.3157895
 [6] -1.8947368 -1.4736842 -1.0526316 -0.6315789 -0.2105263
[11]  0.2105263  0.6315789  1.0526316  1.4736842  1.8947368
[16]  2.3157895  2.7368421  3.1578947  3.5789474  4.0000000

$oldlist[[2]]
      [,1]  [,2]  [,3]
[1,] FALSE  TRUE  TRUE
[2,]  TRUE FALSE FALSE
[3,]  TRUE  TRUE FALSE

$oldlist[[3]]
[1] "Don"     "Quixote"
'''
#i Extract elements in facts corresponding to elemenets in nums greater than or equal to 3
componentlist$nums #print 3.0 2.1 3.3 4.0 1.5 4.9
truefalsecorrespond<-componentlist$nums>=3 #print TRUE FALSE  TRUE  TRUE FALSE  TRUE
componentlist$facs[truefalsecorrespond]
'''
[1] LOW  LOW  MED  HIGH
Levels: HIGH LOW MED
'''
#ii Add a new object named flags which is the logical vector length six obtained as twofold repetition third column from oldlist
logicalvectorthirdcolumnrepeattwice<-rep(x=componentlist$oldlist[[2]][,3],times=2)
componentlist$flags<-logicalvectorthirdcolumnrepeattwice
componentlist
'''
$facs
[1] LOW  MED  LOW  MED  MED  HIGH
Levels: HIGH LOW MED

$nums
[1] 3.0 2.1 3.3 4.0 1.5 4.9

$oldlist
$oldlist[[1]]
 [1] -4.0000000 -3.5789474 -3.1578947 -2.7368421 -2.3157895
 [6] -1.8947368 -1.4736842 -1.0526316 -0.6315789 -0.2105263
[11]  0.2105263  0.6315789  1.0526316  1.4736842  1.8947368
[16]  2.3157895  2.7368421  3.1578947  3.5789474  4.0000000

$oldlist[[2]]
      [,1]  [,2]  [,3]
[1,] FALSE  TRUE  TRUE
[2,]  TRUE FALSE FALSE
[3,]  TRUE  TRUE FALSE

$oldlist[[3]]
[1] "Don"     "Quixote"


$flags
[1]  TRUE FALSE FALSE  TRUE FALSE FALSE
'''
#iii Use flags and logical negation operator ! to extract entries from num corresponding to FALSE
!componentlist$flags #print FALSE  TRUE  TRUE FALSE  TRUE  TRUE
negationoperatorextractnums<-componentlist$nums[!componentlist$flags]
negationoperatorextractnums #print 2.1 3.3 1.5 4.9
#iv componentlist$oldlist[[3]] is Don Quixote one string
componentlist$oldlist[[3]] #print "Don"     "Quixote"
length(componentlist$oldlist[[3]]) #print 2
donquixoteonestringincorrect<-cat(componentlist$oldlist[[3]][1],componentlist$oldlist[[3]][2],sep=" ") #print Don Quixote
componentlist$oldlist[[3]]<-donquixoteonestringincorrect
componentlist #RM:  componentlist$oldlist[[3]] is deleted
componentlist$oldlist[[3]]<-paste(componentlist$oldlist[[3]],"love one string")
componentlist$oldlist[[3]] #print "Don love one string"     "Quixote love one string"
dididelete<-componentlist$oldlist[[3]][-which(x=componentlist$oldlist[[3]]=="Don")]
dididelete #print "Quixote"
componentlist$oldlist[[3]]<-componentlist$oldlist[[3]][-which(x=componentlist$oldlist[[3]]=="Don")]
componentlist$oldlist[[3]] #print "Quixote"
componentlist$oldlist[[3]]<-paste(sub(pattern="Quixote",replacement="Don Quixote",x=componentlist$oldlist[[3]]))
componentlist$oldlist[[3]] #print "Don Quixote"
#official solution
componentlist$oldlist[[3]]<-"Don Quixote"


