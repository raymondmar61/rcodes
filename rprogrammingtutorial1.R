#R Programming Tutorial - Learn the Basics of Statistical Computing-_V8eKsto3Ug.mp4
#Introduction commands
library(datasets) #load built-in datasets.  For example, iris dataset.
head(iris) #show the first six lines of the iris dataset.  Ctrl+Shift+2 for Console full view.
summary(iris) #show summary statistics for the iris dataset columns; e.g., mean, median, max
plot(iris) #show a scatterplot or basic chart.  Is scatterplot default?  Ctrl+Shift+6 for Plots full view.
detach("package:datasets", unload=TRUE)  #Unload packages
dev.off() #Clear plots
rm(list=ls()) #Clear environment.  RM:  clear Environment tab.  It's from the BarCharts video section.
#Clear Console Ctrl+L

#Introduction RStudio
#R must be installed first.  Then install RStudio.
#Tools-->Global Options-->Appearance-->Editor theme-->Monokai my preference for dark theme.  Modern RStudio theme.  100% Zoom.  Ubuntu Mono Editor font.  16 Editor font size.
cat("\014") #Clear Console
#Ctrl+Enter runs R code where cursor is present.
#Ctrl+Shift+Enter runs the entire R code from the cursor to the end of the file.

#Download packages
#Packages are code which adds new functions to R.  There are base packages which are installed with R not loaded by default.  Ther are contributed packages or third party packages which need to be downoaded, installed, and loaded separately.  Find contributed packages at CRAN Comprehensive R Archieve Network official R site cran.r-project.org, Crantastic which is a list of packages bringing you back to CRAN crantastic.org, and GitHub github.com/trending/r.
#Instructor recommends dplyr, tidyr, stringr, lubridate, httr, ggvis, ggplot2, shiny, rio, and rmarkdown.  One package to load them all is pacman which stands for package manager.
install.packages("packagenameinquotes") #Install packages if needed, and then load the packages
#Packages must be loaded to run or to access packages.  There are two ways require(packagename) or library(packagename
require(pacman) #Load pacman with confirmation messaged
library(pacman) #Load pacman without confirmation message
#Use pacman::p_load use p_load() function without actually loading pacman.  Insructor's packages loaded
pacman: : p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)
library(datasets) #load built-in datasets.  And load base packages manually(?)
p_unload(dplyr, tidyr, stringr) #Use pacman to clear specific packages dplyr, tidyr, stringr
p_unload(all) #Use pacman to clear all packages

#Plot charts
head(iris)
# > head(iris)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
#The plot() function by default adapts to the number of variables and the type of variables.
?plot #Help for plot function
#plot(dataframe$plotwhatindataframe)
plot(iris$Species) #bar chart categorical variable Species
plot(iris$Petal.Length) #scatterplot chart quantitative variable Petal.Length
plot(iris$Species, iris$Petal.Width) #boxplot chart categorial variable Species and quantitative variable Petal.Width
plot(iris$Petal.Length, iris$Petal.Width)  #scatterplot quantitative variable Petal.Length x-axis and quantitative variable Petal.Width y-axis
plot(iris) #plot entire dataframe iris
#Plot with options change defaults
plot(iris$Petal.Length, iris$Petal.Width, col="#cc0000", pch=19, main="Main title", xlab="xlabel", ylab="ylabel") #col is the hex code for chart color, pch is the type of point.  In these cases, red color solid circles point.
#Plot with formulas
plot(cos, 0, 2 * pi) #Cosine curve from zero to two times 3.14
plot(exp, 1, 5) #Exponential distribution from one to five
plot(dnorm, -3, +3) #Density for normal distribution from -3 to +3.  Bell curve.
plot(dnorm, -3, +3, col="#cc0000", lwd=5, main="Standard Normal Distribution", xlab="z-scores", ylab="Density") #Density for normal distribution red color, line width 5

#Bar charts
#?*datasetname* #opens help for the dataset
?mtcars
head(mtcars)
# > head(mtcars)
#                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
# Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
barplot(mtcars$cyl) #Bar chart incorrect.  The reason is you need a table with frequencies or counts for each category.  A table is needed in Excel to create a bar chart.
variablecreatetable < -table(mtcars$cys) #Create table
variablecreatetable
# > variablecreatetable
#  4  6  8
# 11  7 14
barplot(variablecreatetable) #Bar chart correct plotting from a table
plot(variablecreatetable) #Default X-Y plot line chart returning a barchart as a line instead of a bar

#Histograms charts
#Good for quantitative, scaled, measured, interval, or ratio level data.  Look for the shape symmetrical or skiew or bimodial, gaps big empty spaces, outliers unusual numbers, symmetry same number of highs or lows.
head(iris)
# > head(iris)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
hist(iris$Sepal.Length) #Histogram for dataset iris Sepal.Length
hist(iris$Sepal.Width) #Histogram for dataset iris Sepal.Width
hist(iris$Petal.Length) #Histogram for dataset iris Petal.Length
hist(iris$Petal.Width) #Histogram for dataset iris Petal.Width
#Create a plot with three histogram charts in one plot.  In other words, three rows or three histogram charts in one column or one section.
par(mfrow=c(3, 1)) #par stands for parameter
#Three histogram charts in one column using options
hist(iris$Petal.Width[iris$Species == "setosa"], xlim=c(0, 3), breaks=9, main="Main title Petal Width for Setosa", xlab="", col="red") #Histogram Petal.Width for setosa species, x limits to make sure the three histogram charts have the same scale x-axis starts a 0 and ends at 3, suggestion nine histograms without an x-axis label, red color
hist(iris$Petal.Width[iris$Species == "versicolor"], xlim=c(0, 3), breaks=9, main="Main title Petal Width for Versicolor", xlab="", col="purple") #Histogram Petal.Width for versicolor species, x limits to make sure the three histogram charts have the same scale x-axis starts a 0 and ends at 3, suggestion nine histograms without an x-axis label, purple color
hist(iris$Petal.Width[iris$Species == "virginica"], xlim=c(0, 3), breaks=9, main="Main title Petal Width for Virginica", xlab="", col="blue") #Histogram Petal.Width for virginica species, x limits to make sure the three histogram charts have the same scale x-axis starts a 0 and ends at 3, suggestion nine histograms without an x-axis label, blue color
#Restore graphic parameter default graphic parameter
par(mfrow=c(1, 1)) #par stands for parameter

#Scatterplot charts
#Good for bivariate or bivariable or two variables.  Visualize the association between two quantitative variables looking for linear or described by a straight line, spread across the scores from one end to the other end, outliers unusual scores, and correlation.
head(mtcars)
# > head(mtcars)
#                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
# Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
plot(mtcars$wt, mtcars$mpg) #Scatterplot chart see the association or relationship for dataset mtcars between car's weight wt and car's miles per gallon mpg
#Scatterplot options
plot(mtcars$wt, mtcars$mpg, pch=19, cex=1.5, col="cc0000", main="Main title MPG as a function of Weight of Cars", xlab="x-axis label Weight in 1000 pounds", ylab="y-axis label MPG") #Scatterplot chart solid circle points, 150% bigger size points, red colo

#Overlaying plots
#Put one plot over another or superimposing.  Increased information density.  More information in the same amount of space and time.  On the other hand, it can be information overload.
?lynx #Annual numbers of lynx trappings for 1821–1934 in Canada. Taken from Brockwell & Davis (1991), this appears to be the series considered by Campbell & Walker (1977).
head(lynx) #Dataset is a timeseries
# > head(lynx)
# [1]  269  321  585  871 1475 2821
lynx
# Time Series:
# Start = 1821
# End = 1934
# Frequency = 1
#   [1]  269  321  585  871 1475 2821 3928 5943 4950 2577  523   98  184  279  409 2285
#  [17] 2685 3409 1824  409  151   45   68  213  546 1033 2129 2536  957  361  377  225
#  [33]  360  731 1638 2725 2871 2119  684  299  236  245  552 1623 3311 6721 4254  687
#  [49]  255  473  358  784 1594 1676 2251 1426  756  299  201  229  469  736 2042 2811
#  [65] 4431 2511  389   73   39   49   59  188  377 1292 4031 3495  587  105  153  387
#  [81]  758 1307 3465 6991 6313 3794 1836  345  382  808 1388 2713 3800 3091 2985 3790
#  [97]  674   81   80  108  229  399 1132 2432 3574 2935 1537  529  485  662 1000 1590
# [113] 2657 3396
# RM:  Year 1934 minus year 1821 is 113 years
hist(lynx) #No need to specifiy a variable because lynx has one variable.  Specify the dataset only.
hist(lynx, breaks=14, freq=FALSE, col="thistle1", main=paste("paste command title one line notice two sets of quotes Histogram of Annual Canadian Lynx", "Trappings, 1821-1934"), xlab="x-axis label Number of Lynx Trapped") #Histogram chart suggested 14 bins, return density histogram instead of frequency histogram, thistle1 color
curve(dnorm(x, mean=mean(lynx), sd=sd(lynx)),col="thistle4", lwd=2, add=TRUE) #Density of normal distribution chart use x as the generic variable name use the mean of the lynx data and use the standard deviation of the lynx data, thistle4 color, line width 2 pixels, add=TRUE superimpose on previous graph superimpose chart overlay last chart
lines(density(lynx), col = "blue", lwd = 2) #Add kernel density estimators superimpose on previous graph superimpose chart overlay last chart
lines(density(lynx, adjust = 3), col = "purple", lwd = 2) #Add kernel density estimators superimpose on previous graph superimpose chart overlay last chart
rug(lynx, lwd = 2, col = "gray") #Add rug plot superimpose on previous graph superimpose chart overlay last chart.  Rug plot is vertical lines under the plot, histogram in this case, for each individual data point
#RM:  How do you deactivate superimpose on previous graph superimpose chart overlay last chart?  I tried add=FALSE in subsequenct chart.  It didn't work.  It seems the lines and the rug doesn't work for add=FALSE.

#Basic statistics summary(dataset) or summary(dataset$column in dataset)
library(datasets) #Load dataset packages comes with RStudio
head(iris)
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
summary(iris$Species) #Categorical variable counts or frequency in Species column
# setosa versicolor  virginica
# 50         50         50
summary(iris$Sepal.Length) #Quantitative variable basic statistics quartiles, average, median, min, max
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
# 4.300   5.100   5.800   5.843   6.400   7.900
summary(iris) #Dataframe statistics all columns
# Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species
# Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50
# 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50
# Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50
# Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199
# 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800
# Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500

#Basic statistics describe(dataset) from psycho package
#describe() gives you number of samples n, mean, standard deviation SD, median, 10% trimmed mean, median absolute deviation MAD, min, max, range, skewness, skewness, kurtosis, and standard error
library(datasets) #load datasets installed with RStudio
library(psych) #load psych package.  Instructor used p_load(psych) to load psych package.  The p_ p-underscore means it's from the package pacman package manager.  pacman::p_load(pacman, psych) pacman load packages pacman and psych.
library(pacman) #load pacman package
head(iris)
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
p_help(psych) #Opens help psych package in browswer.  Must be connected to the internet
p_help(psych, web=F) #Opens help psych package in RStudio Help tab
describe(iris$Sepal.Length) #Quantitative variable statistics
# vars   n mean   sd median trimmed  mad min max range skew kurtosis   se
# X1    1 150 5.84 0.83    5.8    5.81 1.04 4.3 7.9   3.6 0.31    -0.61 0.07
describe(iris) #Entire dataset statistics
# vars   n mean   sd median trimmed  mad min max range  skew kurtosis
# Sepal.Length    1 150 5.84 0.83   5.80    5.81 1.04 4.3 7.9   3.6  0.31    -0.61
# Sepal.Width     2 150 3.06 0.44   3.00    3.04 0.44 2.0 4.4   2.4  0.31     0.14
# Petal.Length    3 150 3.76 1.77   4.35    3.76 1.85 1.0 6.9   5.9 -0.27    -1.42
# Petal.Width     4 150 1.20 0.76   1.30    1.18 1.04 0.1 2.5   2.4 -0.10    -1.36
# Species*        5 150 2.00 0.82   2.00    2.00 1.48 1.0 3.0   2.0  0.00    -1.52
# se
# Sepal.Length 0.07
# Sepal.Width  0.04
# Petal.Length 0.14
# Petal.Width  0.06
# Species*     0.07

p_unload(all)  # Remove all add-ons from pacman if used pacman to install add-ons or packages
detach("package:psych", unload=TRUE) #unload psych package
detach("package:datasets", unload=TRUE) #unload RStudio installed datasets

#Select cases or select criteria for charts
#Choose particular cases to look closely.  Select by category or by value or both.
library(datasets) #load datasets installed with RStudio
library(datasets) #load datasets installed with RStudio
head(iris)
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
hist(iris$Petal.Length) #create a histogram for Petal.Length column.  Instructor says picture or chart first, statistics second
summary(iris$Petal.Length)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
# 1.000   1.600   4.350   3.758   5.100   6.900
summary(iris$Species) #Run summary for categorical variable
# setosa versicolor  virginica
#     50         50         50
#Select cases by their category
hist(iris$Petal.Length[iris$Species == "versicolor"], main="Main Title Petal.Length column versicolor rows under Species column")
hist(iris$Petal.Length[iris$Species == "virginica"], main="Main Title Petal.Length column virginica rows under Species column")
hist(iris$Petal.Length[iris$Species == "setosa"], main="Main Title Petal.Length column setosa rows under Species column")
#Select cases by their value
hist(iris$Petal.Length[iris$Petal.Length < 2], main="Main Title Petal.Length column length less than two rows under Petal.Length column")
#Select multiple cases
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5], main="Main Title petal.Length column virginica rows under Species column and Petal.Length column length less than 5.5 rows under Petal.Length column")
#Create subsample or create dataset temporary.  Format template is datasetname[rows, columns].  Leave rows or columns blank to select all.
temporarydatasetsetosaallcolumns < - iris[iris$Species == "setosa", ]
head(temporarydatasetsetosaallcolumns)
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
hist(temporarydatasetsetosaallcolumns$Petal.Length)
summary(temporarydatasetsetosaallcolumns$Petal.Length)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
# 1.000   1.400   1.500   1.462   1.575   1.900
rm(list=ls()) #Clear Environment tab
dev.off() #Clear Plots tab