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
