#Basics
#Press Ctrl+Shift+C to insert # for comment
#Press Ctrl+Enter to run 1+2
#Press Ctrl+Shift+n for which n=1 is Source upper left, n=2 is Console bottom left, n=3 Help, n=4 History, n=5 Files, n=6 Plot, n=7 Packages, n=8 Environment, n=9 Viewer, n=0 Show all panes.  Don't press Shift to move focus.
1+2 #print 3
abs(-5) #print 5
'
Single quotes for multiple line comments
Three examples of help
'
?abs
help(abs)
example(abs)
variableequals = 1+2
althyphen <- "Assignment operator is arrow Alt+-"
escapecharacter <- "Backslash \ I quote \"Stay Hungry, Stay Foolish \" from Steve Jobs."
vectoryears <- c(2016,2017,2018,2019,2020) #c stands for concatenate
vectorpaymentmethods <- c("Cash","Check","Credit Card","Gift Card","Crypto")
vectorasfactor <- as.factor(c("Gas","Restaurant","Medical Insurance","Gym","Gym","Gas","Medical Insurance"))
vectorasfactor
'
[1] Gas               Restaurant        Medical Insurance Gym               Gym               Gas              
[7] Medical Insurance
Levels: Gas Gym Medical Insurance Restaurant
'

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
dataframelist <- data.frame(firstlist=list("a","b","c","d","e"),listdataframe=list(1,2,3,4,5))
dataframelist
'
  firstlist..a. firstlist..b. firstlist..c. firstlist..d. firstlist..e. listdataframe.1 listdataframe.2
1             a             b             c             d             e               1               2
  listdataframe.3 listdataframe.4 listdataframe.5
1               3               4               5
'
matrixdata <- c("apple","bananna","string 30","default down and right","six","entries")
matrixdatatworowsthreecolumns <- matrix(matrixdata,2,3)
matrixdatatworowsthreecolumns
'
     [,1]      [,2]                     [,3]     
[1,] "apple"   "string 30"              "six"    
[2,] "bananna" "default down and right" "entries"
'
matrixdatatworowsthreecolumns[2] #print bananna
matrixdatatworowsthreecolumns[3] #print string 30
matrixdatatworowsthreecolumns[1,2] #print string 30
matrixdatatworowsthreecolumns[2,] #All row 2
'
"bananna"                "default down and right" "entries" 
'
matrixdatatworowsthreecolumns[,3] #All column 3
'
"six"     "entries"
'
matrixdatathreerowstwocolumns <- matrix(matrixdata,3,2)
matrixdatathreerowstwocolumns
'
     [,1]        [,2]                    
[1,] "apple"     "default down and right"
[2,] "bananna"   "six"                   
[3,] "string 30" "entries" 
'
indexingvector <- c("Super Bowl","Zion National Park","COVID-19","Black Friday","Cyber Monday","Desktop 2","Gilroy Gardens")
indexingvector #Index starts at number 1
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

#Install package install
#install.packages("*packagename*")
#packagename::*type partial attribute* to search in packagename
#for example, type base::*letter e*
#base::e