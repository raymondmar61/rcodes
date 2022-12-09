#Introduction to Data Science with R - Data Analysis Part 1 [32o0DnuRjfg]

#Set Working Directory Session-->Set Working Directory-->Choose Directory.  Return > setwd("~/rstudio").  Avoid typing full file paths.
train <- read.csv("train.csv",header=TRUE)
test <- read.csv("test.csv",header=TRUE)
testsurvived <- data.frame(Survived = rep("None",nrow(test)),test[,]) #Create variable survived to test.csv to combine data sets.  rep function is Replicate Elements or repeat.  RM:  add survived column to test.csv with value None for all the rows in test variable which is test.csv.  test[,] means use all rows and all columns; there is no specific row and column,n [rowindex,columnindex].  Survived must be capitalized because train file Survived is capitalized.
testsurvived[1:5,]
'''
Survived PassengerId Pclass                                         Name    Sex  Age SibSp Parch  Ticket    Fare Cabin Embarked
1     None         892      3                             Kelly, Mr. James   male 34.5     0     0  330911  7.8292              Q
2     None         893      3             Wilkes, Mrs. James (Ellen Needs) female 47.0     1     0  363272  7.0000              S
3     None         894      2                    Myles, Mr. Thomas Francis   male 62.0     0     0  240276  9.6875              Q
4     None         895      3                             Wirz, Mr. Albert   male 27.0     0     0  315154  8.6625              S
5     None         896      3 Hirvonen, Mrs. Alexander (Helga E Lindqvist) female 22.0     1     1 3101298 12.2875              S
'''
combinedata <- rbind(train, testsurvived) #Combine data sets append data sets.  rbind function is Row Bind
combinedata[1:5,]  #Pclass 1 upper class, 2 middle class, 3 lower class.  SibSp is number of siblings/spouses aboard.  Parch is number of parents/children aboard.  Ticket is ticket number.  Embarked is port of Embarkation C Cherborg, Q Queenstown S South Hampton, and blank.
'''
  PassengerId Survived Pclass                                                Name    Sex Age SibSp Parch           Ticket    Fare
1           1        0      3                             Braund, Mr. Owen Harris   male  22     1     0        A/5 21171  7.2500
2           2        1      1 Cumings, Mrs. John Bradley (Florence Briggs Thayer) female  38     1     0         PC 17599 71.2833
3           3        1      3                              Heikkinen, Miss. Laina female  26     0     0 STON/O2. 3101282  7.9250
4           4        1      1        Futrelle, Mrs. Jacques Heath (Lily May Peel) female  35     1     0           113803 53.1000
5           5        0      3                            Allen, Mr. William Henry   male  35     0     0           373450  8.0500
  Cabin Embarked
1              S
2   C85        C
3              S
4  C123        S
5              S
'''
str(combinedata) #column's data type, number of columns numbers, number of rows numbers
'''
'data.frame':	1309 obs. of  12 variables:
 $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...
 $ Survived   : chr  "0" "1" "1" "1" ...
 $ Pclass     : int  3 1 3 1 3 3 1 3 3 2 ...
 $ Name       : Factor w/ 1307 levels "Abbing, Mr. Anthony",..: 109 191 358 277 16 559 520 629 417 581 ...
 $ Sex        : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 2 1 1 ...
 $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...
 $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...
 $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...
 $ Ticket     : Factor w/ 929 levels "110152","110413",..: 524 597 670 50 473 276 86 396 345 133 ...
 $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...
 $ Cabin      : Factor w/ 187 levels "","A10","A14",..: 1 83 1 57 1 1 131 1 1 1 ...
 $ Embarked   : Factor w/ 4 levels "","C","Q","S": 4 2 4 4 4 3 4 4 4 2 ...
'''
combinedata$Survived <- as.factor(combinedata$Survived) #convert Survived column to factor data type
combinedata$Pclass <- as.factor(combinedata$Pclass) #convert Pclass column to factor data type
str(combinedata) #column's data type, number of columns numbers, number of rows numbers
'''
'data.frame':	1309 obs. of  12 variables:
 $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...
 $ Survived   : Factor w/ 3 levels "0","1","None": 1 2 2 2 1 1 1 1 2 2 ...
 $ Pclass     : Factor w/ 3 levels "1","2","3": 3 1 3 1 3 3 1 3 3 2 ...
 $ Name       : Factor w/ 1307 levels "Abbing, Mr. Anthony",..: 109 191 358 277 16 559 520 629 417 581 ...
 $ Sex        : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 2 1 1 ...
 $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...
 $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...
 $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...
 $ Ticket     : Factor w/ 929 levels "110152","110413",..: 524 597 670 50 473 276 86 396 345 133 ...
 $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...
 $ Cabin      : Factor w/ 187 levels "","A10","A14",..: 1 83 1 57 1 1 131 1 1 1 ...
 $ Embarked   : Factor w/ 4 levels "","C","Q","S": 4 2 4 4 4 3 4 4 4 2 ...
'''
table(combinedata$Survived) #Create a table from a column and count the values in a column
'''
   0    1 None 
 549  342  418
'''
table(combinedata$Pclass)
'''
  1   2   3 
323 277 709 
'''
library(ggplot2) #load library, load package, activate program
#Analyze first class passengers survived at a higher rate
passengerclassfactortrainfile <- as.factor(train$Pclass) #Convert Pclass variable in train.csv to a factor
ggplot(train,aes(x=Pclass, fill=factor(Survived)))+geom_bar(width=0.5)+xlab("XLabel Passenger Class")+ylab("YLabel Total Count")+labs(fill="LegendLabel Survived") #Bar chart created three bars first class, second class, third class divided by people who survived and people who didn't survive.  aes is aesthetic.  Use bar chart geom_bar instead of histogram chart geom_histogram
head(train$Name) #return first six rows in Name column
'''
[1] Braund, Mr. Owen Harris                             Cumings, Mrs. John Bradley (Florence Briggs Thayer)
[3] Heikkinen, Miss. Laina                              Futrelle, Mrs. Jacques Heath (Lily May Peel)       
[5] Allen, Mr. William Henry                            Moran, Mr. James                                   
891 Levels: Abbing, Mr. Anthony Abbott, Mr. Rossmore Edward Abbott, Mrs. Stanton (Rosa Hunt) ... Zimmerman, Mr. Leo
'''
head(as.character(train$Name)) #return first six rows in Name column as characters
'''
[1] "Braund, Mr. Owen Harris"                             "Cumings, Mrs. John Bradley (Florence Briggs Thayer)"
[3] "Heikkinen, Miss. Laina"                              "Futrelle, Mrs. Jacques Heath (Lily May Peel)"       
[5] "Allen, Mr. William Henry"                            "Moran, Mr. James"  
'''
length(unique(combinedata$Name)) #print 1307 Unique names in train.csv and test.csv
length(unique(as.character(combinedata$Name))) #print 1307 Unique names in train.csv and test.csv.  Distinct count.
findduplicatenames <- as.character(combinedata[which(duplicated(as.character(combinedata$Name))),"Name"]) #duplicated() function determines which elements of a vector or a data frame are duplicates.  Returns a logical vector indicating which elements or rows are duplicates.  The which is like the where clause in SQL, and "Name" is the column name in combinedata table.
findduplicatenames #print "Kelly, Mr. James"     "Connolly, Miss. Kate"
combinedata[which(combinedata$Name %in% findduplicatenames),] #return the rows which include the duplicate names.  Read like a SQL get the names from findduplicatenames for the name column in combinedata table.  The brackets are the indexing like Python indexing.
'''
    PassengerId Survived Pclass                 Name    Sex  Age SibSp Parch Ticket   Fare Cabin Embarked
290         290        1      3 Connolly, Miss. Kate female 22.0     0     0 370373 7.7500              Q
697         697        0      3     Kelly, Mr. James   male 44.0     0     0 363592 8.0500              S
892         892     None      3     Kelly, Mr. James   male 34.5     0     0 330911 7.8292              Q
898         898     None      3 Connolly, Miss. Kate female 30.0     0     0 330972 7.6292              Q
'''