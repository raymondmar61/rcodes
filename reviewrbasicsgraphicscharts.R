#Introduction
require(ggplot2) #load package ggplot2 with a confirmation message Loading required package: ggplot2
library(ggplot2) #load package ggplot2 or activate ggplot2 which is check the checkbox ggplot2 in Packages tab bottom right
dataframecolumnone <- c(1,2,3)
dataframecolumntwo <- c("a","b","c")
dataframecolumnthree <- c(T,F,TRUE)
data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree)
'''
  dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
dataframevariable <- data.frame(dataframecolumnone,dataframecolumntwo,dataframecolumnthree)
dataframevariable
'''
  dataframecolumnone dataframecolumntwo dataframecolumnthree
1                  1                  a                 TRUE
2                  2                  b                FALSE
3                  3                  c                 TRUE
'''
dataframecolumnnames <- data.frame(column1=dataframecolumnone,column2=dataframecolumntwo,column3=dataframecolumnthree)
dataframecolumnnames
'''
  column1 column2 column3
1       1       a    TRUE
2       2       b   FALSE
3       3       c    TRUE
'''
ggplot(dataframecolumnnames,aes(column1,column3))+geom_point() #plot a scatterplot three points column1 x-axis and column3 y-axis (1,TRUE), (2,FALSE), (3,TRUE)
ggplot(dataframecolumnnames,aes(column1,column3)) #plot a chart column1 x-axis and column3 y-axis without the three plots
dev.off() #clear plot
ggplot2::geom_point #print code at Console bottom left
'''
function (mapping = NULL, data = NULL, stat = "identity", position = "identity", 
    ..., na.rm = FALSE, show.legend = NA, inherit.aes = TRUE) 
{
    layer(data = data, mapping = mapping, stat = stat, geom = GeomPoint, 
        position = position, show.legend = show.legend, inherit.aes = inherit.aes, 
        params = list(na.rm = na.rm, ...))
}
<bytecode: 0x564308b49c10>
<environment: namespace:ggplot2>
'''
detach("package:ggplot2",unload=TRUE) #unload package ggplot2 or deactivate ggplot2
cat("\014")  #Clear console or Ctrl+L for which you must press Ctrl+1 to focus back to source

#Basic x-y plotting
library(datasets) #Load datasets in RStudio
head(iris) #View the first six rows in iris dataset
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
plotirisdatasetcategoryspecies <- plot(iris$Species) #bar chart species setosa, versicolor, virginica on x-axis
plotirisdatasetcategorypetallength <- plot(iris$Petal.Length) #scatterchart row number on x-axis, petal.length on y-axis
plotirisspeciespetalwiidth <- plot(iris$Species, iris$Petal.Width) #boxplot species on x-axis
plotirispetallengthpetalwidth <- plot(iris$Petal.Length, iris$Petal.Width) #scatterchart petal.length on x-axis, petal.width on y-axis
plotirisentiredataframe <- plot(iris) #a matrix of charts of scatterplots for all the column headers
plotoptionsbasic <- plot(iris$Petal.Length, iris$Petal.Width, col="#cc0000", pch=19, main ="Main title Iris Petal Length And Petal Width", xlab = "x label Petal Length", ylab="y label Petal Width")  #scatterplot red solid circles denoted by col and pch with labels
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library

#Bar charts
library(datasets) #Load datasets in RStudio
?mtcars #Help on mtcars Motor Trend Car Road Tests.  The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).
head(mtcars)
'''
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
'''
barplot(mtcars$cyl) #bar chart plot all cylinder numbers 6, 6, 4, 6, 8, 6, 8, . . . .  Bad bar chart.  Create a table first like Excel create a table as the source data for the bar chart.
cylinderstable <- table(mtcars$cyl)
cylinderstable
'''
 4  6  8 
11  7 14 
'''
barplot(cylinderstable) #barplot x-axis 4, 6, 8 and y-axis the count 11, 7, 14
plot(cylinderstable) #barplot as a x-y plot vertical lines 4-11, 6-7, 8, 14
rm(list=ls()) #clear environment or delete variables in Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
cat("\014")  #Clear console or Ctrl+L for which you must press Ctrl+1 to focus back to source

#Histogram
library(datasets)
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
#Histogram charts on the four quantitative variables
hist(iris$Sepal.Length) #like a bar chart Sepal lengths 4, 4.5, 5, 5.5 to 8 and the count or frequency approximate looking 5, 25, 25, 30, 31, 18, 5, 5
barplot(iris$Sepal.Length) #as a comparison, bar chart plots all the Sepal Lengths with lengths on y-axis 5.1, 4.9, 4.7, 4.6, 5.0, 5.4, . . . 
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)
setosapetalwidth <- hist(iris$Petal.Width [iris$Species=="setosa"]) #plot histogram chart petal width for setosa specie
setosapetalwidth
'''
$breaks
[1] 0.1 0.2 0.3 0.4 0.5 0.6

$counts
[1] 34  7  7  1  1

$density
[1] 6.8 1.4 1.4 0.2 0.2

$mids
[1] 0.15 0.25 0.35 0.45 0.55

$xname
[1] "iris$Petal.Width[iris$Species == \"setosa\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
par(mfrow=c(3,1)) #par is parameter.  Graphical parameter.  Put the graph in three rows and one column.  3 rows, 1 column.  RM:  the next three histogram charts are plotted on a single plot with three rows, three histogram charts in one column.  Multiple charts one plot.
hist(iris$Petal.Width [iris$Species=="setosa"],xlim=c(0,3),breaks=9,main="Chart title Petal Width For Setosa",xlab="xlabel histogram red color",col="red")
hist(iris$Petal.Width [iris$Species=="versicolor"],xlim=c(0,3),breaks=9,main="Chart title Petal Width for Versicolor",xlab="xlabel histogram purple color",col="purple")
hist(iris$Petal.Width [iris$Species=="virginica"],xlim=c(0,3), breaks=9, main="Chart title Petal Width for Virginica",xlab="xlabel histogram blue color",col="blue")
par(mfrow=c(1,1)) #par is parameter.  Default graphical parameter.  Put the graph 1 row, 1 column.
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
cat("\014")  #Clear console or Ctrl+L for which you must press Ctrl+1 to focus back to source

#Scatterplots
library(datasets)
?mtcars #Help on mtcars Motor Trend Car Road Tests.  The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).
head(mtcars)
'''
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
'''
#Take a look at a variable or column in the mtcars dataset
hist(mtcars$wt) #histogram of the weights wt of each car in 1000 lbs
hist(mtcars$mpg) #histogram of the miles per gallon mpg of each car
#Scatterplot the weight of each car and its miles per gallon
plot(mtcars$wt,mtcars$mpg)  #scatter plot correlation inverse heavier the car the lower the miles per gallon
#Add scatterplot options
plot(mtcars$wt,mtcars$mpg, pch=19, cex=1.5, col="#cc0000",main="Title Chart solid circle 150% larger red MPG As A Function Of Weight Of Cars",xlab="X-label Weight (in 1000 pounds)",ylab="Y-label MPG")
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
cat("\014")  #Clear console or Ctrl+L for which you must press Ctrl+1 to focus back to source

#Overlay plots or two charts together
library(datasets)
?lynx #Annual Canadian Lynx trappings 1821-1934
head(lynx) #print 269  321  585  871 1475 2821.  It's a time series.  One line of numbers start at year 1821.
hist(lynx)
hist(lynx,breaks=14,freq=FALSE,col="thistle1",main=paste("Paste() function Long title display in one line Annual Canadian Lynx Trappings 1821-1934 with 14 bins, axis shows density which are proportions and not frequency",xlab="Number Of Lynx Trapped"))
#Normal distribution
curve(dnorm(x,mean=mean(lynx),sd=sd(lynx)),col="thistle4",lwd=2,add=TRUE) #add=TRUE superimpose the normal distribution chart on the previous graph which is the hist(lynx . . .)
#Add two kernel density estimators to the hist(lynx . . . ) and curve(dnorm(. . . ) chart
lines(density(lynx),col="blue",lwd=2)
lines(density(lynx,adjust=3),col="purple",lwd=2)
#Rug plot.  The rug plot is marks the individual observations above the x-axis.  Rug plot added to the hist(lynx . . . ) and curve(dnorm(. . . ) chart with the two lines(density . . .)
rug(lynx,lwd=2,co="gray")
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
cat("\014")  #Clear console or Ctrl+L for which you must press Ctrl+1 to focus back to source

