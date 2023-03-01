#Introduction to R Programming for Excel Users [Ekp2mfxQSzw]
#Set working directory Session-->Set Working Directory-->Choose Directory or Ctrl+Shift+H
#Load csv file to a table which is the data frame 
titanicloaddataasdataframe <- read.csv("introductiontorprogrammingforexceluserstitanic.csv",header=TRUE)
head(titanicloaddataasdataframe)  #Observations are rows.  Variables are columns.  891 rows excluding column header.  12 columns.
'
PassengerId Survived Pclass                                                Name    Sex Age SibSp Parch           Ticket    Fare
1           1        0      3                             Braund, Mr. Owen Harris   male  22     1     0        A/5 21171  7.2500
2           2        1      1 Cumings, Mrs. John Bradley (Florence Briggs Thayer) female  38     1     0         PC 17599 71.2833
3           3        1      3                              Heikkinen, Miss. Laina female  26     0     0 STON/O2. 3101282  7.9250
4           4        1      1        Futrelle, Mrs. Jacques Heath (Lily May Peel) female  35     1     0           113803 53.1000
5           5        0      3                            Allen, Mr. William Henry   male  35     0     0           373450  8.0500
6           6        0      3                                    Moran, Mr. James   male  NA     0     0           330877  8.4583
Cabin Embarked SurvivedLabel FamilySize
1              S          Died          2
2   C85        C      Survived          2
3              S      Survived          1
4  C123        S      Survived          2
5              S          Died          1
6              Q          Died          1
'
#Add column or insert column if statement
titanicloaddataasdataframe$SurvivedLabel <- ifelse(titanicloaddataasdataframe$Survived==1,"Survived","Died")
#Add column or insert column combine columns
titanicloaddataasdataframe$FamilySize <- 1+titanicloaddataasdataframe$SibSp+titanicloaddataasdataframe$Parch
#View column headers and its data types.  Str stands for structure.
str(titanicloaddataasdataframe)
'
data.frame:	891 obs. of  14 variables:
 $ PassengerId  : int  1 2 3 4 5 6 7 8 9 10 ...
 $ Survived     : int  0 1 1 1 0 0 0 0 1 1 ...
 $ Pclass       : int  3 1 3 1 3 3 1 3 3 2 ...
 $ Name         : Factor w/ 891 levels "Abbing, Mr. Anthony",..: 109 191 358 277 16 559 520 629 417 581 ...
 $ Sex          : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 2 1 1 ...
 $ Age          : num  22 38 26 35 35 NA 54 2 27 14 ...
 $ SibSp        : int  1 1 0 1 0 0 0 3 0 1 ...
 $ Parch        : int  0 0 0 0 0 0 0 1 2 0 ...
 $ Ticket       : Factor w/ 681 levels "110152","110413",..: 524 597 670 50 473 276 86 396 345 133 ...
 $ Fare         : num  7.25 71.28 7.92 53.1 8.05 ...
 $ Cabin        : Factor w/ 148 levels "","A10","A14",..: 1 83 1 57 1 1 131 1 1 1 ...
 $ Embarked     : Factor w/ 4 levels "","C","Q","S": 4 2 4 4 4 3 4 4 4 2 ...
 $ SurvivedLabel: chr  "Died" "Survived" "Survived" "Survived" ...
 $ FamilySize   : num  2 2 1 2 1 1 1 5 3 2 ...
'
#titanicloaddataasdataframe$SurvivedLabel <- as.factor(titanicloaddataasdataframe$SurvivedLabel) #change data type SurvivedLabel column to factor.  chr data type is text data type in R-Studio.  Best change character chr data type to factor data type.
#average fare for males
mean(titanicloaddataasdataframe$Fare) #print 32.20421
mean(titanicloaddataasdataframe$Fare[titanicloaddataasdataframe$Sex=="male"]) #print 25.52389
median(titanicloaddataasdataframe$Fare[titanicloaddataasdataframe$Sex=="male"]) #print 10.5
mode(titanicloaddataasdataframe$Fare[titanicloaddataasdataframe$Sex=="male"]) #print "numeric"
#R does not have a standard in-built function to calculate mode. So we create a user function to calculate mode of a data set in R. This function takes the vector as input and gives the mode value as output.  https://www.tutorialspoint.com/r/r_mean_median_mode.htm
getmode <- function(v) {
    uniqv <- unique(v)
    uniqv[which.max(tabulate(match(v, uniqv)))]
}
result <- getmode(titanicloaddataasdataframe$Fare)
print(result) #print 8.05
range(titanicloaddataasdataframe$Fare[titanicloaddataasdataframe$Sex=="male"]) #print 0.0000 512.3292
malerowsfilterrow <- titanicloaddataasdataframe[titanicloaddataasdataframe$Sex=="male",]
head(malerowsfilterrow)
'
   PassengerId Survived Pclass                           Name  Sex Age SibSp Parch    Ticket    Fare Cabin Embarked SurvivedLabel
1            1        0      3        Braund, Mr. Owen Harris male  22     1     0 A/5 21171  7.2500              S          Died
5            5        0      3       Allen, Mr. William Henry male  35     0     0    373450  8.0500              S          Died
6            6        0      3               Moran, Mr. James male  NA     0     0    330877  8.4583              Q          Died
7            7        0      1        McCarthy, Mr. Timothy J male  54     0     0     17463 51.8625   E46        S          Died
8            8        0      3 Palsson, Master. Gosta Leonard male   2     3     1    349909 21.0750              S          Died
13          13        0      3 Saundercock, Mr. William Henry male  20     0     0 A/5. 2151  8.0500              S          Died
   FamilySize
1           2
5           1
6           1
7           1
8           5
13          1
'
#or use brackets to slice rows
malerowsfilterrow[1:6,]
#Statistics male passengers and their fares
summary(malerowsfilterrow$Fare)
'
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  0.000   7.896  10.500  25.524  26.550 512.329 
'
var(malerowsfilterrow$Fare) #print 1860.91.  Variance.
sd(malerowsfilterrow$Fare) #print 43.13826.  Standard deviation.
sum(malerowsfilterrow$Fare) #print 14727.29
length(malerowsfilterrow$Fare) #print 577.  Number of rows or number of observations.
#slice columns or column range
malerowsfilterrow[1:6,2:4]
'
   Survived Pclass                           Name
1         0      3        Braund, Mr. Owen Harris
5         0      3       Allen, Mr. William Henry
6         0      3               Moran, Mr. James
7         0      1        McCarthy, Mr. Timothy J
8         0      3 Palsson, Master. Gosta Leonard
13        0      3 Saundercock, Mr. William Henry
'
malerowsfilterrow[1:6,c("Survived","Name","Age")] #c is concatenate.
'
   Survived                           Name Age
1         0        Braund, Mr. Owen Harris  22
5         0       Allen, Mr. William Henry  35
6         0               Moran, Mr. James  NA
7         0        McCarthy, Mr. Timothy J  54
8         0 Palsson, Master. Gosta Leonard   2
13        0 Saundercock, Mr. William Henry  20
'
#or reference column index number column number
malerowsfilterrow[1:6,c(2,4,6)]
#install ggplot2
#install.packages("ggplot2")
library(ggplot2) #activate ggplot2
ggplot(titanicloaddataasdataframe,aes(x=FamilySize,fill=SurvivedLabel))+theme_bw()+facet_wrap(Sex ~ Pclass)+geom_histogram(binwidth=1) #six histograms charts.  x-axis family size.  y-axis count.  Top three female by pclass 1, 2, 3 first class, second class, third class.  Bottom three male by pclass 1, 2, 3 first class, second class, third class.  Count how many died and how many survived; survived bottom and died top.
#install dplyr A Grammar Of Data Manipulation.  data pivots.  Pronounced d-piler.
#install.packages("dplyr")
library(dplyr)
#Ctrl+Shift+M inserts %>%
pivot <- titanicloaddataasdataframe %>% group_by(Pclass, Sex, SurvivedLabel) %>% summarize(AverageFamilySize=mean(FamilySize),PassengerCount=n()) %>% arrange(Pclass, Sex, SurvivedLabel)
View(pivot) #pivot table.  Columns from left to right Pclass, Sex,  SurvivedLabel, AverageFamilySize, PassengerCount.  The Average Familiy Size and PassengerCount are arranged by Pclass, Sex, and SurvivedLabel such as 1 female Died, 1 female Survived, 1 male Died, 1 male Survived, 2 female Died, 2 female Survived, . . . .
