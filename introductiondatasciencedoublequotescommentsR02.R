#Introduction to Data Science with R - Data Analysis Part 2 [u6sahb7Hmog]
#Algorithms are great.  Knowing your data is a higher priority than algorithms.

#Set Working Directory Session-->Set Working Directory-->Choose Directory.  Return > setwd("~/rstudio").  Avoid typing full file paths.
train <- read.csv("train.csv",header=TRUE)
test <- read.csv("test.csv",header=TRUE)
testsurvived <- data.frame(Survived = rep("None",nrow(test)),test[,]) #Create variable survived to test.csv to combine data sets.  rep function is Replicate Elements or repeat.  RM:  add survived column to test.csv with value None for all the rows in test variable which is test.csv.  test[,] means use all rows and all columns; there is no specific row and column,n [rowindex,columnindex].  Survived must be capitalized because train file Survived is capitalized.
testsurvived[1:5,]
"
Survived PassengerId Pclass                                         Name    Sex  Age SibSp Parch  Ticket    Fare Cabin Embarked
1     None         892      3                             Kelly, Mr. James   male 34.5     0     0  330911  7.8292              Q
2     None         893      3             Wilkes, Mrs. James (Ellen Needs) female 47.0     1     0  363272  7.0000              S
3     None         894      2                    Myles, Mr. Thomas Francis   male 62.0     0     0  240276  9.6875              Q
4     None         895      3                             Wirz, Mr. Albert   male 27.0     0     0  315154  8.6625              S
5     None         896      3 Hirvonen, Mrs. Alexander (Helga E Lindqvist) female 22.0     1     1 3101298 12.2875              S
"
combinedata <- rbind(train, testsurvived) #Combine data sets append data sets.  rbind function is Row Bind
combinedata[1:5,]  #Pclass 1 upper class, 2 middle class, 3 lower class.  SibSp is number of siblings/spouses aboard.  Parch is number of parents/children aboard.  Ticket is ticket number.  Embarked is port of Embarkation C Cherborg, Q Queenstown S South Hampton, and blank.
"
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
"
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
"
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
"
#Plot the findings.  Use the first 891 rows because we have survived labels for the train set.
ggplot(combinedata[1:891,], aes(x=Title, fill=Survived))+geom_bar(width=0.5)+facet_wrap(~Pclass)+ggtitle("Chart title Pclass")+xlab("X label Name Title")+ylab("Y label Total Count")+labs(fill="Survived") #return a bar chart with three sets of bars charts by Pclass 1, 2, 3.  Each set x-axis is the name titles Master Miss Mr Mrs Other and y-axis is the count.  Each bar plot is separated by Survived 0 or 1.
table(combinedata$Sex)
"
female   male 
   466    843 
"
#Visualize the three way relationship between Sex, Pclass, and Survived columns.
ggplot(combinedata[1:891,],aes(x=Sex, fill=Survived))+geom_bar(width=0.5)+facet_wrap(~Pclass)+ggtitle("Chart title Pclass")+xlab("X label Sex")+ylab("Y label Total Count")+labs(fill="Legend Survived") #return a bar chart with three sets of bars charts by Pclass 1, 2, 3.  Each set x-axis is the sex female male and y-axis is the count.  Each bar plot is separated by Survived 0 or 1.
summary(combinedata$Age)
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
0.17   21.00   28.00   29.88   39.00   80.00     263 
"
summary(combinedata[1:891,"Age"])
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
0.42   20.12   28.00   29.70   38.00   80.00     177 
"
ggplot(combinedata[1:891,],aes(x=Age,fill=Survived))+facet_wrap(~Sex + Pclass)+ggtitle("Chart title Pclass separated by sex")+geom_histogram(binwidth=10)+xlab("X label Age")+ylab("Y label Total Count") #return a histogram chart with six sets of histograms.  Top three sets are female by Pclass 1, 2, 3.  Bottom three sets are male by Pclass 1, 2, 3.  Each histogram x-axis is ages separated in ten's and y-axis is the count.  Each histogram is separated by Survived 0 or 1.
#Check or confirm Master title good proxy for male children.  Use which function in combinedata to extract Master. in Title column.
boys <- combinedata[which(combinedata$Title=="Master."),]
head(boys)
"
   PassengerId Survived Pclass                               Name  Sex Age SibSp Parch  Ticket    Fare Cabin Embarked   Title
8            8        0      3     Palsson, Master. Gosta Leonard male   2     3     1  349909 21.0750              S Master.
17          17        0      3               Rice, Master. Eugene male   2     4     1  382652 29.1250              Q Master.
51          51        0      3         Panula, Master. Juha Niilo male   7     4     1 3101295 39.6875              S Master.
60          60        0      3 Goodwin, Master. William Frederick male  11     5     2 CA 2144 46.9000              S Master.
64          64        0      3              Skoog, Master. Harald male   4     3     2  347088 27.9000              S Master.
66          66        1      3           Moubarek, Master. Gerios male  NA     1     1    2661 15.2458              C Master.
"
boys$Age
"
 [1]  2.00  2.00  7.00 11.00  4.00    NA  0.83 12.00    NA  1.00  9.00  4.00    NA  9.00  1.00  3.00  3.00  7.00  0.92  2.00  3.00
[22]  1.00  3.00  4.00  9.00  9.00  8.00    NA  6.00  0.67  8.00  1.00 11.00  0.42 10.00  2.00  1.00  0.83  4.00  4.00  9.00 10.00
[43] 13.00  6.00  2.00 13.00  7.00 11.50  8.00  6.00  0.33    NA  0.75  0.83    NA    NA 14.50  5.00  6.00 13.00    NA
"
summary(boys$Age)
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
0.330   2.000   4.000   5.483   9.000  14.500       8 
"
#Title Miss. is complicated
misses <- combinedata[which(combinedata$Title=="Miss."),]
summary(misses$Age)
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
0.17   15.00   22.00   21.77   30.00   63.00      50 
"
table(misses$Age)
"
0.17 0.75 0.92    1    2    3    4    5    6    7    8    9   10   11   12   13   14 14.5   15   16   17   18 18.5   19   20   21 
   1    2    1    5    7    3    5    4    2    1    3    5    2    1    2    2    3    1    4    7    6   14    1    6    6   10 
  22   23   24   25   26   27   28   29   30 30.5   31   32 32.5   33   34   35   36   37   38   39   40   41   42   45   50   54 
  15    7    9    3    4    5    4    3   13    1    5    1    1    3    1    5    5    2    4    2    2    1    1    2    3    1 
  58   63 
   2    1
"
ggplot(misses[misses$Survived!="None",], aes(x=Age,fill=Survived))+facet_wrap(~Pclass)+geom_histogram(binwidth = 5)+ggtitle("Age for Miss. title by Pclass")+xlab("x label Age")+ylab("y label Total Count") #three histograms by Pclass 1, 2, and 3.  Each histogram is a count of passengers who survived and who died.  x-axis by ages and y-axis is count of passengers who survived and who died.  Also, Warning message:  Removed 36 rows containing non-finite values (stat_bin).
#Female passengers or Title Miss. traveled alone
misses.alone <- misses[which(misses$SibSp==0 & misses$Parch==0),] #no siblings, no spouses; no parents, no children
head(misses.alone)
"
   PassengerId Survived Pclass                                 Name    Sex Age SibSp Parch           Ticket    Fare Cabin Embarked
3            3        1      3               Heikkinen, Miss. Laina female  26     0     0 STON/O2. 3101282  7.9250              S
12          12        1      1             Bonnell, Miss. Elizabeth female  58     0     0           113783 26.5500  C103        S
15          15        0      3 Vestrom, Miss. Hulda Amanda Adolfina female  14     0     0           350406  7.8542              S
23          23        1      3          McGowan, Miss. Anna \"Annie\" female  15     0     0           330923  8.0292              Q
29          29        1      3        O\'Dwyer, Miss. Ellen \"Nellie\" female  NA     0     0           330959  7.8792              Q
33          33        1      3             Glynn, Miss. Mary Agatha female  NA     0     0           335677  7.7500              Q
Title
3  Miss.
12 Miss.
15 Miss.
23 Miss.
29 Miss.
33 Miss.
"
summary(misses.alone)
"
  PassengerId     Survived  Pclass                            Name         Sex           Age            SibSp       Parch  
 Min.   :   3.0   0   :25   1:36   Connolly, Miss. Kate         :  2   female:150   Min.   : 5.00   Min.   :0   Min.   :0  
 1st Qu.: 295.8   1   :75   2:25   Allen, Miss. Elisabeth Walton:  1   male  :  0   1st Qu.:21.00   1st Qu.:0   1st Qu.:0  
 Median : 603.5   None:50   3:89   Attalah, Miss. Malake        :  1                Median :26.00   Median :0   Median :0  
 Mean   : 631.8                    Ayoub, Miss. Banoura         :  1                Mean   :27.23   Mean   :0   Mean   :0  
 3rd Qu.: 987.2                    Barber, Miss. Ellen \"Nellie\" :  1                3rd Qu.:32.50   3rd Qu.:0   3rd Qu.:0  
 Max.   :1304.0                    Bazzani, Miss. Albina        :  1                Max.   :58.00   Max.   :0   Max.   :0  
                                   (Other)                      :143                NA\'s   :33                             
Ticket         Fare             Cabin     Embarked     Title    
110152      :  2   Min.   :  6.750          :121    : 1     Master.:  0  
113781      :  2   1st Qu.:  7.750   E101   :  3   C:23     Miss.  :150  
16966       :  2   Median :  8.662   B28    :  1   Q:47     Mr.    :  0  
24160       :  2   Mean   : 39.611   B42    :  1   S:79     Mrs.   :  0  
364516      :  2   3rd Qu.: 26.550   B5     :  1            Other  :  0  
F.C.C. 13528:  2   Max.   :512.329   B73    :  1                         
(Other)     :138                     (Other): 22 
"
summary(misses.alone$Age)
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA\'s 
5.00   21.00   26.00   27.23   32.50   58.00      33 
"
length(which(misses.alone$Age<=14.5)) #print 4.  Four single female misses were 14.5 years or younger.
#Siblings and spouse variable
summary(combinedata$SibSp) #Notice there is no NA's
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.0000  0.0000  0.0000  0.4989  1.0000  8.0000 
"
length(combinedata$SibSp) #print 1309
length(unique(combinedata$SibSp)) #print 7
table(combinedata$SibSp)
"
  0   1   2   3   4   5   8 
891 319  42  20  22   6   9 
"
#combinedata$SibSp <- as.factor(combinedata$SibSp) #Create a factor.  RM:  don't create a factor because it caused error for ggplot below.
#combinedata$SibSp
"
[1] 1 1 0 1 0 0 0 3 0 1 1 0 0 1 0 0 4 0 1 0 0 0 0 0 3 1 0 3 0 0 0 1 0 0 1 1 0 0 2 1 1 1 0 1 0 0 1 0 2 1 4 0 1 1 0 0 0 0 1 5 0 0
[63] 1 3 0 1 1
...
[993] 1 0 0 1 0 0 0 0
[ reached getOption(\"max.print\") -- omitted 309 entries ]
Levels: 0 1 2 3 4 5 8
"
#A passenger's title is predictive.  Visualize the survival rates by SibSp, Pclass, and Title
ggplot(combinedata[1:891,],aes(x=SibSp, fill=Survived))+geom_histogram(binwidth=1)+facet_wrap(~Pclass+Title)+ggtitle("Pclass, Title")+xlab("SibSp")+ylab("Total Count")+ylim(0,300)+labs(fill="Survived") #Histogram chart broken down by Pclass 1, 2, 3 and by Title Master. Miss., Mr., Mrs., and Other.  Each histogram counts who survived and who died by Pclass and Title.  X-axis is Siblings and Spouse.  For example, histogram chart Pclass 3 Title Mr. many men died with no siblings and no spouse or SibSp=0.
#A passenger's title is predictive.  Visualize the survival rates by Parch, Pclass, and Title
ggplot(combinedata[1:891,],aes(x=Parch, fill=Survived))+geom_histogram(binwidth=1)+facet_wrap(~Pclass+Title)+ggtitle("Pclass, Title")+xlab("Parch")+ylab("Total Count")+ylim(0,300)+labs(fill="Survived") #Histogram chart broken down by Pclass 1, 2, 3 and by Title Master. Miss., Mr., Mrs., and Other.  Each histogram counts who survived and who died by Pclass and Title.  X-axis is Parents and children.  For example, histogram chart Pclass 3 Title Mr. many men died neither as a parent nor with no children or Parch=0.
#Feature engineering.  Create a family size feature.  Combine values from train dataset and test dataset to a vector.  Add the numbers to combinedata dataset as familysize.  For example, a passenger is traveling with 1 spouse and 1 child, then familysize is 2+1=3 for which the +1 is the passenger himself or herself.  RM:  don't convert featuresibsp and featureparch to a factor.
featuresibsp <- c(train$SibSp, test$SibSp)
featuresibsp[0:10] #print 1 1 0 1 0 0 0 3 0 1
table(featuresibsp)
"
  0   1   2   3   4   5   8 
891 319  42  20  22   6   9 
"
featureparch <- c(train$Parch,test$Parch)
featureparch[0:10] #print 0 0 0 0 0 0 0 1 2 0
table(featureparch)
"
0    1    2    3    4    5    6    9 
1002  170  113    8    6    6    2    2
"
combinedata$familysize <- (featuresibsp+featureparch+1) #The plus 1 is counting the passenger himself or herself.
table(combinedata$familysize)
"
  0   1   2   3   4   5   6   7  10 
790 235 159  43  22  25  16   8  11 
"
ggplot(combinedata[1:891,],aes(x=familysize, fill=Survived))+geom_histogram(binwidth=1)+facet_wrap(~Pclass+Title)+ggtitle("Pclass, Title")+xlab("Family Size")+ylab("Total Count")+ylim(0,300)+labs(fill="Survived") #Histogram chart broken down by Pclass 1, 2, 3 and by Title Master. Miss., Mr., Mrs., and Other.  Each histogram counts who survived and who died by Pclass and Title.  X-axis is Family size familysize count  For example, histogram chart Pclass 3 Title Mr. many men died themselves without being a parent, spouse, and without siblings and without children.
#Export combinedata data frame to comma separated text file which includes familysize column
write.table(x=combinedata,file="/home/mar/rstudio/combinedatatitanic.txt",sep=",",na="", quote=FALSE,row.names=FALSE)
            