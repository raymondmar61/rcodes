#R programming in one hour - a crash course for beginners [eR-XRSKsuR4]

#Basics
#Alt+Shift+K opens Keyboard Shortcut Quick Reference
#Ctrl+Shift+M inserts pipe operator %>%
#Help type a question mark and the topic
?mean #function
?ChickWeight #dataset
5+6 #print 11
a <- 5
b <- 6
a #print 5
b #print 6
a+b #print 11
sum(a,b) #print 11
concatenationvariable <- c(5,6)
concatenationvariable #print 5 6
sum(concatenationvariable) #print 11
concatenationvariablenames <- c("John","James")
concatenationvariablenames #print "John"  "James"
dataframevariable <- data.frame(concatenationvariablenames,concatenationvariable)
View(dataframevariable) #function opens a new tab data frame first column concatenationvariablenames and its values, second column concatenationvariable and its values
str(dataframevariable) #str Structure
'''
'data.frame':	2 obs. of  2 variables:
$ concatenationvariablenames: Factor w/ 2 levels "James","John": 2 1
$ concatenationvariable     : num  5 6
'''
dataframevariable$concatenationvariablenames
'''
[1] John  James
Levels: James John
'''
dataframevariable[1,1]  #subset dataframe or dataframe index
'''
[1] John
Levels: James John
'''
dataframevariable[1,] #return row
'''
  concatenationvariablenames concatenationvariable
1                       John                     5
'''
dataframevariable[,1] #return column
'''
[1] John  James
Levels: James John
'''

#Built in data sets
data() #Returns new tab Data sets in package ‘datasets’.  Returns built-in data sets
View(ChickWeight) #Opens new tab displaying ChickWeight dataset

#Packages
#View(starwars) #RM:  I initially don't have starwars installed.
#install.packages(starwars) #Error in install.packages : object 'starwars' not found
#install.packages("starwars") #Warning in install.packages : package ‘starwars’ is not available (for R version 3.6.3)
install.packages("tidyverse") #RM:  starwars data set downloaded
?starwars #dataset starwars {dplyr} in Help tab
#View(starwars) #Error in View : object 'starwars' not found
library(tidyverse)

#Data sets
View(starwars) #Opens new tab displaying starwars dataset.  RM:  Needed to load tidyverse library first.
starwars #returns starwars dataset in Console tab
#Ctr+Shift+M shortcut key pipe operator %>% which means "and then"
starwars %>% filter(height>150 & mass <200) %>% mutate(height_in_meters = height/100) %>% select(height_in_meters,mass) %>% arrange(mass) #returns starwars dataset in Console tab height greater than 150, mass less than 200, new column height_in_meters is the height divided by 100, and return the columns height_in_meters and mass sorted by mass ascending to be displayed in a dataframe named dataframe name in a new tab.  mutate() is create a new variable or overwrite an existing variable RM:  is variable the column name?  A negative - in arrange() is descending.
starwars %>% filter(height>150 & mass <200) %>% mutate(height_in_meters = height/100) %>% select(height_in_meters,mass) %>% arrange(mass) %>% View("dataframe name") #returns starwars dataset height greater than 150, mass less than 200, new column height_in_meters is the height divided by 100, and return the columns height_in_meters and mass sorted by mass ascending to be displayed in a dataframe named dataframe name in a new tab.
starwars %>% filter(height>150 & mass <200) %>% mutate(height_in_meters = height/100) %>% select(height_in_meters,mass) %>% arrange(mass) %>% plot() #plot scatterplot chart height greater than 150, mass less than 200, new column height_in_meters is the height divided by 100, and return the columns height_in_meters and mass sorted by mass ascending
?iris #Edgar Anderson's Iris Data part of datasets
?msleep #Mammals sleep dataset part of ggplot2
View(msleep) #returns msleep dataset in a new tab
glimpse(msleep) #returns number of rows, number of columns, column data type, and a dataset preview in Console
head(msleep) #returns the first six rows in Console
class(msleep$name) #returns the data type for name column character
length(msleep) #returns the number of columns 11
length(msleep$name) #returns the number of rows in name column 83
names(msleep) #returns the column names
unique(msleep$vore) #returns distinct data values in vore column "carni"   "omni"    "herbi"   NA        "insecti"
complete.cases(msleep) #returns TRUE and FALSE. TRUE is each row no missing data values in its columns.  FALSE is each row yes missing data values in its columns.
!complete.cases(msleep) #returns TRUE and FALSE. TRUE is each row yes missing data values in its columns.  FALSE is each row no missing data values in its columns.
msleep[complete.cases(msleep),] #returns rows with no missing data in its columns in Console
View(msleep[complete.cases(msleep),],"randomname") #returns rows with no missing data in its columns dataset in a new tab named randomname

#Data sets work with
starwars %>% select(name, height, mass) #return starwars dataset name, height, mass in Console
View(starwars %>% select(name, height, mass),"Columns name, height, mass") #return starwars dataset name, height, mass dataset in a new tab named Columns name, height, mass
starwars %>% select(1:3) #return column 1 name, column 2 height, and column 3 mass from left to right in Console
starwars %>% select(ends_with("color")) #return columns with column name ending with color in Console
'''
# A tibble: 87 × 3
   hair_color    skin_color  eye_color
   <chr>         <chr>       <chr>    
 1 blond         fair        blue     
 2 NA            gold        yellow   
 3 NA            white, blue red      
 4 none          white       yellow   
 5 brown         light       brown   
...
'''
starwars %>% select(name, mass, height, everything()) #returns name, mass, height columns, and the rest of the columns thereafter
'''
# A tibble: 87 × 14
   name                mass height hair_color    skin_color  eye_color birth_year sex   gender homew…¹ species films vehic…² stars…³
   <chr>              <dbl>  <int> <chr>         <chr>       <chr>          <dbl> <chr> <chr>  <chr>   <chr>   <lis> <list>  <list> 
 1 Luke Skywalker        77    172 blond         fair        blue            19   male  mascu… Tatooi… Human   <chr> <chr>   <chr>  
 2 C-3PO                 75    167 NA            gold        yellow         112   none  mascu… Tatooi… Droid   <chr> <chr>   <chr>  
 3 R2-D2                 32     96 NA            white, blue red             33   none  mascu… Naboo   Droid   <chr> <chr>   <chr> 
'''
starwars %>% rename("characters"="name") %>% head() #rename column name to characters
'''
# A tibble: 6 × 14
  characters     height  mass hair_color  skin_color  eye_color birth_year sex    gender    homeworld species films  vehic…¹ stars…²
  <chr>           <int> <dbl> <chr>       <chr>       <chr>          <dbl> <chr>  <chr>     <chr>     <chr>   <list> <list>  <list> 
1 Luke Skywalker    172    77 blond       fair        blue            19   male   masculine Tatooine  Human   <chr>  <chr>   <chr>  
2 C-3PO             167    75 NA          gold        yellow         112   none   masculine Tatooine  Droid   <chr>  <chr>   <chr>  
3 R2-D2              96    32 NA          white, blue red             33   none   masculine Naboo     Droid   <chr>  <chr>   <chr> 
'''
starwars$hair_color <- as.factor(starwars$hair_color) #change data type hair_color column to factor
starwars %>% mutate(hair_color=as.character(hair_color)) #change data type hair_color column to character
starwars %>% glimpse() #returns number of rows, number of columns, column data type, and a dataset preview in Console
glimpse(starwars) #returns number of rows, number of columns, column data type, and a dataset preview in Console
starwars %>% select(mass, sex) %>% filter(mass < 55 & sex =="male") #return mass and sex columns mass less than 55 and male in Console
mass55male <- starwars %>% select(mass, sex) %>% filter(mass < 55 & sex =="male")
mass55male #return mass and sex columns mass less than 55 and male in Console
View(mass55male,"Data frame name light weighted males") #return dataset mass55male in a new tab named Data frame name light weighted males
starwars %>% select(name, sex) %>% mutate(sex=recode(sex,"male"="man","female"="woman")) #returns character and sex column changing data values male to man and female to woman in Console
'''
# A tibble: 87 × 2
   name               sex  
   <chr>              <chr>
 1 Luke Skywalker     man  
 2 C-3PO              none 
 3 R2-D2              none 
 4 Darth Vader        man  
 5 Leia Organa        woman
 6 Owen Lars          man  
'''
mean(starwars$height) #return NA.  Reason NA is there is missing data values in height column
mean(starwars$height, na.rm=TRUE) #return average height 174.358.  na means Not Available.  rm means Remove.  Remove blanks from calculation
mean(starwars$height, na.rm=FALSE) #return NA
names <- c("Peter","John","Andrew","Peter")
ages <- c(22,33,44,22)
duplicatesdf <- data.frame(names, ages)
duplicatesdf
'''
   names ages
1  Peter   22
2   John   33
3 Andrew   44
4  Peter   22
'''
duplicatesdf %>% distinct()
'''
   names ages
1  Peter   22
2   John   33
3 Andrew   44
'''
distinct(duplicatesdf)
'''
   names ages
1  Peter   22
2   John   33
3 Andrew   44
'''
distinct(duplicatesdf)[,2] #print 22 33 44
distinct(duplicatesdf)[,2] #print 22 33 44
agescolumn <- duplicatesdf$ages
agescolumn #print 22 33 44 22
unique(agescolumn) #print 22 33 44
#distinct(agescolumn) #print Error in UseMethod("distinct") : no applicable method for 'distinct' applied to an object of class "c('double', 'numeric')"
agescolumndistinct <- distinct(duplicatesdf)[,2]
agescolumndistinct #print 22 33 44
starwars %>% mutate(heightinmeters=height/100) %>% select(name, height, heightinmeters) %>% print(n=3) #new column
'''
# A tibble: 87 × 3
   name               height heightinmeters
   <chr>               <int>          <dbl>
 1 Luke Skywalker        172           1.72
 2 C-3PO                 167           1.67
 3 R2-D2                  96           0.96
# … with 84 more rows
'''
starwars %>% mutate(heightinmeters=height/100) %>% select(name, height, heightinmeters) %>% print(n=3) %>% mutate(tallness = if_else(heightinmeters<1,"short","tall")) %>% print(n=5)
'''
# A tibble: 87 × 3
  name           height heightinmeters
  <chr>           <int>          <dbl>
1 Luke Skywalker    172           1.72
2 C-3PO             167           1.67
3 R2-D2              96           0.96
# … with 84 more rows
# ℹ Use `print(n = ...)` to see more rows
# A tibble: 87 × 4
   name               height heightinmeters tallness
   <chr>               <int>          <dbl> <chr>   
 1 Luke Skywalker        172           1.72 tall    
 2 C-3PO                 167           1.67 tall    
 3 R2-D2                  96           0.96 short   
 4 Darth Vader           202           2.02 tall    
 5 Leia Organa           150           1.5  tall    
 6 Owen Lars             178           1.78 tall    
 7 Beru Whitesun lars    165           1.65 tall    
 8 R5-D4                  97           0.97 short   
 9 Biggs Darklighter     183           1.83 tall    
10 Obi-Wan Kenobi        182           1.82 tall    
# … with 77 more rows
'''

#Data sets reshape reshaping pivot table.  pivot_wider() is part of the tidyr package pivot_wider {tidyr}.  pivot_longer() is unpivot.
install.packages("gapminder")
library(gapminder)
?gapminder #dataset gapminder {gapminder}
gapminder %>% select(country, year, lifeExp) %>% print(n=3)
'''
# A tibble: 1,704 × 3
  country      year lifeExp
  <fct>       <int>   <dbl>
1 Afghanistan  1952    28.8
2 Afghanistan  1957    30.3
3 Afghanistan  1962    32.0
# … with 1,701 more rows
'''
#or
variablegapminder <- select(gapminder, country, year, lifeExp) #create a data frame save as a variable.   the first argument in select() is the name of the data set
View(variablegapminder)
pivotgapminder <- variablegapminder %>% pivot_wider(names_from = year, values_from = lifeExp)
View(pivotgapminder) #create a pivot table year is columns, country is rows, life expediency is values
pivotgapminder[,1] #return country column 
pivotgapminder[10:13] #return lifeExp 1992, 1997, 2002, 2007
dataframelifeexpentency1992to2007 <- data.frame(pivotgapminder[1],pivotgapminder[10:13]) #Create a data frame life expentency by country for 1992, 1997, 2002, 2007
#or
dataframelifeexpentency1992to2007 <- data.frame(pivotgapminder[1],pivotgapminder[10],pivotgapminder[11],pivotgapminder[12],pivotgapminder[13]) #Create a data frame life expentency by country for 1992, 1997, 2002, 2007
View(dataframelifeexpentency1992to2007) #RM:  I can't figure out how to rename the columns in the data frame
unpivotgapminder <- pivotgapminder %>% pivot_longer(2:13, names_to = "year", values_to = "lifeExp") #which columns is column index numbers 2:13 second column is year 1952 and last column column thirteen is 2007
View(unpivotgapminder)
#RM:  Used the R help to figure out other ways
unpivotgapminder2 <- pivotgapminder %>% pivot_longer(cols="1952":"2007", names_to = "year", values_to = "lifeExp") #which columns is columns from 1952 to 2007
View(unpivotgapminder2)
unique(gapminder$year) #print 1952 1957 1962 1967 1972 1977 1982 1987 1992 1997 2002 2007
unpivotgapminder3 <- pivotgapminder %>% pivot_longer(cols=c("1952","1957","1962","1967","1972","1977","1982","1987","1992","1997","2002","2007"), names_to = "year", values_to = "lifeExp")  #which columns is columns from 1952 to 2007
View(unpivotgapminder3)

#Data sets basic statistics
View(msleep)
min(msleep$awake) #print 4.1
max(msleep$awake) #print 22.1
range(msleep$awake) #print 4.1 22.1
IQR(msleep$awake) #print 5.9.  IQR is Interquartile Range.   The interquartile range IQR is the range of the middle 50 percent of the data or the range of values within 25 percentile quartile above the 50 percent quartile and below the 50 percent quartile. 
mean(msleep$awake) #print 13.56747
median(msleep$awake) #print 13.9
var(msleep$awake) #print 19.82106.  Variance
sd(msleep$awake) #print 4.452085.  Standard deviation.
summary(msleep$awake)
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   4.10   10.25   13.90   13.57   16.15   22.10 
'''
msleep %>% select(awake, sleep_total) %>% summary()
'''
     awake        sleep_total   
 Min.   : 4.10   Min.   : 1.90  
 1st Qu.:10.25   1st Qu.: 7.85  
 Median :13.90   Median :10.10  
 Mean   :13.57   Mean   :10.43  
 3rd Qu.:16.15   3rd Qu.:13.75  
 Max.   :22.10   Max.   :19.90
'''
summary(msleep %>% select(awake, sleep_total))
'''
     awake        sleep_total   
 Min.   : 4.10   Min.   : 1.90  
 1st Qu.:10.25   1st Qu.: 7.85  
 Median :13.90   Median :10.10  
 Mean   :13.57   Mean   :10.43  
 3rd Qu.:16.15   3rd Qu.:13.75  
 Max.   :22.10   Max.   :19.90  
'''
summary(c(msleep$awake, msleep$sleep_total))
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    1.9     9.1    12.0    12.0    14.9    22.1 
'''
msleep %>% drop_na(vore) %>% group_by(vore) %>% summarise(Lower = min(sleep_total),Average=mean(sleep_total),Upper=max(sleep_total), Difference=max(sleep_total)-min(sleep_total)) %>% arrange(Average) %>% View("Custom Table") #Customized summary customize statistics.  Take the vore column exclude N/A exclude NA and group by summarized by the columns Lower, Average, Upper, Difference sorted by vore column ascending

#Create tables
table(msleep$vore) #returns a count of the values in vore column
'''
  carni   herbi insecti    omni 
     19      32       5      20
'''
msleep %>% select(vore, order) %>% filter(order %in% c("Rodentia","Primates")) %>% table() #create a table counting Rodentia and Primates in column and vore in row
'''
       order
vore    Primates Rodentia
  carni        1        1
  herbi        1       16
  omni        10        2
'''