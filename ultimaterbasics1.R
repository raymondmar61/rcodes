#Shortcut keys
#Press Ctrl+Shift+C to insert # for comment
#Press Ctrl+Enter to run 1+2
#Press Ctrl+Shift+n for which n=1 is Source upper left, n=2 is Console bottom left, n=3 Help, n=4 History, n=5 Files, n=6 Plot, n=7 Packages, n=8 Environment, n=9 Viewer, n=0 Show all panes.  Repeat to Show All Panes. Don't press Shift to move focus.
#Press Alt+Ctrl+P to rerun previous code region
#Press Alt+Shift+G to open Go to Line
#Press Ctrl+Shift+M inserts pipe operator %>%.  tidyverse package must be active.
#Press Ctrl+Tab to switch file tabs
#Close Find window cursor must be at input box to press Esc
#Clear plots if there are plots dev.off()
#Clear Console tab cat("\014")
#Packages
#Install package install.packages("*packagename*"); for example, install.packages("tidyverse")
#Activate package type library(*packagename no quotes*); for example, library(tidyverse).  Also, require(*packagename no quotes*) to return a confirmation message.
#Deactivate package type detach("package:*packagename*", unload=True); for example, detach("package:ggplot2", unload = TRUE).  RM:  it seems no need for unload=True because Error: object 'True' not found.
#Help package type packagename::*type partial attribute* to search in packagename; for example, type base::*letter e* which is base::e, then wait a moment for a popup window of attributes beginning with the letter e.

#Basics.  In order #Vectors, #Factors, #Matrix, #Lists, and #Data frames.
print("Hello World") #print "Hello World"
"Hello World" #print "Hello World"
decimal.variable <- "is valid periods in variables"
escapecharacter <- "Backslash \ I quote \"Stay Hungry, Stay Foolish \" from Steve Jobs."
althyphen <- "Assignment operator is arrow Alt+- reads as gets"
class(althyphen) #print "character".  Data type variable data type.
typeof(althyphen) #print "character"
'
Single quotes for multiple line comments
Three examples of help
Press Ctrl+Shift+C to insert # for comment
'
1+2 #print 3
abs(-5) #print 5
variableequals = 1+2
absoluteinteger = 1L #Add the letter L for absolute integer at the end of the whole number.
ls() #stored variables in workspace memory.  Stored values.
'
[1] "absoluteinteger"                         "variableequals"  
'
rm(absoluteinteger) #remove variables absoluteinteger in workspace memory.  Delete data, delete values.
cat("Concatenate","these","three strings", sep=", ") #print Concatenate, these, three strings.  Combine strings, concatenate strings.  Default sep is one space.
sequenceofnumbers <-  1:10
sequenceofnumbers #print 1  2  3  4  5  6  7  8  9 10
sequencefunction <-  seq(1,10,by=2) #seq(from=1, to=10, by=2)
sequencefunction #print 1 3 5 7 9
#Help for abs function
?abs
help(abs)
base::abs
example(abs)
#Coercion.  Coercion inside variables for also instant display.
(x1threenumbers <- c(10,20,30)) #print 10 20 30.  RM:  Created a parabola chart for some reason?
(yninenumbers <- 1:9) #print 1 2 3 4 5 6 7 8 9
(combinevectors <- cbind.data.frame(x1threenumbers,yninenumbers)) #Combine vectors to data frame which is a list.  Cbind is column bind.
'
  x1threenumbers yninenumbers
1             10            1
2             20            2
3             30            3
4             10            4
5             20            5
6             30            6
7             10            7
8             20            8
9             30            9
'
typeof(combinevectors) #print list
is.data.frame(combinevectors) #print TRUE
typeof(combinevectors$x1threenumbers) #print double
str(combinevectors) #str is structure
'
\'data.frame\':	9 obs. of  2 variables:
 $ x1threenumbers: num  10 20 30 10 20 30 10 20 30
 $ yninenumbers  : int  1 2 3 4 5 6 7 8 9
'
changedatatypes <-c(100,"Gas-Toyota Camry",TRUE) #Coercion changes all values to the least restrictive data type.  Surround the vector in parenthesis for automatic coercion.  The changedatatypes variable in parenthesis changes all three values to character.  RM:  Coercion is automatic.  No need for additional parenthesis.  Maybe I activated automatic coercion?
changedatatypes
'
[1] "100"              "Gas-Toyota Camry" "TRUE"   
'
as.character(changedatatypes) #print direct use of coerce() is deprecated:  use as(from, class(to)) instead
'
[1] "100"              "Gas-Toyota Camry" "TRUE" 
'
changedatatypecharactertodoublefailed <- c("1","2","3")
changedatatypecharactertodoublefailed #print "1" "2" "3"
typeof(changedatatypecharactertodoublefailed) #print "character"
changedatatypecharactertodouble <- as.numeric(c("1","2","3"))
changedatatypecharactertodouble #print 1 2 3
typeof(changedatatypecharactertodouble) #print "double"
#Vectors.  Everything is a vector.  Assign one value to a vector, the vector is vector of one.  A value or values assigned to a variable.  One or more values of the same data type in an one dimensional array or a straight line.
vectormathx <- 1:5
vectormathy <- c(1,3,5,7,9)
vectormathx #print 1 2 3 4 5
vectormathy #print 1 3 5 7 9
sum(vectormathy) #print 25
mean(vectormathy) #print 5.  Add trim=0.10 removes the top 10% and the bottom 10%.
median(vectormathy) #print 5
var(vectormathy) #print 10.  Variance.
sd(vectormathy) #print 3.162278.  Standard deviation.
min(vectormathy) #print 1
max(vectormathy) #print 9
range(vectormathy) #print 1 9
vectormathx[2] #print 2.  Vector slicing slice vectors.
vectormathy[1:3] #print 1 3 5
vectormathx[c(1,5)] #print 1 5
vectormathy[-1] #print 3 5 7 9
vectormathy[-3] #print 1 3 7 9
vectormathy[-c(1,5)] #print 3 5 7
as.numeric(vectormathy) #print 1 3 5 7 9
vectormathy>=5 #print FALSE FALSE  TRUE  TRUE  TRUE
as.numeric(vectormathy>=5) #print 0 0 1 1 1
vectormathy[vectormathy<6] #print 1 3 5
vectormathx+10 #print 11 12 13 14 15
vectormathx/2 #print 0.5 1.0 1.5 2.0 2.5
twovectorssamelengthmath <- vectormathx + vectormathx
twovectorssamelengthmath #print 2  4  6  8 10
replicaterepeat <- rep("Repeat times replicate times",5) #rep(repeatwhat, times=number of times repeat).
replicaterepeat
'
[1] "Repeat times replicate times" "Repeat times replicate times" "Repeat times replicate times"
[4] "Repeat times replicate times" "Repeat times replicate times"
'
replicaterepeatconcatenate <- rep(c("Repeat times", "replicate times"),5)
replicaterepeatconcatenate
'
[1] "Repeat times"    "replicate times" "Repeat times"    "replicate times" "Repeat times"    "replicate times"
[7] "Repeat times"    "replicate times" "Repeat times"    "replicate times"
'
replicaterepeatconcatenatecollate <- rep(c("Repeat first", "replicate second"),each=5)
replicaterepeatconcatenatecollate
'
[1] "Repeat first"     "Repeat first"     "Repeat first"     "Repeat first"     "Repeat first"     "replicate second"
[7] "replicate second" "replicate second" "replicate second" "replicate second"
'
vectoryears <- c(2016,2017,2018,2019,2020) #c stands for concatenate or combine
is.vector(vectoryears) #print TRUE.  Check vector.  Confirm vector.
vectorpaymentmethods <- c("Cash","Check","Credit Card","Gift Card","Crypto")
class(vectorpaymentmethods) #print "character"
indexingvector <- c("Super Bowl","Zion National Park","COVID-19","Black Friday","Cyber Monday","Desktop 2","Gilroy Gardens")
indexingvector #Index starts at number 1.  In other words, slicing slice.
'
[1] "Super Bowl"         "Zion National Park" "COVID-19"           "Black Friday"       "Cyber Monday"      
[6] "Desktop 2"          "Gilroy Gardens"   
'
indexingvector[2] #print "Zion National Park"
indexingvector[1:4]
'
[1] "Super Bowl"         "Zion National Park" "COVID-19"           "Black Friday"  
'
indexingvector[-1]
'
[1] "Zion National Park" "COVID-19"           "Black Friday"       "Cyber Monday"       "Desktop 2"         
[6] "Gilroy Gardens"   
'
indexingvector[c(T,T,F,T,F,F,T)]
'
[1] "Super Bowl"         "Zion National Park" "Black Friday"       "Gilroy Gardens"  
'
substringpartofstring <- substr(indexingvector,1,3) #extract string extract characters.  Index starts at 1, three characters extracting
substringpartofstring #print "Sup" "Zio" "COV" "Bla" "Cyb" "Des" "Gil"
#Factors.  Categorical variables.  Not strings, not numbers.  Use vectors to create factors.  Factors are distinct values in a vector.  Unique factors.
vectorasfactor <- as.factor(c("Gas","Restaurant","Medical Insurance","Gym","Gym","Gas","Medical Insurance"))
vectorasfactor
'
[1] Gas               Restaurant        Medical Insurance Gym               Gym               Gas              
[7] Medical Insurance
Levels: Gas Gym Medical Insurance Restaurant
'
is.factor(vectorasfactor) #print TRUE
statespurchasevector <- c("CA","NV","UT","FL","CA","CA","NV","DC","IL","UT")
statespurchasevector #print "CA" "NV" "UT" "FL" "CA" "CA" "NV" "DC" "IL" "UT"
statespurchasevectorfactor <- factor(statespurchasevector)
statespurchasevectorfactor
'
 [1] CA NV UT FL CA CA NV DC IL UT
Levels: CA DC FL IL NV UT
'
levels(statespurchasevectorfactor) #print "CA" "DC" "FL" "IL" "NV" "UT"
length(unique(statespurchasevectorfactor)) #print 6
nlevels(statespurchasevectorfactor) #print 6.  Number of unique values.
unique(statespurchasevectorfactor) #Unique values
'
[1] CA NV UT FL DC IL
Levels: CA DC FL IL NV UT
'
#Matrix.  Matrices or matrixes used in base R.  A two dimensional rectangular data set.  Same length or same number of rows.  Same data type.  Columns are not named.  Columns are referred as index numbers.
matrixdata <- c("apple","banana","string 30","default down and right","six","entries")
matrixdatatworowsthreecolumns <- matrix(matrixdata,nrow=2, ncol=3, byrow=FALSE) #matrix(matrixdata,2,3)
matrixdatatworowsthreecolumns
'
     [,1]      [,2]                     [,3]     
[1,] "apple"   "string 30"              "six"    
[2,] "banana" "default down and right" "entries"
'
typeof(matrixdatatworowsthreecolumns) #print character
is.list(matrixdatatworowsthreecolumns) #print FALSE
is.data.frame(matrixdatatworowsthreecolumns) #print FALSE
is.matrix(matrixdatatworowsthreecolumns) #print TRUE
matrixdatatworowsthreecolumns[2] #print banana.  Matrix indexing.  Matrix slicing.
matrixdatatworowsthreecolumns[3] #print string 30
matrixdatatworowsthreecolumns[1,2] #print string 30
matrixdatatworowsthreecolumns[2,] #All row 2
'
"banana"                "default down and right" "entries" 
'
matrixdatatworowsthreecolumns[,3] #All column 3
'
"six"     "entries"
'
matrixdatatworowsthreecolumns[2,c(1,3)] #Column 1, column 3, all row 2
'
"banana"  "entries"
'
matrixdatathreerowstwocolumns <- matrix(matrixdata,3,2)
matrixdatathreerowstwocolumns
'
     [,1]        [,2]                    
[1,] "apple"     "default down and right"
[2,] "banana"   "six"                   
[3,] "string 30" "entries" 
'
combinetwomatrix = matrix(c("Safeway","Chevron","Costco","The Habit","Target","Smart & Final"),ncol=2,nrow=3,byrow=FALSE) 
combinetwomatrix
'
     [,1]      [,2]           
[1,] "Safeway" "The Habit"    
[2,] "Chevron" "Target"       
[3,] "Costco"  "Smart & Final"
'
combinevectorsbecomematarix <- cbind(matrixdata,c("Safeway","Chevron","Costco","The Habit","Target","Smart & Final")) #combine vectors combine to become a matrix.  c("Safeway","Chevron","Costco","The Habit","Target","Smart & Final") is a vector.
combinevectorsbecomematarix
'     matrixdata                              
[1,] "apple"                  "Safeway"      
[2,] "bananna"                "Chevron"      
[3,] "string 30"              "Costco"       
[4,] "default down and right" "The Habit"    
[5,] "six"                    "Target"       
[6,] "entries"                "Smart & Final"
'
typeof(combinevectorsbecomematarix) #print character
is.data.frame(combinevectorsbecomematarix) #print FALSE
is.matrix(combinevectorsbecomematarix) #print TRUE
#Lists.  Vector lists for which each vector is it's own data type.
listvariable <- list(vectoryears, vectorpaymentmethods, vectorasfactor,20,"Number 20",list("List within a list","Click magnifying glass in Environemnt tab to view list items","function mean"),mean)
listvariable
'
[[1]]
[1] 2016 2017 2018 2019 2020

[[2]]
[1] "Cash"        "Check"       "Credit Card" "Gift Card"   "Crypto"  

[[3]]
[1] Gas               Restaurant        Medical Insurance Gym               Gym               Gas              
[7] Medical Insurance
Levels: Gas Gym Medical Insurance Restaurant

[[4]]
[1] 20

[[5]]
[1] "Number 20"

[[6]]
[[6]][[1]]
[1] "List within a list"

[[6]][[2]]
[1] "Click magnifying glass in Environemnt tab to view list items"

[[6]][[3]]
[1] "function mean"


[[7]]
function (x, ...) 
UseMethod("mean")
<bytecode: 0x55bc2dc559d0>
<environment: namespace:base>
'
str(listvariable) #list data types each list item.  Structure function.
'
List of 7
 $ : num [1:5] 2016 2017 2018 2019 2020
 $ : chr [1:4] "Cash" "Check" "Credit Card" "Gift Card"
 $ : Factor w/ 4 levels "Gas","Gym","Medical Insurance",..: 1 4 3 2 2 1 3
 $ : num 20
 $ : chr "Number 20"
 $ :List of 3
  ..$ : chr "List within a list"
  ..$ : chr "Click magnifying glass in Environemnt tab to view list items"
  ..$ : chr "function mean"
 $ :function (x, ...)  
'
indexinglist <- list("years"=c(2016,2017,2018,2019,2020),"payment methods"=c("Cash","Check","Credit Card","Gift Card","Crypto"),"category"=c("Gas","Restaurant","Medical Insurance","Gym","Gym","Gas","Medical Insurance"),onewordnoquotes=20,"Number 20",list("List within a list","Click magnifying glass in Environemnt tab to view list items","function mean"),mean)
indexinglist
'
$years
[1] 2016 2017 2018 2019 2020

$`payment methods`
[1] "Cash"        "Check"       "Credit Card" "Gift Card"   "Crypto"     

$category
[1] "Gas"               "Restaurant"        "Medical Insurance" "Gym"               "Gym"              
[6] "Gas"               "Medical Insurance"

$onewordnoquotes
[1] 20

[[5]]
[1] "Number 20"

[[6]]
[[6]][[1]]
[1] "List within a list"

[[6]][[2]]
[1] "Click magnifying glass in Environemnt tab to view list items"

[[6]][[3]]
[1] "function mean"


[[7]]
function (x, ...) 
UseMethod("mean")
<bytecode: 0x557682492eb8>
<environment: namespace:base>
'
typeof(indexinglist) #print list
is.data.frame(indexinglist) #print FALSE
indexinglist[[1]]
'
[1] 2016 2017 2018 2019 2020
'
listnames <- names(indexinglist)
listnames
'
[1] "years"           "payment methods" "category"        "onewordnoquotes" ""                ""               
[7] "" 
'
indexinglist$`payment methods` #print "Cash"        "Check"       "Credit Card" "Gift Card"   "Crypto"
#Data frames.  A vector lists of different data types.  A tabular data set like an Excel table.  Excel tables.  All vectors must be equal length.  Use NA for missing vector value or missing vector element.  Multiple data values.  Same length or same number of rows.  Include column header names.  #Dataframes.
createtable <- data.frame(column=vectoryears,names=vectorpaymentmethods) #data frame 
createtable
'
  column       names
1   2016        Cash
2   2017       Check
3   2018 Credit Card
4   2019   Gift Card
5   2020      Crypto
'
typeof(createtable) #print list
is.data.frame(createtable) #print TRUE
str(createtable)
'
\'data.frame\':	5 obs. of  2 variables:
 $ column: num  2016 2017 2018 2019 2020
 $ names : chr  "Cash" "Check" "Credit Card" "Gift Card" ...
'
equalrowsdataframe <- data.frame(firstcolumn=c("a","b","c","d","e"),vectors=c(1,2,3,4,5))
equalrowsdataframe
'
  firstcolumn vectors
1           a       1
2           b       2
3           c       3
4           d       4
5           e       5
'
View(equalrowsdataframe) #opens a tab to view data frame.  Must be upper case V in View.
equalrowsdataframe$firstcolumn #print "a" "b" "c" "d" "e"
equalrowsdataframe[[1]] #print "a" "b" "c" "d" "e"
equalrowsdataframe[[1]][3] #print "c"
equalrowsdataframe[[1]][2:4] #print "b" "c" "d"
equalrowsdataframe[3,2] #print 3.  Third row, second column.
equalrowsdataframe[2,] #All row two.
'
  firstcolumn vectors
2           b       2
'
equalrowsdataframe[c(1,4,5),] #A vector of row numbers
'
  firstcolumn vectors
1           a       1
4           d       4
5           e       5
'
tidyversedataset <- tribble(~column1, ~column2, ~column3, "row1", NA, 10, "row2", 20, 12) #tribble with an r is the correct spelling.  Need tidyverse package.
tidyversedataset
'
# A tibble: 2 × 3
  column1 column2 column3
  <chr>     <dbl>   <dbl>
1 row1         NA      10
2 row2         20      12
'
library(datapasta) #Copy and paste file instead of import file.  View the file to be copied by single click file name in Files tab bottom right, select View File opens a tab to look at file.  Select all, copy the file.  Click Addins below menu bar, under DATAPASTA, select Paste as tribble.  Assign a variable to the tribble.
copypastedatavariable <- tibble::tribble(
    ~ID, ~Reason.Went.Out,
    1L,       "Must Eat",
    2L,         "Family",
    3L,        "Friends",
    4L,  "Self Pleasure",
    5L,           "Date",
    6L,   "Professional"
)
copypastedatavariable
'# A tibble: 6 × 2
     ID Reason.Went.Out
  <int> <chr>          
1     1 Must Eat       
2     2 Family         
3     3 Friends        
4     4 Self Pleasure  
5     5 Date           
6     6 Professional   
'
dataframelist <- data.frame(firstlist=list("a","b","c","d","e"),listdataframe=list(1,2,3,4,5))
dataframelist
'
  firstlist..a. firstlist..b. firstlist..c. firstlist..d. firstlist..e. listdataframe.1 listdataframe.2
1             a             b             c             d             e               1               2
  listdataframe.3 listdataframe.4 listdataframe.5
1               3               4               5
'
matrixdatapersonplace <- c("Safeway","Chevron","Costco","The Habit","Target","Smart & Final")
vectortodataframe <- as.data.frame(cbind(matrixdata,c("Safeway","Chevron","Costco","The Habit","Target","Smart & Final"))) #Convert vector to data frame
vectortodataframe
'
              matrixdata            V2
1                  apple       Safeway
2                bananna       Chevron
3              string 30        Costco
4 default down and right     The Habit
5                    six        Target
6                entries Smart & Final
'
vectortodataframeheaders <- as.data.frame(cbind(matrixdata,matrixdatapersonplace)) #Convert vector to data frame
vectortodataframeheaders
'
              matrixdata matrixdatapersonplace
1                  apple               Safeway
2                bananna               Chevron
3              string 30                Costco
4 default down and right             The Habit
5                    six                Target
6                entries         Smart & Final
'
typeof(vectortodataframeheaders) #print list
is.data.frame(vectortodataframe) #print TRUE
is.matrix(vectortodataframe) #print FALSE
#Arrays.  Same as a matrix with three or more dimensions.  (number of rows, number of columns, number of tables or number of arrays.)
assignarray <- array(c("One instructor","rarely uses arrays","dim is dimensions","two rows","three columns","four arrays printed","repeat vector content if necessary"),dim=c(2,3,4))
assignarray
'
, , 1

     [,1]                 [,2]                [,3]                 
[1,] "One instructor"     "dim is dimensions" "three columns"         
[2,] "rarely uses arrays" "two rows"       "four arrays printed"

, , 2

     [,1]                                 [,2]                 [,3]         
[1,] "repeat vector content if necessary" "rarely uses arrays" "two rows"
[2,] "One instructor"                     "dim is dimensions"  "three columns" 

, , 3

     [,1]                                 [,2]                 [,3]               
[1,] "four arrays printed"                "One instructor"     "dim is dimensions"
[2,] "repeat vector content if necessary" "rarely uses arrays" "two rows"      

, , 4

     [,1]                  [,2]                                 [,3]                
[1,] "three columns"          "repeat vector content if necessary" "rarely uses arrays"
[2,] "four arrays printed" "One instructor"                     "dim is dimensions"
'
#Conditionals if else control flow #If else
xif = 5
yif = 1
if (xif > yif) {print("Conditional:  if(condition) {expression}")} #print Conditional:  if(condition) {expression}
if (xif < yif) {print("Conditional:  if(condition) {expression} else {expression}")} else {print("if else")} #print if else
if (5000000 > 100000) {print("Print the true statement from (5000000 > 100000)")} else if (5000000 < 100000) {print("Print false statement from (5000000 > 100000)")} else {print("The two conditions are false")} #print Print the true statement from (5000000 > 100000)
if (5000000 == 100000) {print("Print the true statement from (5000000 > 100000)")} else if (5000000 < 100000) {print("Print false statement from (5000000 > 100000)")} else {print("The two conditions are false")} #print The two conditions are false
if (5000000 == 100000) {print("Print the true statement from (5000000 > 100000)")} else if (5000000 < 100000) {print("Print false statement from (5000000 > 100000)")} else {xif} #print 5.  From xif = 5
#For loop
for (eachvalue in 1:5) {print(eachvalue)} #print 1\n 2\n 3\n 4\n 5
for (singlenumber in 1:100) {
    if (singlenumber %% 3 == 0 & singlenumber %% 5 == 0) {cat(singlenumber,"divisible by three and five\n",sep=" ")}
    else if (singlenumber %% 3 == 0) {cat(singlenumber,"divisible by three\n",sep=" ")}
    else if (singlenumber %% 5 == 0) {cat(singlenumber,"divisible by five\n",sep=" ")}
    else {cat(singlenumber,"not divisible by three or five\n",sep=" ")}
    
}
'
...
25 divisible by five
26 not divisible by three or five
27 divisible by three
28 not divisible by three or five
29 not divisible by three or five
30 divisible by three and five
...
'
#While loop
initialvalue = 1
while (initialvalue < 5) {print(initialvalue)
    initialvalue <- initialvalue + 1} #print 1\n 2\n 3\n 4.  initialvalue <- initialvalue + 1 must be in a separate line.
#Functions
'
functiontemplate <- function(value1,value2) {
*insert code*
return(*result*)
}
'
addtwonumbers <- function(number1,number2){
    answer <- number1+number2
    return(answer)
}
addtwonumbers(10,22) #print 32
addtwonumbers(number2=101,number1=9) #print 110
addtwonumbers
'
function(number1,number2){
    answer <- number1+number2
    return(answer)
}
<bytecode: 0x557685609a20>
'

#Enter data in console.
numbersonlydataentryinconsole <- scan() #Basic scan() function.  Numbers only.  Press enter twice to stop
numbersonlydataentryinconsole #print 45.00      98.00     248.00       0.58     197.00 1999999.00

#Apply function which is a for loop
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv", head=TRUE)
averageamountmarginstwocolumn <- apply(X=dataframeexpenses["Amount"], MARGIN = 2,FUN = mean,na.rm=FALSE)
averageamountmarginstwocolumn #print Amount\n 47.46389
multiplecolumnsaverages <- apply(X=dataframeexpenses[c("Amount","Tax")], MARGIN = 2, FUN = mean, na.rm=TRUE)
multiplecolumnsaverages
'
   Amount       Tax 
47.463889  1.883434 
'
sumamounttaxmarginsonerow <- apply(X=dataframeexpenses[c("Amount","Tax")], MARGIN = 1, FUN = sum, na.rm=TRUE)
head(sumamounttaxmarginsonerow) #print 9.36 12.19 30.20 28.31 42.18 32.51
#FUN= multiple options such as FUN=max, percentiles FUN=quantile, probs=c(0.2,.80) for 20% percentile and 80% percentile.
linechart <- apply(X=dataframeexpenses["Amount"],MARGIN = 2,FUN = plot, type="l",main="Main title",xlab="x label",ylab="ylabel")
amountbudgetedexpensescolumns <- dataframeexpenses[c("Amount","Subtract.From.Budgeted.Expenses")]
averageamountyesnobudgetedexpenses <- tapply(X=amountbudgetedexpensescolumns$Amount, INDEX=amountbudgetedexpensescolumns$Subtract.From.Budgeted.Expenses, FUN=mean, na.rm=FALSE)
averageamountyesnobudgetedexpenses
'
   FALSE     TRUE 
58.25232 18.27858 
'
tapply(X=amountbudgetedexpensescolumns$Amount, INDEX=amountbudgetedexpensescolumns$Subtract.From.Budgeted.Expenses, FUN=summary)
'
$No
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-5284.85     4.81    11.94    58.25    30.82  5284.85 

$Yes
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-196.64    3.00    7.94   18.28   14.84 1294.85 
'
tapply(X=amountbudgetedexpensescolumns$Amount, INDEX=amountbudgetedexpensescolumns$Subtract.From.Budgeted.Expenses, FUN=quantile, probs=c(0.2,.80))
'
$No
   20%    80% 
 3.796 40.834 

$Yes
   20%    80% 
 2.194 19.470 
'
tapply(X=dataframeexpenses$Amount, INDEX=list(dataframeexpenses$Payment.Method, dataframeexpenses$Subtract.From.Budgeted.Expenses), FUN=mean, na.rm=TRUE)
'
                       FALSE       TRUE
                          NA  13.130000
Cash               19.519677  10.170237
Check              84.810880  39.250000
Gift Card-Amazon   24.881250   9.780000
Gift Card-Costco   19.668000         NA
Gift Card-REI      53.140000         NA
Gift Card-Safeway   5.000000         NA
Gift Card-Target   10.806190  15.695000
...
'