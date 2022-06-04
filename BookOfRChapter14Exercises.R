#Exercise 14.1
#a Produce a histogram of the counts of insects in InsectSprays data frame
countinsectshistogram = hist(InsectSprays$count)
#b Obtain the total number of inspects found from each spray.  Produce a vertical barplot and pie chart.
totalinsectspraylevel <- levels(InsectSprays$spray)
totalinsectspraylevel #print "A" "B" "C" "D" "E" "F"
totalinsectspraycount <- tapply(InsectSprays$count,INDEX=InsectSprays$spray,FUN=sum)
totalinsectspraycount
'''
  A   B   C   D   E   F 
174 184  25  59  42 200 
'''
barplot(totalinsectspraycount,names.arg=totalinsectspraylevel,xlab="xlabel Spray type",ylab="ylabel Total inspects",main="maintitle Barplot number of insects by spray type barplot color pink",col="pink")
pie(totalinsectspraycount,labels=totalinsectspraylevel,main="maintitle Abundance of insects\naccordingto spray type")
#c Use ggplot2 to generate side-by-side boxplots of the counts of insects according to each spray type and include appropriate axis labels and a title
library("ggplot2")
qplot(InsectSprays$spray,InsectSprays$count,geom="boxplot",xlab="xlabel Spray",ylab="ylabel Number Of Insects",main="maintitle Boxplots of insect counts\naccording to spray type")
#d Use ggplot2 to generate a right-exclusive histogram of the proportion of urban population for the states.  Set breaks to be 10 units each between 0 and 100.  Histogram shows the first quartile, median, and third quartile.  Use the data set USArrests.  USArrests is number of arrests per 100,000 individuals for each state in the US.
qplot(USArrests[,3],geom="blank",main="maintitle US states urban population",xlab="xlabel proportion urban") + geom_histogram(color="blue",fill="white",breaks=seq(0,100,10),closed="right")+geom_vline(mapping=aes(xintercept=c(quantile(USArrests[,3],0.25),median(USArrests[,3]),quantile(USArrests[,3],0.75)),linetype=factor(c("1st Quartile","median","3rd Quartile"))),show.legend=TRUE)+scale_linetype_manual(values=3:5)+labs(linetype="")  #histogram six vertical bars starting around 30 and ending at 100.  Three vertical lines at the 1st quartile, median, and 3rd quartile denoted by a legend on middle right.
#e The object state.abb provides the two-letter state abbreviation in alphabetical order as a character vector.  Produce a horizontal stacked barplot chart
matrixarrestswithouturbanpopulation <- t(as.matrix(USArrests[,-3]))
matrixarrestswithouturbanpopulation
'''
        Alabama Alaska Arizona Arkansas California Colorado Connecticut Delaware Florida Georgia Hawaii Idaho Illinois
Murder     13.2   10.0     8.1      8.8        9.0      7.9         3.3      5.9    15.4    17.4    5.3   2.6     10.4
Assault   236.0  263.0   294.0    190.0      276.0    204.0       110.0    238.0   335.0   211.0   46.0 120.0    249.0
Rape       21.2   44.5    31.0     19.5       40.6     38.7        11.1     15.8    31.9    25.8   20.2  14.2     24.0
        Indiana Iowa Kansas Kentucky Louisiana Maine Maryland Massachusetts Michigan Minnesota Mississippi Missouri Montana
Murder      7.2  2.2      6      9.7      15.4   2.1     11.3           4.4     12.1       2.7        16.1      9.0     6.0
Assault   113.0 56.0    115    109.0     249.0  83.0    300.0         149.0    255.0      72.0       259.0    178.0   109.0
Rape       21.0 11.3     18     16.3      22.2   7.8     27.8          16.3     35.1      14.9        17.1     28.2    16.4
        Nebraska Nevada New Hampshire New Jersey New Mexico New York North Carolina North Dakota  Ohio Oklahoma Oregon
Murder       4.3   12.2           2.1        7.4       11.4     11.1           13.0          0.8   7.3      6.6    4.9
Assault    102.0  252.0          57.0      159.0      285.0    254.0          337.0         45.0 120.0    151.0  159.0
Rape        16.5   46.0           9.5       18.8       32.1     26.1           16.1          7.3  21.4     20.0   29.3
        Pennsylvania Rhode Island South Carolina South Dakota Tennessee Texas  Utah Vermont Virginia Washington
Murder           6.3          3.4           14.4          3.8      13.2  12.7   3.2     2.2      8.5        4.0
Assault        106.0        174.0          279.0         86.0     188.0 201.0 120.0    48.0    156.0      145.0
Rape            14.9          8.3           22.5         12.8      26.9  25.5  22.9    11.2     20.7       26.2
        West Virginia Wisconsin Wyoming
Murder            5.7       2.6     6.8
Assault          81.0      53.0   161.0
Rape              9.3      10.8    15.6
'''
barplot(matrixarrestswithouturbanpopulation,names.arg=state.abb,horiz=T,las=1,legend.text=c("murder","rap","assult"),main="maintitle USA arrests per 100,000\n by state") #returns a horizontal barchart x-axis is count, y-axis is state abbreviation, horizontal stacked bar chart is the sum of murder rap, assault for each state
#f Define a new factor vector urbancat set to 1 if the corresponding state has an urban population percentage greater than the median percentage; otherwise set to 0
urbancat <- rep(1,50)
urbancat #print 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
urbancat[USArrests$UrbanPop<=median(USArrests$UrbanPop)] <- 0
urbancat <- factor(urbancat)
urbancat
'''
 [1] 0 0 1 0 1 1 1 1 1 0 1 0 1 0 0 0 0 0 0 1 1 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0 1 0 0 0
Levels: 0 1
'''
#g Create a new copy of USArrests save as USArrests2 deleting the UrbanPop column and leaving the three crime rate variables.  Insert a new, fourth column with urbancat from #f.
USArrests2 <- USArrests[,-3]
USArrests2
'''
Murder Assault Rape
Alabama          13.2     236 21.2
Alaska           10.0     263 44.5
Arizona           8.1     294 31.0
Arkansas          8.8     190 19.5
California        9.0     276 40.6
Colorado          7.9     204 38.7
Connecticut       3.3     110 11.1
Delaware          5.9     238 15.8
...
'''
USArrests2$urbancat <- urbancat
USArrests2
'''
               Murder Assault Rape urbancat
Alabama          13.2     236 21.2        0
Alaska           10.0     263 44.5        0
Arizona           8.1     294 31.0        1
Arkansas          8.8     190 19.5        0
California        9.0     276 40.6        1
Colorado          7.9     204 38.7        1
Connecticut       3.3     110 11.1        1
Delaware          5.9     238 15.8        1
...
'''
#h Create a scatterplot matrix of USArrests2 and urbancat using the GGally
library("GGally") #RM:  I don't have GGally
ggpairs(USArrests2,aes(col=urbancat),axisLabels="internal")
#i Create a factor vector corresponding to the magnitudes in quakes data set.  Each entry is one of three categories based on breaks marked by the minimum magnitude, 1/3 quantile, 2/3 quantile, and maximum magnitude.
magnitudequantile <- quantile(quakes$mag,c(1/3,2/3))
magnitudefactorvector <- cut(quakes$mag,breaks=c(min(quakes$mag),magnitudequantile[1],magnitudequantile[2],max(quakes$mag)),include.lowest=TRUE)
magnitudefactorvector
'''
[1] (4.7,6.4] [4,4.4]   (4.7,6.4] [4,4.4]   [4,4.4]   [4,4.4]   (4.7,6.4] [4,4.4]   (4.4,4.7] [4,4.4]   [4,4.4]  
  [12] (4.4,4.7] [4,4.4]   [4,4.4]   (4.7,6.4] [4,4.4]   (4.7,6.4] (4.4,4.7] [4,4.4]   [4,4.4]   (4.4,4.7] [4,4.4]  
  [23] [4,4.4]   (4.4,4.7] (4.7,6.4] [4,4.4]   (4.4,4.7] (4.7,6.4] (4.4,4.7] [4,4.4]   (4.4,4.7] (4.4,4.7] (4.7,6.4]
  [34] [4,4.4]   (4.4,4.7] [4,4.4]   (4.4,4.7] (4.4,4.7] [4,4.4]   [4,4.4]   (4.4,4.7] (4.4,4.7] [4,4.4]   [4,4.4]  
  [45] (4.4,4.7] (4.7,6.4] (4.4,4.7] [4,4.4]   [4,4.4]   (4.7,6.4] [4,4.4]   [4,4.4]   (4.4,4.7] [4,4.4]   [4,4.4]  
...
'''
#j Plot i where low, medium, and high magnitude events according to the factor vector i with pch assigned 1, 2, and 3, respectively
plot(quakes[,2],quakes[,1],pch=(1:3)[magnitudefactorvector],xlab="Longitude",ylab="Latitude")
#k Add a legend from j
legend("bottomleft",legend=levels(magnitudefactorvector),pch=1:3)
