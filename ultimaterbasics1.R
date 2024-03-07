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
#Install package install.packages("*packagename*"); for example, install.packages("tidyverse")
#Activate package type library(*packagename no quotes*); for example, library(tidyverse).  Also, require(*packagename no quotes*) to return a confirmation message.
#Deactivate package type detach("package:*packagename*", unload=True); for example, detach("package:ggplot2", unload = TRUE).  RM:  it seems no need for unload=True because Error: object 'True' not found.
#Help package type packagename::*type partial attribute* to search in packagename; for example, type base::*letter e* which is base::e, then wait a moment for a popup window of attributes beginning with the letter e.  Another way is ?*r command*; for example, ?detach
#Clear plots if there are plots dev.off()
#Clear Console tab cat("\014")
#packagename::*type partial attribute* to search in packagename; for example, type base::*letter e* or base::e

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

#Charts, graphs
#cex= is the size of plots.  cex.main= is the size of the title.  cex.lab= is the size of the axis titles.  cex.axis is the size of the axis labels.  font.main=a number changes title font.  font.label=a number changes the axis titles fonts.  font.axis=a number changes the axis labels fonts.  col=a number changes the plot color.  col.main= changes the title color.  col.lab= changes the axis title color.  col.axis= changes the axis labels color.  Use pch=a number or a letter to change the plot symbol, plot character, plot shape.
#lty=a number is the line type of line; for example 1 is solid line, 2 is dash, 3 is line dots.  lwd=a number is the line width line thickness.  xlab="x axis label".  ylab="y axis label".  main="main chart title".  axes=FALSE no axes no x-axis no y-axis.
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv",head=TRUE)
dataframecategories <- read.csv("/home/mar/rstudio/endgamecsvcategories.csv",head=TRUE)
#Charts, graphs scatterplot
plot(dataframeexpensespositiveamounts$Amount,dataframeexpensespositiveamounts$Tax, pch=19, cex=1.5, col="#cc0000", main="Scatterplot title 150% bigger size", xlab="x-axis label Amount", ylab="y-axis label Tax", xlim=c(0,2000)) #scatterplot x-axis Amount, y-axis Tax.  pch is point circle or type of plot shape plot symbol, cex is size of plot in percentage decimal, col is color in hex code.  xlim limits the x-axis range from 0 to 2000.
text(x=750,y=60,label="Add text add label on chart immediately above at coordinates centered x=750 and y=60")
text(x=500,y=60,label="Add text add label on chart immediately above at coordinates started x=500 and y=60", adj=0) #adj=1 means label ends at the x coordinate.
text(x=500,y=60,label="cex=0.5 is 50% smaller font size blue font bold and italized", cex=0.5,adj=0,col=4,font=4)
abline(lm(dataframeexpensespositiveamounts$Tax~dataframeexpensespositiveamounts$Amount), col=4, lwd=2) #create a blue color linear regression line for the scatterplot immediately above.  Line width is doubled.
mtext(text="Blue bold and italized text 25% bigger on the margin 1 is bottom, 2 is left, 3 top, 4 right. adj 1 is right side, adj 0 is left side, adj 0.75 is between center and right side.", side=1, adj=1, col=4, cex=1.25, font=4)
legend(x=1000,y=100,legend=c("red color circle Amount and its Tax","pretend another category blue triangle dots"),col=c(2,4), pch=c(16,17), bty="n") #legend top left corner x=1000, y=100.  pch is plotting character number.  No box no border bty="n".

#Charts, graphs bar chart
tableforbarplot <- table(dataframecategories$General.Category)
plot(tableforbarplot) #bar chart as lines x-axis General Category column y-axis count General Category
barplot(tableforbarplot, main="Main title", xlab="x axis label", ylab="y axis label", las=1) #bar chart x-axis General Category column y-axis count General Category.  las=1 rotates y-axis labels horizontal.  Horizontal bar chart type horiz=TRUE.
stackedbarchart <- dataframeexpenses[dataframeexpenses$Payment.Method=="Cash"|dataframeexpenses$Payment.Method=="Visa-Chase",c("Payment.Method","Subtract.From.Budgeted.Expenses","Amount")]
head(stackedbarchart)
'
  Payment.Method Subtract.From.Budgeted.Expenses Amount
1     Visa-Chase                           FALSE   8.63
2           Cash                            TRUE  11.24
3           Cash                            TRUE  28.00
4           Cash                            TRUE  23.63
5           Cash                            TRUE  39.04
6           Cash                           FALSE  32.51
'
stackedbarcharttable <- table(stackedbarchart$Payment.Method,stackedbarchart$Subtract.From.Budgeted.Expenses)
stackedbarcharttable
'
             FALSE TRUE
  Cash         155  169
  Visa-Chase   556  170
'
barplot(stackedbarcharttable, beside=TRUE, legend.text=c("Custom legend top description","Visa-Chase bottom description"), main="Main title", xlab="x axis label cash bar chart red Visa-Chase bar chart blue",ylab="y axis label las=1 rotate labels horizontally",las=1,col=c(2,4)) #Stacked bar chart.  FALSE Subtract From Budgeted Expenses is left and TRUE Subtract From Budgeted Expenses is right.  Cash and Visa-Chase are side by side.

#Charts, graphs histogram
hist(dataframeexpenses$Amount) #histogram chart default x-axis Amount y-axis frequency or count.  0 is at the center; 0, 2000, 4000, 6000 from center to right.  0, -2000, -400, -6000 from center to left.
#par(mfrow = c(3,1)) #par stands for parameter.  Change parameters for three charts stacked vertically.  c(number of charts per row, number of columns).  Display multiple charts.  Return multiple charts.  par(mfrow=c(1,1)) change parameters to default.
hist(dataframeexpenses$Amount[dataframeexpenses$Amount>=0], main="Histogram chart Amount greater than equal to zero", freq=TRUE, breaks=c(0,50,100,500,1000,5000,10000)) #histogram specify the bins range 0 to 49.99, 50 to 99.99, 100 to 499.99, 500 to 999.99, 1000 to 4999.99, and 5000 and greater.  10,000 is the largest amount printed on x-axis.
hist(dataframeexpenses$Amount, freq=FALSE, main="Probability density percentages instead of count or frequency count")
#or
hist(dataframeexpenses$Amount, prob=TRUE, main="Probability density percentages instead of count or frequency count")
lines(density(dataframeexpenses$Amount), col=2, lwd=3) #inserts a density red color 3 width line for the above histogram chart.
hist(dataframeexpenses$Amount [dataframeexpenses$Name == "Safeway-Winchester Payne"], xlim = c(0,70), breaks = 10, main = "Histogram title, x-axis amount range, breaks suggested number of bars", xlab="x-label Safeway-Winchester Payne amounts red color bars",col = "red")
hist(dataframeexpenses$Amount [dataframeexpenses$Name == c("Safeway-Winchester Payne","Safeway-Hamilton Avenue")]) #Warning message:  In dataframeexpenses$Name == c("Safeway-Winchester Payne", "Safeway-Hamilton Avenue") : longer object length is not a multiple of shorter object length
hist(dataframeexpenses$Amount [dataframeexpenses$Event == c("Super Bowl 50","Super Bowl LI","Super Bowl","Super Bowl LIII","Super Bowl LVI","Super Bowl LVII")]) #RM  histogram chart is incorrect
hist(dataframeexpenses$Amount [dataframeexpenses$Name == "Safeway-Winchester Payne"], breaks = 10, col="red", freq=FALSE, main = paste("Histogram title", "paste function multiple lines,", "breaks suggested number of bars"), xlab="x-label Safeway-Winchester Payne amounts freq=FALSE show density not frequency on y-axis")
hist(dataframeexpenses$Amount[dataframeexpenses$Amount >= 500],main="Main title Amount greater than equal 500") #histogram chart x-axis Amount from 0 to 6000 every 1000.  Frequency y-axis from 0 to 10 every twos.
hist(dataframeexpenses$Amount[dataframeexpenses$Payment.Method == "Visa-Chase" & dataframeexpenses$Subtract.From.Budgeted.Expenses == TRUE], main="Visa-Chase Subtract From Budged Expenses Count")
curve(dnorm(x,mean=mean(dataframeexpenses$Amount [dataframeexpenses$Name == "Safeway-Winchester Payne"]),sd=sd(dataframeexpenses$Amount [dataframeexpenses$Name == "Safeway-Winchester Payne"])), col="blue", lwd=2, add=TRUE) #Use x as the generic variable name.  lwd is line width, add=TRUE means superimpose curve bell shape curve chart on previous chart.  Multiple graphs on one chart.
rug(dataframeexpenses$Amount [dataframeexpenses$Name == "Safeway-Winchester Payne"], lwd=2, col="green") #Vertical lines underneath the chart to indicate the data points; in particular, the individual amount observations along the x-axis.
#RM:  the curve(dnorm(x,mean=mean(dataframeexpenses$Amount... and rug(dataframeexpenses$Amount [dataframeexpenses$Name... are part of the hist(dataframeexpenses$Amount[dataframeexpenses$Payment.Method... histogram

#Charts, graphs box plot
boxplot(dataframeexpenses$Amount, main="Main title",xlab="x axis label",ylab="y axis label", las=1) #Boxplot charts
boxplot(dataframeexpenses$Amount, main="Main title",xlab="x axis label",ylab="set y limit from 0 to 1000", ylim=c(0,1000), las=1)
boxplot(dataframeexpenses$Amount ~ dataframeexpenses$Subtract.From.Budgeted.Expenses, main="Separate amount by yes and no subtract from budgeted expenses.  FALSE left boxplot.  TRUE right boxplot")
#or
boxplot(dataframeexpenses$Amount[dataframeexpenses$Subtract.From.Budgeted.Expenses=="FALSE"], dataframeexpenses$Amount[dataframeexpenses$Subtract.From.Budgeted.Expenses=="TRUE"], main="Separate amount by no and yes subtract from budgeted expenses")
boxplot(dataframeexpenses$Amount[dataframeexpenses$Amount>=100]~dataframeexpenses$Subtract.From.Budgeted.Expenses[dataframeexpenses$Amount>=100], main="Main title", ylab="Amount Greater Than Equal 100", xlab="Subtracted From Budgeted Expenses FALSE and TRUE Amount >=100",las=1)
amountgroup <- cut(dataframeexpenses$Amount, breaks=c(0,50,100,500,1000,5000,100000), labels=c("0to49.99","50to99.99","100to499.99","500to999.99","1000to4999.99","5000andgreater")) #Grouping group for boxplot chart
dataframeexpenses$Amount[1:10] #print 8.63  11.24  28.00  23.63  39.04  32.51   5.99  20.00 430.57   3.86
amountgroup[1:10]
'
 [1] 0to49.99    0to49.99    0to49.99    0to49.99    0to49.99    0to49.99    0to49.99    0to49.99    100to499.99
[10] 0to49.99   
Levels: 0to49.99 50to99.99 100to499.99 500to999.99 1000to4999.99 5000andgreater
'
levels(amountgroup) #print "0to49.99"      "50to99.99"     "100to499.99"   "500to999.99"   "1000to4999.99" "5000andgreater"
boxplot(dataframeexpenses$Amount~dataframeexpenses$Subtract.From.Budgeted.Expenses*amountgroup, main="Main title", ylab="Amount", xlab="Subtracted From Budgeted Expenses FALSE and TRUE Amount by Amount groups",las=2,col=c(4,2)) #Create a box plot FALSE and TRUE by amountgroup.  Ten boxplots total.  las=2 means x-axis labels rotated vertically.  col is color.  c(4,2) is c(blue, red) blue FALSE red TRUE.

#Charts, graphs pie chart
tableforbarplot <- table(dataframecategories$General.Category)
pie(tableforbarplot, main="Main title") #pie chart
box() #Add a box or add a border around the pie chart.  Run box() function afterwards.

barchartdataframe <- dataframeexpenses[c("ID","Transaction.Date","Amount","Payment.Method","Subtract.From.Budgeted.Expenses")] #select columns, slice
barchartdataframe$Transaction.Date.Year <- format(as.Date(barchartdataframe$Transaction.Date, format="%m/%d/%Y"),"%Y") #insert new column
head(barchartdataframe)
'
    ID Transaction.Date Amount Payment.Method Subtract.From.Budgeted.Expenses Transaction.Date.Year
1 7825       11/16/2019   8.63     Visa-Chase                           FALSE                  2019
2 7826       11/24/2020  11.24           Cash                            TRUE                  2020
3 7827       11/12/2020  28.00           Cash                            TRUE                  2020
4 7828       10/26/2020  23.63           Cash                            TRUE                  2020
5 7829        9/23/2020  39.04           Cash                            TRUE                  2020
6 7830        8/27/2020  32.51           Cash                           FALSE                  2020
'
typeof(barchartdataframe$Transaction.Date.Year) #print character
stem(as.integer(barchartdataframe$Transaction.Date.Year))
'
  The decimal point is at the |

  2016 | 00000000000000000000000000000000000000000000000000000000000000000000+290
  2016 | 
  2017 | 00000000000000000000000000000000000000000000000000000000000000000000+200
  2017 | 
  2018 | 00000000000000000000000000000000000000000000000000000000000000000000+174
  2018 | 
  2019 | 00000000000000000000000000000000000000000000000000000000000000000000+181
  2019 | 
  2020 | 00000000000000000000000000000000000000000000000000000000000000000000+105
  2020 | 
  2021 | 00000000000000000000000000000000000000000000000000000000000000000000+67
  2021 | 
  2022 | 00000000000000000000000000000000000000000000000000000000000000000000+66
  2022 | 
  2023 | 000000000000000000000000000000000000000000000000000000
'

#Charts, graphs, filter data, ggplot2
library(ggplot2)
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv",head=TRUE)

#ggplot2 histogram
ggplot(data = smalleramountunder1,mapping = aes(x=Amount))+geom_histogram(binwidth = .1) #histogram chart ten bins from 0.00 to 1.00
ggplot(dataframeexpenses, aes(x=Tax))+theme_bw()+geom_histogram(binwidth = 5)+labs(y="Tax count",x="Tax Paid",title="Histogram chart title") #histogram chart x axis is Tax, y axis is count.
ggplot(dataframeexpenses, aes(x=Tax, fill=Subtract.From.Budgeted.Expenses))+theme_bw()+geom_histogram(binwidth = 5)+labs(y="Tax count",x="Tax Paid by Budgeted Expenses",title="Histogram chart title") #histogram use geom_histogram chart.  x axis is Tax, y axis is count broken down by FALSE and TRUE Subtract From Budgeted Expenses.
ggplot(dataframeexpenses, aes(x=Tax, fill=Subtract.From.Budgeted.Expenses))+geom_bar()+theme_bw()+facet_wrap(Payment.Method~Going.Out)+labs(y="y axis label count",title="Tax count by Budgeted Expenses") #histogram use geom_bar() broken down by FALSE and TRUE Subtract From Budgeted Expenses.  Separate barchart by Payment Method and then Going Out columns facet or drill down; for example, bar chart for Cash Family, bar chart for Cash Friends, bar chart for Cash Must Eat.  x-axis is Tax, y-axis is count of Payment Method. theme_bw is white background.  Multiple drill down.
barchartdataframe <- dataframeexpenses[c("ID","Transaction.Date","Amount","Payment.Method","Subtract.From.Budgeted.Expenses")] #select columns, slice
barchartdataframegreaterzero <- barchartdataframe[which(barchartdataframe$Amount > 0),]
barchartdataframegreaterzerolessthan100 <- barchartdataframegreaterzero[which(barchartdataframegreaterzero$Amount < 100),]
ggplot(barchartdataframegreaterzerolessthan100,aes(x=Amount))+geom_histogram(binwidth=10)+ggtitle("Count Distribution By Amount")+xlab("Amount xlabel")+ylab("Total Count ylabel")+ylim(0,500) #Histogram chart count the Amount column distribution from 0.01 to 99.99.  10 bins breakout by ten.
ggplot(barchartdataframegreaterzerolessthan100,aes(x=Amount,fill=Payment.Method))+geom_histogram(binwidth=10)+facet_wrap(~Subtract.From.Budgeted.Expenses)+ggtitle("Count Distribution By Amount")+ggtitle("Main title breakdown by Yes No Subtract From Budgeted Expenses")+xlab("Amount xlabel")+ylab("Total Count ylabel")+ylim(0,500)+labs(fill="Legend title Payment Method") #Histogram chart count the Amount column distribution from 0.01 to 99.99.  10 bins breakout by ten.  Each bar color coded by Payment Method.  Two histograms by False Subtract From Budgeted Expenses and True Subtract From Budgeted Expenses.

#ggplot2 boxplot
ggplot(data=dataframeexpensespositiveamounts)+geom_boxplot(mapping=aes(x=reorder(Payment.Method, Amount,FUN=median),y=Amount)) #boxplot chart x axis is Payment Methods, y axis is Amount
ggplot(dataframeexpenses, aes(x=Subtract.From.Budgeted.Expenses, y=Amount))+theme_bw()+geom_boxplot()+labs(y="Amount",x="Subtract From Budgeted Expenses",title="Box and Whisker chart title") #x axis is FALSE and TRUE for Subtract From Budgeted Expenses, y axis is the amount.  Show the Amount distribution by Subtract From Budgeted Expenses including average 50%, 25%, 75%, and outliers.  Box plot.

#ggplot2 scatterplot
ggplot(data = dataframeexpenses)+geom_point(mapping = aes(x=Transaction.Date, y=Amount)) #scatterplot x-axis Transaction Date, y-axis Amount
ggplot(data = dataframeexpenses)+geom_point(mapping = aes(x=Transaction.Date, y=Amount, color=Payment.Method)) #scatterplot x-axis Transaction Date, y-axis Amount, different colors represent different payment methods
ggplot(data = dataframeexpenses)+geom_point(mapping = aes(x=Transaction.Date, y=Amount))+facet_wrap(~Going.Out, nrow=3) #scatterplot x-axis Transaction Date, y-axis Amount, multiple scatterplots by Going Out which includes nulls in three rows.  RM:  ID 7858 Going Out field is `.
ggplot(data = dataframeexpenses)+geom_point(mapping = aes(x=Transaction.Date, y=Amount))+facet_grid(Going.Out~Subtract.From.Budgeted.Expenses) #scatterplot x-axis Transaction Date, y-axis Amount, multiple scatterplots x-axis horizontal or column headers False and True Subtract From Budgeted Expenses and y-axis vertical or row headers reason Going Out.  facet_grid(y-axis~x-axis).
ggplot(data = dataframeexpenses)+geom_point(mapping = aes(x=Transaction.Date, y=Amount))+geom_smooth(mapping=aes(x=Transaction.Date, y=Amount)) #scatterplot x-axis Transaction Date, y-axis Amount. geo_smooth insert a curve regression line
ggplot(data = dataframeexpenses, mapping = aes(x=Transaction.Date, y=Amount))+geom_point(mapping=aes(color=Payment.Method))+geom_smooth() #scatterplot x-axis Transaction Date, y-axis Amount, different colors represent different payment methods. geo_smooth insert a curve regression line.

#ggplot2 bar chart
ggplot(data=dataframecategories)+geom_bar(mapping = aes(x=General.Category)) #bar chart x-axis General Category column y-axis count General Category
ggplot(data=dataframeexpenses)+geom_bar(mapping = aes(x=Payment.Method)) #bar chart x-axis Payment Method y-axis count Payment Method
ggplot(dataframeexpenses, aes(x=Payment.Method))+geom_bar() #barchart use geom_bar().  aes is aesthetic how the variables are mapped.  x-axis is Payment Method, y-axis is count of Payment Method.
ggplot(dataframeexpenses, aes(x=Payment.Method))+geom_bar()+theme_bw()+labs(y="y axis label count",title="Chart title label Payment Method count") #barchart use geom_bar().  aes is aesthetic how the variables are mapped.  x-axis is Payment Method, y-axis is count of Payment Method. theme_bw is white background.
ggplot(dataframeexpenses, aes(x=Payment.Method, fill=Subtract.From.Budgeted.Expenses))+geom_bar()+theme_bw()+labs(y="y axis label count",title="Payment Method count by Budgeted Expenses") #barchart use geom_bar() broken down by FALSE and TRUE Subtract From Budgeted Expenses.  x-axis is Payment Method, y-axis is count of Payment Method. theme_bw is white background.
ggplot(dataframeexpenses, aes(x=Payment.Method, fill=Subtract.From.Budgeted.Expenses))+geom_bar()+theme_bw()+facet_wrap(~Going.Out)+labs(y="y axis label count",title="Payment Method count by Budgeted Expenses") #barchart use geom_bar() broken down by FALSE and TRUE Subtract From Budgeted Expenses.  Separate barchart by Going Out column facet or drill down; for example, bar chart for Family, bar chart for Friends, bar chart for Must Eat.  x-axis is Payment Method, y-axis is count of Payment Method. theme_bw is white background.
barchartdataframe <- dataframeexpenses[c("ID","Transaction.Date","Amount","Payment.Method","Subtract.From.Budgeted.Expenses")] #select columns, slice
ggplot(barchartdataframe,aes(x=Transaction.Date.Year, fill=Payment.Method))+geom_bar(binwidth=0.5)+facet_wrap(~Subtract.From.Budgeted.Expenses)+ggtitle("Subtract From Budgeted Expenses")+xlab("Year")+ylab("Total Count")+labs(fill="Payment Method")+ylim(0,300) #Two bar charts in one chart Year is x-axis, count is y-axis highest y-axis count is 300, two bar charts separated by False and True for Subtract From Budgeted Expenses, each bar color coded by Payment Method.  Need the tilda ~ for the facet_wrap.  Warning message:  In geom_bar(binwidth = 0.5): Ignoring unknown parameters: `binwidth`.  RM:  can include multiple facet_wrap.  Instructor in Titanic used facet_wrap(~sex + pclass) for female 1, 2, 3 and male 1, 2, 3.
#RM:  I can't figure out multiple column filter columns.  I use multiple individual filters 
dataframeexpensespositiveamounts %>% count(Payment.Method, Subtract.From.Budgeted.Expenses) #default sort is Payment Method.  Type comma ,sort=T after Subtract.From.Budgeted.Expenses sorts by count descending.  #dplyr package activated to use count function
'
      Payment.Method Subtract.From.Budgeted.Expenses   n
1                                               TRUE   1
2               Cash                           FALSE 150
3               Cash                            TRUE 168
4              Check                           FALSE 116
5              Check                            TRUE   3
6   Gift Card-Amazon                           FALSE   8
7   Gift Card-Amazon                            TRUE   2
8   Gift Card-Costco                           FALSE   4
9      Gift Card-REI                           FALSE   1
10 Gift Card-Safeway                           FALSE   1
11  Gift Card-Target                           FALSE  20
12  Gift Card-Target                            TRUE   4
13            Kohl''s                           FALSE  11
14            Kohl''s                            TRUE   2
15            Macy''s                           FALSE   7
16 Master Card-Chase                           FALSE  45
17 Master Card-Chase                            TRUE  53
18             Other                           FALSE   2
19             Other                            TRUE   2
20            PayPal                           FALSE   1
21            PayPal                            TRUE   1
22            Target                           FALSE  73
23            Target                            TRUE  15
24              Visa                           FALSE   2
25              Visa                            TRUE   4
26        Visa-Chase                           FALSE 535
27        Visa-Chase                            TRUE 165
28     Visa-UI Debit                           FALSE 217
29     Visa-UI Debit                            TRUE  22
'
dataframeexpensespositiveamounts %>% count(Payment.Method, Subtract.From.Budgeted.Expenses) %>% ggplot(mapping=aes(x=Payment.Method, y=Subtract.From.Budgeted.Expenses))+ geom_tile(mapping=aes(fill=n)) #bar chart with color coded mapping heat map.  X axis Payment Method and y axis TRUE or FALSE Subtract From Budgeted Expenses.  Chart divided in half horizontally Subtract From Budged Expenses True top 50% and False bottom 50%.  Each bar is a blue shade color denoting the count number.  Darker blue count between 1 and 100.  Lighter blue count between 400 and 500.  Zero count no bar such as Gift Card-REI TRUE and Macy's TRUE.
library(esquisse) #Access Addins below menu bar.  Addins-->ESQUISSE-->'ggplot2' builder.  It's a GUI to create charts and create graphs.  Chart builder.  Graph builder.

#Tidyverse dplyr
library(tidyverse)
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv",head=TRUE)
dplyr::filter(dataframeexpenses,Category=="Lunch-Fast Food") #RM:  return all rows with Lunch-Fast Food in Category column
#RM:  use a . period to denote a space in a column header.  For example, Transaction.Date and Price.Per.Gallon
head(dplyr::arrange(dataframeexpenses,Transaction.Date,Amount)) #RM:  return first six rows sorted by Transaction Data first and Amount second
dplyr::mutate(dataframeexpenses,newcolumntruesorfalses = Amount > 200) #RM:  create new column farthest right TRUE Amount greater than 200 and FALSE Amount less than or equal to 200
head(dplyr::transmute(dataframeexpenses,newcolumngoingout=Going.Out=="Family",newcolumndinnerrestaurant=Category=="Dinner-Restaurant",),100) #Create new dataset table two columns newcolumngoingout and newcolumndinnerrestaurant TRUEs and FALSEs Family and Dinner-Restaurant.
dplyr::select(dataframeexpenses,ID,Transaction.Date,Name,Amount) #Return all rows and four columns ID, Transaction Date, Name, and Amount.
dplyr::count(dataframeexpenses) #print 1697.  Count rows.
dplyr::count(dataframeexpenses,Category,sort=T) #print a list of all values in Category and its count
'
                         Category   n
1                  Grocery-Family 240
2                 Lunch-Fast Food  99
3           Bare Necessities-Body  89
4               Medical Insurance  89
5            Grocery-Bottle Water  87
6                             Gym  84
7           Gas-Toyota Camry 2005  77
...
'
dplyr::count(filter(dataframeexpenses,Category=="Automobile-Accessories")) #print 20