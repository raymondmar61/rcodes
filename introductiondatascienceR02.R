#Introduction to Data Science with R - Data Analysis Part 2 [u6sahb7Hmog]
#Algorithms are great.  Knowing your data is a higher priority than algorithms.

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
combinedata$Survived <- as.factor(combinedata$Survived) #convert Survived column to factor data type
combinedata$Pclass <- as.factor(combinedata$Pclass) #convert Pclass column to factor data type
extracttitle <- function(name) {
    name <- as.character(name)
    if (length(grep("Miss.",name))>0){ #grep is the same grep in Linux which looks for a string inside text
        return("Miss.")
    } else if (length(grep("Master.",name))>0){
        return("Master.")
    } else if (length(grep("Mrs.",name))>0){
        return("Mrs.")
    } else if (length(grep("Mr.", name))>0){
        return("Mr.")
    } else {
        return("Other")
    }
}
titles <- NULL
for(i in 1:nrow(combinedata)){
    titles <- c(titles,extracttitle(combinedata[i,"Name"])) #Name is the Name column in dataframe combinedata
}
titles[1:10] #print [1] "Mr."     "Mrs."    "Miss."   "Mrs."    "Mr."     "Mr."     "Mr."     "Master." "Mrs."    "Mrs."   
combinedata$Title <- as.factor(titles) #Convert titles to a factor and add column insert column Title
combinedata[1:5,]
'''
  PassengerId Survived Pclass                                                Name    Sex Age SibSp Parch           Ticket    Fare
1           1        0      3                             Braund, Mr. Owen Harris   male  22     1     0        A/5 21171  7.2500
2           2        1      1 Cumings, Mrs. John Bradley (Florence Briggs Thayer) female  38     1     0         PC 17599 71.2833
3           3        1      3                              Heikkinen, Miss. Laina female  26     0     0 STON/O2. 3101282  7.9250
4           4        1      1        Futrelle, Mrs. Jacques Heath (Lily May Peel) female  35     1     0           113803 53.1000
5           5        0      3                            Allen, Mr. William Henry   male  35     0     0           373450  8.0500
  Cabin Embarked Title
1              S   Mr.
2   C85        C  Mrs.
3              S Miss.
4  C123        S  Mrs.
5              S   Mr.
'''
#Plot the findings.  Use the first 891 rows because we have survived labels for the train set.
ggplot(combinedata[1:891,], aes(x=Title, fill=Survived))+geom_bar(width=0.5)+facet_wrap(~Pclass)+ggtitle("Chart title Pclass")+xlab("X label Name Title")+ylab("Y label Total Count")+labs(fill="Survived") #return a bar chart with three sets of bars charts by Pclass 1, 2, 3.  Each set x-axis is the name titles Master Miss Mr Mrs Other and y-axis is the count.  Each bar plot is separated by Survived 0 or 1.
table(combinedata$Sex)
'''
female   male 
   466    843 
'''
#Visualize the three way relationship between Sex, Pclass, and Survived columns.
ggplot(combinedata[1:891,],aes(x=Sex, fill=Survived))+geom_bar(width=0.5)+facet_wrap(~Pclass)+ggtitle("Chart title Pclass")+xlab("X label Sex")+ylab("Y label Total Count")+labs(fill="Legend Survived") #return a bar chart with three sets of bars charts by Pclass 1, 2, 3.  Each set x-axis is the sex female male and y-axis is the count.  Each bar plot is separated by Survived 0 or 1.
summary(combinedata$Age)
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
0.17   21.00   28.00   29.88   39.00   80.00     263 
'''
summary(combinedata[1:891,"Age"])
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
0.42   20.12   28.00   29.70   38.00   80.00     177 
'''
ggplot(combinedata[1:891,],aes(x=Age,fill=Survived))+facet_wrap(~Sex + Pclass)+ggtitle("Chart title Pclass separated by sex")+geom_histogram(binwidth=10)+xlab("X label Age")+ylab("Y label Total Count") #return a histogram chart with six sets of histograms.  Top three sets are female by Pclass 1, 2, 3.  Bottom three sets are male by Pclass 1, 2, 3.  Each histogram x-axis is ages separated in ten's and y-axis is the count.  Each histogram is separated by Survived 0 or 1.
