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
