#summary() function
library(datasets) #Load datasets in RStudio
?iris #Help on iris Edgar Anderson's Iris Data.  This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
head(iris)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
countcategoricalvariablespecies <- summary(iris$Species)
countcategoricalvariablespecies
'''
    setosa versicolor  virginica 
        50         50         50 
'''
statisticsquantitativevariablesepallength <- summary(iris$Sepal.Length)
statisticsquantitativevariablesepallength
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  4.300   5.100   5.800   5.843   6.400   7.900 
'''
statisticsallvariables <- summary(iris)
statisticsallvariables
'''
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500   
 '''
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library

#describe() function
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)
library(datasets) #Load datasets in RStudio
?iris #Help on iris Edgar Anderson's Iris Data.  This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
head(iris)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
p_load(psych) #load psych package.  If psych is not installed, then RStudio downloads automatically.
p_help(psych) #opens psych package documentation help PDF in browser.  Must be connected online.  p_help from pacman?
p_help(psych, web=F) #opens psych package documentation help in R Viewer.  Can be connected offline.  p_help from pacman?
sepallengthdescribe <- describe(iris$Sepal.Length) #describe is for quantitative variables
sepallengthdescribe
'''
   vars   n mean   sd median trimmed  mad min max range skew kurtosis   se
X1    1 150 5.84 0.83    5.8    5.81 1.04 4.3 7.9   3.6 0.31    -0.61 0.07
'''
allvariablesdescribe <- describe(iris)
allvariablesdescribe #The asterisk indicates variable is categorical, not quantitative
'''
             vars   n mean   sd median trimmed  mad min max range  skew kurtosis   se
Sepal.Length    1 150 5.84 0.83   5.80    5.81 1.04 4.3 7.9   3.6  0.31    -0.61 0.07
Sepal.Width     2 150 3.06 0.44   3.00    3.04 0.44 2.0 4.4   2.4  0.31     0.14 0.04
Petal.Length    3 150 3.76 1.77   4.35    3.76 1.85 1.0 6.9   5.9 -0.27    -1.42 0.14
Petal.Width     4 150 1.20 0.76   1.30    1.18 1.04 0.1 2.5   2.4 -0.10    -1.36 0.06
Species*        5 150 2.00 0.82   2.00    2.00 1.48 1.0 3.0   2.0  0.00    -1.52 0.07
'''
rm(list=ls()) #clear Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
detach("package:psych",unload=TRUE) #clear psych package

library(datasets) #Load datasets in RStudio
?iris #Help on iris Edgar Anderson's Iris Data.  This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
head(iris)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
histogrampetallength <- hist(iris$Petal.Length) #bar chart x-axis petal lengths y-axis count or frequency of petal lengths
summarystatisticspetallength <- summary(iris$Petal.Length)
summarystatisticspetallength
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.600   4.350   3.758   5.100   6.900 
'''
summarystatisticsspecies <- summary(iris$Species)
summarystatisticsspecies
'''
    setosa versicolor  virginica 
        50         50         50 
'''
histogrampetallengthversicolorspecies <- hist(iris$Petal.Length[iris$Species=="versicolor"], main ="Main title Petal Length for Versicolor Species")
histogrampetallengthversicolorspecies #histogram also created
'''
$breaks
[1] 3.0 3.5 4.0 4.5 5.0 5.5

$counts
[1]  5 11 20 13  1

$density
[1] 0.20 0.44 0.80 0.52 0.04

$mids
[1] 3.25 3.75 4.25 4.75 5.25

$xname
[1] "iris$Petal.Length[iris$Species == \"versicolor\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
histogrampetallengthvirginicaspecies <- hist(iris$Petal.Length[iris$Species=="virginica"], main ="Main title Petal Length for Virginica Species")
histogrampetallengthvirginicaspecies #histogram also created
'''
$breaks
[1] 4.5 5.0 5.5 6.0 6.5 7.0

$counts
[1]  9 16 16  5  4

$density
[1] 0.36 0.64 0.64 0.20 0.16

$mids
[1] 4.75 5.25 5.75 6.25 6.75

$xname
[1] "iris$Petal.Length[iris$Species == \"virginica\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
histogrampetallengthsetosaspecies <- hist(iris$Petal.Length[iris$Species=="setosa"], main ="Main title Petal Length for Setosa Species")
histogrampetallengthsetosaspecies #histogram also created
'''
$breaks
 [1] 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9

$counts
[1]  2  2  7 13 13  7  4  0  2

$density
[1] 0.4 0.4 1.4 2.6 2.6 1.4 0.8 0.0 0.4

$mids
[1] 1.05 1.15 1.25 1.35 1.45 1.55 1.65 1.75 1.85

$xname
[1] "iris$Petal.Length[iris$Species == \"setosa\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
rm(list=ls()) #clear Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
library(datasets) #Load datasets in RStudio
histogrampetallengthlessthan2 <- hist(iris$Petal.Length[iris$Petal.Length<2],main="Main title Petal Lengths less than 2")
histogrampetallengthlessthan2
'''
$breaks
 [1] 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9

$counts
[1]  2  2  7 13 13  7  4  0  2

$density
[1] 0.4 0.4 1.4 2.6 2.6 1.4 0.8 0.0 0.4

$mids
[1] 1.05 1.15 1.25 1.35 1.45 1.55 1.65 1.75 1.85

$xname
[1] "iris$Petal.Length[iris$Petal.Length < 2]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
histogramvirginicapetallengthlessthan55 <- hist(iris$Petal.Length[iris$Petal.Length<5.5 & iris$Species=="virginica"],main="Main title Short length virginica less than 5.5")
histogramvirginicapetallengthlessthan55
'''
$breaks
[1] 4.4 4.6 4.8 5.0 5.2 5.4

$counts
[1] 1 2 6 9 4

$density
[1] 0.2272727 0.4545455 1.3636364 2.0454545 0.9090909

$mids
[1] 4.5 4.7 4.9 5.1 5.3

$xname
[1] "iris$Petal.Length[iris$Petal.Length < 5.5 & iris$Species == \"virginica\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
#Template create dataset  datasetname[rows, columns].  Leave either rows or columns blank to select all.
createdatasetsetosarows <- iris[iris$Species=="setosa",]
createdatasetsetosarows
'''
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
4           4.6         3.1          1.5         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
...
'''
head(createdatasetsetosarows)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
summary(createdatasetsetosarows)
'''
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.300   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:4.800   1st Qu.:3.200   1st Qu.:1.400   1st Qu.:0.200   versicolor: 0  
 Median :5.000   Median :3.400   Median :1.500   Median :0.200   virginica : 0  
 Mean   :5.006   Mean   :3.428   Mean   :1.462   Mean   :0.246                  
 3rd Qu.:5.200   3rd Qu.:3.675   3rd Qu.:1.575   3rd Qu.:0.300                  
 Max.   :5.800   Max.   :4.400   Max.   :1.900   Max.   :0.600  
'''
summary(createdatasetsetosarows$Petal.Length)
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.400   1.500   1.462   1.575   1.900 
'''
hist(createdatasetsetosarows$Petal.Length) #create histogram Petal.Length
createdatasetsetosarowspetallengthlessthan15 <- iris[iris$Species=="setosa" & iris$Petal.Length<1.5,]
createdatasetsetosarowspetallengthlessthan15
'''
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
7           4.6         3.4          1.4         0.3  setosa
9           4.4         2.9          1.4         0.2  setosa
13          4.8         3.0          1.4         0.1  setosa
...
'''
rm(list=ls()) #clear Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
