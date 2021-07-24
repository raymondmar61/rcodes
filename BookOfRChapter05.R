#Separate each list element by a comma
listvariable<-list(matrix(data=1:4,nrow=2,ncol=2),c(T,F,T,T),"hello")
listvariable
'''
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
[1]  TRUE FALSE  TRUE  TRUE

[[3]]
[1] "hello"
'''
length(x=listvariable) #print 3
#member reference to retrieve a component from a list.  Like Python indexing.
listvariable[[1]]
'''
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4
'''
listvariable[[3]]
'''
[[1]]
[1] "hello"
'''
listvariable[[1]]+5.5
'''
     [,1] [,2]
[1,]  6.5  8.5
[2,]  7.5  9.5
'''
listvariable[[1]][1,2] #print 3
listvariable[[1]][2,] #print [1] 2 4
listvariable[[1]][,1] #print [1] 1 2
cat(listvariable[[3]]," you!") #print hello you!
listvariable[[3]]<-paste(listvariable[[3]],"replace string insert string")
listvariable
'''
[[1]]
     [,1] [,2]
[1,]    1    3
[2,]    2    4

[[2]]
[1]  TRUE FALSE  TRUE  TRUE

[[3]]
[1] "hello replace string insert string"
'''
#list slicing
secondthirdcomponent<-listvariable[c(2,3)]
secondthirdcomponent
'''
[[1]]
[1]  TRUE FALSE  TRUE  TRUE

[[2]]
[1] "hello replace string insert string"
'''
names(listvariable)<-c("matrixlist","logicallist","stringlist")
listvariable
'''
$matrixlist
     [,1] [,2]
[1,]    1    3
[2,]    2    4

$logicallist
[1]  TRUE FALSE  TRUE  TRUE

$stringlist
[1] "hello replace string insert string"
'''
listvariable["stringlist"]
'''
$stringlist
[1] "hello replace string insert string"
'''
namecomponentscreatinglist<-list(lociallisttwo=c(listvariable[[2]],T,T,T,F),greeting="g'day mate",multiplytwo=listvariable$matrixlist*2)
namecomponentscreatinglist
'''
$lociallisttwo
[1]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE

$greeting
[1] "g\'day mate"

$multiplytwo
     [,1] [,2]
[1,]    2    6
[2,]    4    8
'''
names(namecomponentscreatinglist) #print [1] "lociallisttwo" "greeting"      "multiplytwo"  
#Add components to an existing list using the dollar operator and a new name.  Nesting.  Define a fourth component to the namecomponentscreatinglist called nestedlistuselistvariable.
namecomponentscreatinglist$nestedlistuselistvariable<-listvariable
namecomponentscreatinglist
'''
$lociallisttwo
[1]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE

$greeting
[1] "g\'day mate"

$multiplytwo
     [,1] [,2]
[1,]    2    6
[2,]    4    8

$nestedlistuselistvariable
$nestedlistuselistvariable$matrixlist
     [,1] [,2]
[1,]    1    3
[2,]    2    4

$nestedlistuselistvariable$logicallist
[1]  TRUE FALSE  TRUE  TRUE

$nestedlistuselistvariable$stringlist
[1] "hello replace string insert string"
'''
namecomponentscreatinglist$nestedlistuselistvariable$logicallist[1:3] #print [1]  TRUE FALSE  TRUE
namecomponentscreatinglist[[4]][[2]][1:3] #print [1]  TRUE FALSE  TRUE
namecomponentscreatinglist[[4]]$logicallist[1:3] #print [1]  TRUE FALSE  TRUE
namecomponentscreatinglist[[4]]
'''
$matrixlist
     [,1] [,2]
[1,]    1    3
[2,]    2    4

$logicallist
[1]  TRUE FALSE  TRUE  TRUE

$stringlist
[1] "hello replace string insert string"
'''
#A data frame is a collection of observations for one or more variables.  All vectors are equal length.
mydataframe<-data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")))
mydataframe
'''
  person age sex
1  Peter  42   M
2   Lois  40   F
3    Meg  17   F
4  Chris  14   M
5 Stewie   1   M
'''
#Each row is a record.  Each column is a variable.
mydataframe[4,1]
'''
[1] Chris
Levels: Chris Lois Meg Peter Stewie
'''
mydataframe[3:5,3]
'''
[1] F M M
Levels: F M
'''
mydataframe[,c(3,1)] #column 3 and then column 1
'''
  sex person
1   M  Peter
2   F   Lois
3   F    Meg
4   M  Chris
5   M Stewie
'''
mydataframe$age #print 42 40 17 14  1
mydataframe$age[2] #print 40
nrow(mydataframe) #print 5
ncol(mydataframe) #print 3
dim(mydataframe) #print 5 3
mydataframe<-data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")),stringsAsFactors = FALSE)
mydataframe
'''
  person age sex
1  Peter  42   M
2   Lois  40   F
3    Meg  17   F
4  Chris  14   M
5 Stewie   1   M
'''
mydataframe$person #print [1] "Peter"  "Lois"   "Meg"    "Chris"  "Stewie"
newrecord<-data.frame(person="Brian",age=7,sex=factor("M",levels=levels(mydataframe$sex))) #Extract the levels of the existing factor variable using levels for a factor.  RM:  I don't understand.
newrecord
'''
  person age sex
1  Brian   7   M
'''
mydataframe<-rbind(mydataframe,newrecord)
mydataframe
'''
  person age sex
1  Peter  42   M
2   Lois  40   F
3    Meg  17   F
4  Chris  14   M
5 Stewie   1   M
6  Brian   7   M
'''
addcolumnfunny<-c("High","High","Low","Med","High","Med")
funny<-factor(x=addcolumnfunny,levels=c("Low","Med","High")) #turn addcolumnfunny into a factor named funny
mydataframe<-cbind(mydataframe,funny)
mydataframe
'''
  person age sex funny
1  Peter  42   M  High
2   Lois  40   F  High
3    Meg  17   F   Low
4  Chris  14   M   Med
5 Stewie   1   M  High
6  Brian   7   M   Med
'''
mydataframe$addnewcolumnageinmonths<-mydataframe$age*12 #new column addnewcolumnageinmonths with the dollar operator and assign it the vector age multiplied by 12
mydataframe
'''
  person age sex funny addnewcolumnageinmonths
1  Peter  42   M  High                     504
2   Lois  40   F  High                     480
3    Meg  17   F   Low                     204
4  Chris  14   M   Med                     168
5 Stewie   1   M  High                      12
6  Brian   7   M   Med                      84
'''
mydataframe$sex=="M" #print TRUE FALSE FALSE  TRUE  TRUE  TRUE
mydataframe[mydataframe$sex=="M",]
'''
  person age sex funny addnewcolumnageinmonths
1  Peter  42   M  High                     504
4  Chris  14   M   Med                     168
5 Stewie   1   M  High                      12
6  Brian   7   M   Med                      84
'''
mydataframe[mydataframe$sex=="M",-3]
'''
  person age funny addnewcolumnageinmonths
1  Peter  42  High                     504
4  Chris  14   Med                     168
5 Stewie   1  High                      12
6  Brian   7   Med                      84
'''
mydataframe[mydataframe$sex=="M",1] #print "Peter"  "Chris"  "Stewie" "Brian" 
mydataframe[mydataframe$sex=="M",-2]
'''
  person sex funny addnewcolumnageinmonths
1  Peter   M  High                     504
4  Chris   M   Med                     168
5 Stewie   M  High                      12
6  Brian   M   Med                      84
'''
mydataframe[mydataframe$sex=="M",c("person","age","funny")]
'''
  person age funny
1  Peter  42  High
4  Chris  14   Med
5 Stewie   1  High
6  Brian   7   Med
'''
familyguygreaterthan40orhighfunny<-mydataframe[mydataframe$age>40|mydataframe$funny=="High",]
familyguygreaterthan40orhighfunny
'''
  person age sex funny addnewcolumnageinmonths
1  Peter  42   M  High                     504
2   Lois  40   F  High                     480
5 Stewie   1   M  High                      12
'''