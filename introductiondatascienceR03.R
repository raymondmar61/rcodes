#Introduction to Data Science with R - Data Analysis Part 3 [aMV_6LmCs4Q]

#Set Working Directory Session-->Set Working Directory-->Choose Directory.  Return > setwd("~/rstudio").  Avoid typing full file paths.
#Reload data from Video 2 Introduction to Data Science with R - Data Analysis Part 2 [u6sahb7Hmog] No Subtitles
train <- read.csv("train.csv",header=TRUE)
test <- read.csv("test.csv",header=TRUE)
testsurvived <- data.frame(Survived = rep("None",nrow(test)),test[,])
combinedata <- rbind(train, testsurvived) #Combine data sets append data sets.  rbind function is Row Bind
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
boys <- combinedata[which(combinedata$Title=="Master."),]
misses <- combinedata[which(combinedata$Title=="Miss."),]
misses.alone <- misses[which(misses$SibSp==0 & misses$Parch==0),] #no siblings, no spouses; no parents, no children
featuresibsp <- c(train$SibSp, test$SibSp)
featureparch <- c(train$Parch,test$Parch)
combinedata$familysize <- (featuresibsp+featureparch+1) #The plus 1 is counting the passenger himself or herself.


ticketcolumn <- str(combinedata$Ticket) #print Factor w/ 929 levels "110152","110413",..: 524 597 670 50 473 276 86 396 345 133 ...
ticketcolumn #print NULL
#Ticket column isn't a factor variable.  ticketcolumn is a string.  Convert ticketcolumn to string.
combinedata$Ticket <- as.character(combinedata$Ticket)
combinedata$Ticket[1:20]
#  [1] "A/5 21171"        "PC 17599"         "STON/O2. 3101282" "113803"           "373450"           "330877"          
#  [7] "17463"            "349909"           "347742"           "237736"           "PP 9549"          "113783"          
# [13] "A/5. 2151"        "347082"           "350406"           "248706"           "382652"           "244373"          
# [19] "345763"           "2649"  
str(combinedata$Ticket) #print chr [1:1309] "A/5 21171" "PC 17599" "STON/O2. 3101282" "113803" "373450" "330877" "17463" "349909" "347742" "237736" ...
ticketfirstcharacter <- ifelse(combinedata$Ticket==""," ", substr(combinedata$Ticket,1,1)) #Some passengers don't have a ticket.  Instructor wants passengers with no ticket to have a space.
ticketfirstcharacter[1:20] #print "A" "P" "S" "1" "3" "3" "1" "3" "3" "2" "P" "1" "A" "3" "3" "2" "3" "2" "3" "2"
unique(ticketfirstcharacter) #print "A" "P" "S" "1" "3" "2" "C" "7" "W" "4" "F" "L" "9" "6" "5" "8"
combinedata$ticketfirstcharacterfactor <- as.factor(ticketfirstcharacter)
ticketfirstcharacterfactor
"
[1] A P S 1 3 3 1 3 3 2 P 1 A 3 3 2 3 2 3 2 2 2 3 1 3 3 2 1 3 3 P P 3 C P 1 2 A 3 2 7 1 3 S 3 S 3 1 2 3 3 A P 2 1 1 C 2 C C 2 1
[63] 3 3 P 2 C S 3 3 C C S 2 1 3 3 3 2 3 3 3 3 1 S 3 W S 1 3 3 3 W C 3 3 P P 2 2 3 3 3 7 3 3 3 3 3 3 1 2 3 4 2 S 3 1 P 3 S A 2 2
...
[993] 2 3 3 2 C 3 3 3
[ reached getOption(\"max.print\") -- omitted 309 entries ]
Levels: 1 2 3 4 5 6 7 8 9 A C F L P S W
"
ggplot(combinedata[1:891,],aes(x=ticketfirstcharacterfactor,fill=Survived))+geom_bar()+ggtitle("Survivability by the first character in a person's ticket")+xlab("ticketfirstcharacter")+ylab("Total Count")+ylim(0,350)+labs(fill="Survived") #returns a bar chart x-axis is the first characters for all the tickets 1 . . . 9, A, C, F, L, P, S, W.  y-axis is the count, and the bar chart counts how many survived and how many died for each first character ticket.  y-axis range 0 to 350.
ggplot(combinedata[1:891,],aes(x=ticketfirstcharacterfactor,fill=Survived))+geom_bar()+facet_wrap(~Pclass)+ggtitle("Separate By Passenger class 1, 2, 3")+xlab("ticketfirstcharacter")+ylab("Total Count")+ylim(0,150)+labs(fill="Survived") #returns a bar chart x-axis is the first characters for all the tickets 1 . . . 9, A, C, F, L, P, S, W.  y-axis is the count, and the bar chart counts how many survived and how many died for each first character ticket split into the three Passenger Classes 1, 2, and 3.  y-axis range 0 to 150.
ggplot(combinedata[1:891,],aes(x=ticketfirstcharacterfactor,fill=Survived))+geom_bar()+facet_wrap(~Pclass+Title)+ggtitle("Separate by Passenger class 1, 2, 3 and passenger's title")+xlab("ticketfirstcharacter")+ylab("Total Count")+ylim(0,200)+labs(fill="Survived") #returns a bar chart x-axis is the first characters for all the tickets 1 . . . 9, A, C, F, L, P, S, W.  y-axis is the count, and the bar chart counts how many survived and how many died for each first character ticket split into the three Passenger Classes 1, 2, and 3 and its passenger title; for example, 1 Master, 1 Miss, 1 Mr, 1 Mrs, 1 Other, 2 Master, 2 Miss, 2 Mr, etc..  y-axis range 0 to 200.
ggplot(combinedata[1:891,],aes(x=ticketfirstcharacterfactor,fill=Survived))+geom_bar()+facet_wrap(~Title+Pclass)+ggtitle("Separate by passenger's title and Passenger class 1, 2, 3")+xlab("ticketfirstcharacter")+ylab("Total Count")+ylim(0,200)+labs(fill="Survived") #returns a bar chart x-axis is the first characters for all the tickets 1 . . . 9, A, C, F, L, P, S, W.  y-axis is the count, and the bar chart counts how many survived and how many died for each first character ticket split into the passenger title and the three Passenger Classes 1, 2, and 3; for example, Master 1, Master 2, Master 3, Miss 1, Miss 2, Miss 3, Mr 1, etc.  y-axis range 0 to 200.  RM:  IMO quicker analysis because breakdown by title
passengerspaid <- summary(combinedata$Fare)
passengerspaid
"
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  0.000   7.896  14.454  33.295  31.275 512.329       1
"
length(unique(passengerspaid)) #print 7
combinedata$Fare[1:10] #print 7.2500 71.2833  7.9250 53.1000  8.0500  8.4583 51.8625 21.0750 11.1333 30.0708
length(unique(combinedata$Fare)) #print 282
ggplot(combinedata,aes(x=Fare))+geom_histogram(binwidth=5)+ggtitle("Combined Fare Distribution ticket prices")+xlab("xlabel Fare")+ylab("ylabel Total Count")+ylim(0,200) #returns a histogram chart ticket prices on x-axis and count of tickets passengers paid on y-axis.  Warning messages:  1: Removed 1 rows containing non-finite values (stat_bin). 2: Removed 1 rows containing missing values (geom_bar).
ggplot(combinedata[1:891,],aes(x=Fare, fill=Survived))+geom_histogram(binwidth=5)+facet_wrap(~Pclass+Title)+ggtitle("Pclass, Title")+xlab("Xlabel Fare")+ylab("ylabel Total Count")+ylim(0,50)+labs(fill="Survived") #bar charts separated by passenger class 1, 2, 3 and passenger title Master, Miss, Mr, Mrs, Other.  Two types of bars per bar chart count who survived and count who died.  Warning message:  Removed 3 rows containing missing values (geom_bar). 
cabinvariable <- str(combinedata$Cabin)
cabinvariable #print Null
str(combinedata$Cabin) #print Factor w/ 187 levels "","A10","A14",..: 1 83 1 57 1 1 131 1 1 1 ...
combinedata$Cabin <- as.character(combinedata$Cabin) #Cabin isn't a factor.  Create a string.  Display the first 100 results.
combinedata$Cabin[1:100]
"
[1] ""            "C85"         ""            "C123"        ""            ""            "E46"         ""            ""           
 [10] ""            "G6"          "C103"        ""            ""            ""            ""            ""            ""           
 [19] ""            ""            ""            "D56"         ""            "A6"          ""            ""            ""           
 [28] "C23 C25 C27" ""            ""            ""            "B78"         ""            ""            ""            ""           
 [37] ""            ""            ""            ""            ""            ""            ""            ""            ""           
 [46] ""            ""            ""            ""            ""            ""            ""            "D33"         ""           
 [55] "B30"         "C52"         ""            ""            ""            ""            ""            "B28"         "C83"        
 [64] ""            ""            ""            "F33"         ""            ""            ""            ""            ""           
 [73] ""            ""            ""            "F G73"       ""            ""            ""            ""            ""           
 [82] ""            ""            ""            ""            ""            ""            ""            "C23 C25 C27" ""           
 [91] ""            ""            "E31"         ""            ""            ""            "A5"          "D10 D12"     ""           
[100] ""           
"
combinedata[which(combinedata$Cabin==""),"Cabin"] <- "U" #Replace empty Cabin or empty string with a U.  which is like a where clause in SQL.  Find and replace all blanks in Cabin column with U.
combinedata$Cabin[1:100]
"
  [1] "U"           "C85"         "U"           "C123"        "U"           "U"           "E46"         "U"           "U"          
 [10] "U"           "G6"          "C103"        "U"           "U"           "U"           "U"           "U"           "U"          
 [19] "U"           "U"           "U"           "D56"         "U"           "A6"          "U"           "U"           "U"          
 [28] "C23 C25 C27" "U"           "U"           "U"           "B78"         "U"           "U"           "U"           "U"          
 [37] "U"           "U"           "U"           "U"           "U"           "U"           "U"           "U"           "U"          
 [46] "U"           "U"           "U"           "U"           "U"           "U"           "U"           "D33"         "U"          
 [55] "B30"         "C52"         "U"           "U"           "U"           "U"           "U"           "B28"         "C83"        
 [64] "U"           "U"           "U"           "F33"         "U"           "U"           "U"           "U"           "U"          
 [73] "U"           "U"           "U"           "F G73"       "U"           "U"           "U"           "U"           "U"          
 [82] "U"           "U"           "U"           "U"           "U"           "U"           "U"           "C23 C25 C27" "U"          
 [91] "U"           "U"           "E31"         "U"           "U"           "U"           "A5"          "D10 D12"     "U"          
[100] "U" 
"
cabin.first.character <- as.factor(substr(combinedata$Cabin,1,1)) #Look at the first character or first string character as a factor
str(cabin.first.character) #print Factor w/ 9 levels "A","B","C","D",..: 9 3 9 3 9 9 5 9 9 9 ...
levels(cabin.first.character) #print "A" "B" "C" "D" "E" "F" "G" "T" "U".  RM:  the letters are deck locations.
combinedata$cabinfirstcharacter <- cabin.first.character #Add cabin.first.character to combinedata dataframe as a column
ggplot(combinedata[1:891,],aes(x=cabinfirstcharacter,fill=Survived))+geom_bar()+ggtitle("Survivability by passenger cabin location cabin first character ticket")+xlab("cabinfirstcharacter")+ylab("Total Count")+ylim(0,750)+labs(fill="fill label Survived") #return a bar chart x-axis cabin first character from A to U and y-axis count of passengers.  Each bar separated by who died and who survived.
ggplot(combinedata[1:891,],aes(x=cabinfirstcharacter,fill=Survived))+geom_bar()+facet_wrap(~Pclass)+ggtitle("Survivability by passenger cabin location cabin first character ticket separated by Class")+xlab("Passenger class")+ylab("Total Count")+ylim(0,500)+labs(fill="Survived bar fill label") #return three bar charts separated by Passenger class 1, 2, and 3.  Each bar chart x-axis cabin first character from A to U and y-axis count of passengers.  Each bar separated by who died and who survived.
ggplot(combinedata[1:891,],aes(x=cabinfirstcharacter,fill=Survived))+geom_bar()+facet_wrap(~Pclass+Title)+ggtitle("Passenger class and passenger title") +xlab("First character ticket")+ylab("Total Count")+ylim(0,500)+labs(fill="Survived") #return bar charts separated by passenger class 1, 2, 3 and by passenger title Master, Miss, Mr, Mrs, Other.  Each bar chart separated by who survived and who died color coded.  x-axis is passenger's ticket first character from A to U.  y-axis is passenger count.
combinedata$cabinmultiplecharacters <- as.factor(ifelse(str_detect(combinedata$Cabin, " "),"Y","N")) #Passengers with multiple cabins in Cabin column.  Create new value cabinmultiplecharacters.  If true, cabinmultiplecharacters variable or column is Y, otherwise N.  RM:  activate stringr and stringi packages.
ggplot(combinedata[1:891,], aes(x=cabinmultiplecharacters, fill=Survived))+geom_bar()+facet_wrap(~Pclass+Title)+ggtitle("Passenger class and passenger title")+xlab("Passenger in multiple cabins Yes or No")+ylab("Total Count")+ylim(0,350)+labs(fill="Survived Y or N") #return bar charts separated by passenger class 1, 2, 3 and by passenger title Master, Miss, Mr, Mrs, Other.  Each bar chart separated by who survived and who died color coded.  x-axis is passenger in one cabin as N or multiple cabins as Y.  y-axis is passenger count.
str(combinedata$Embarked) #print Factor w/ 4 levels "","C","Q","S": 4 2 4 4 4 3 4 4 4 2 ... #Where did the passenger boarded Titanic.  C is Cherbourg, Q is Queenstown, S is Southampton, "" is blank.
levels(combinedata$Embarked) #print ""  "C" "Q" "S"
ggplot(combinedata[1:891,],aes(x=Embarked,fill=Survived))+geom_bar()+facet_wrap(~Pclass+Title)+ggtitle("Passenger class and location entered Titanic")+xlab("Location embarked")+ylab("Total Count")+ylim(0,300)+labs(fill="Survived bar label separation") #return bar charts separated by passenger class 1, 2, 3 and by passenger title Master, Miss, Mr, Mrs, Other.  Each bar chart separated by who survived and who died color coded.  x-axis is passenger location boarded blank, C, Q, or S.  y-axis is passenger count.