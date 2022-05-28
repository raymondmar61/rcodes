mtcarsdocumentation <- ?mtcars
mtcarsdocumentation
carroadtests <- mtcars[1:5,]
carroadtests
frequencycylinders <- table(mtcars$cyl)  #frequency as in count the cylinders
frequencycylinders
'''
 4  6  8 
11  7 14 
'''
plotbarchartcylinders <- barplot(frequencycylinders)
frequencycylindersbytransmissionszero <- table(mtcars$cyl[mtcars$am==0])  #0 is automatic transmission, 1 is manual transmission
frequencycylindersbytransmissionszero
'''
 4  6  8 
 3  4 12 
'''
frequencycylindersbytransmissionsone <- table(mtcars$cyl[mtcars$am==1])
frequencycylindersbytransmissionsone
'''
 4  6  8 
 8  3  2 
'''
cylindersbytransmissionsmatrix <- table(mtcars$am,mtcars$cyl)  #transmissions row count, cylinders column count; cross tabulate counts
cylindersbytransmissionsmatrix
'''
     4  6  8
  0  3  4 12
  1  8  3  2
'''
plotbarcharttransmissionscylinders <- barplot(cylindersbytransmissionsmatrix,beside=TRUE,horiz=TRUE,las=1,main="Main title",names.arg = c("yaxis label V4","V6","V8"),legend.text=c("legend auto transmission","legend manual transmission"),args.legend=list(x="bottomright"))  #beside=TRUE,horiz=TRUE is a dodged, horizontal bar chart.  beside=FALSE,horiz=FALSE is a stacked, vertical bar chart.  las=1 labels on vertical axis appear horizontally.
#install.packages("ggplot2")  #The downloaded source packages are in ‘/tmp/Rtmp2qZokc/downloaded_packages’
library("ggplot2") #activate ggplot2 library, or go to Packages tab check ggplot2 checkbox
qplot(factor(mtcars$cyl),geom="bar")
qplot(factor(mtcars$cyl),geom="blank",fill=factor(mtcars$am),xlab="xlabel",ylab="",main="Main title")+geom_bar(position="dodge")+scale_x_discrete(labels=c("yaxis labelsV4","V6","V8"))+scale_y_continuous(breaks=seq(0,12,2))+theme_bw()+coord_flip()+scale_fill_grey(name="Legend title Transmission",labels=c("Legend label auto","Manual transmission"))  #ylab="" must be blank because of scale_x_discrete labeling y-axis.  Horizontal bar chart reverse the x-axis and y-axis because x-axis and x-label is on the vertical axis.
pie(table(mtcars$cyl),labels=c("V4","V6","V8"),col=c("white","gray","black"),main="Main title V4 white, V6 gray, v6 black")
horsepowerdata <- mtcars$hp
horsepowerdata
'''
 [1] 110 110  93 110 175 105 245  62  95 123 123 180 180 180 205 215 230  66  52  65
[21]  97 150 150 245 175  66  91 113 264 175 335 109
'''
histogramhorsepowerdata <- hist(mtcars$hp) #return a histogram starting at 50 and ending at 350 separated by 50 bins 50, 100, 150, 200, 250, 300, 350
#create a histogram with two lines one line mean, second line median, and a legend describing the two lines
histogramhorsepowerdatabinsby25 <- hist(mtcars$hp,breaks=seq(0,400,25),col="gray",main="Main title",xlab="xlabel")
histogramhorsepowerdatabinsby25meanmedianline <- abline(v=c(mean(mtcars$hp),median(mtcars$hp)),lty=c(2,3),lwd=2)  #line type 2 is dashed, 3 is dotted, 1 is solid.  lwd is line width thickness
histogramhorsepowerdatabinsby25meanmedianlinelegned <- legend("topright",legend=c("mean horsepower","median horsepower"),lty=c(2,3),lwd=2)
qplot(mtcars$hp) #returns a basic histogram using ggplot2
qplot(mtcars$hp,geom="blank",main="Main title from 0 to 400 bins 25",xlab="xlabel")+geom_histogram(color="black",fill="white",breaks=seq(0,400,25),closed="right")+geom_vline(mapping=aes(xintercept=c(mean(mtcars$hp),median(mtcars$hp)),linetype=factor(c("mean legend label","Median"))),show.legend=TRUE)+scale_linetype_manual(values=c(2,3))+labs(linetype="legend title")  #closed="right" determines each intervial is closed or exclusive on the right and open or inclusive on the left; in other words, 100 to 125 bin 100 is included and 125 is excluded.  geom_vline adds vertical lines.  Line type manual 2 is dashed, 3 is dotted, 1 is solid.  labs(linetype="") suppresses the automatic inclusion of a title for your manually added legend.  RM:  I added legend title to the legend
quakes[1:5,]
'''
     lat   long depth mag stations
1 -20.42 181.62   562 4.8       41
2 -20.62 181.03   650 4.2       15
3 -26.00 184.10    42 5.4       43
4 -17.97 181.66   626 4.1       19
5 -20.42 181.96   649 4.0       11
'''
quakesdataframemagcolumn <- quakes[1:5,4]
quakesdataframemagcolumn #print 4.8 4.2 5.4 4.1 4.0
quakes[1:5,"mag"] #print 4.8 4.2 5.4 4.1 4.0
#quakes[1:5,"lat","long","stations"] #error
quakes[1:5,c("lat","long","stations")]
'''
     lat   long stations
1 -20.42 181.62       41
2 -20.62 181.03       15
3 -26.00 184.10       43
4 -17.97 181.66       19
5 -20.42 181.96       11
'''
head(quakes)
'''
     lat   long depth mag stations
1 -20.42 181.62   562 4.8       41
2 -20.62 181.03   650 4.2       15
3 -26.00 184.10    42 5.4       43
4 -17.97 181.66   626 4.1       19
5 -20.42 181.96   649 4.0       11
6 -19.68 184.31   195 4.0       12
'''
magnitudesfrequencyhistogram <- hist(quakes$mag) #run the line histogram chart appears
magnitudesfrequencyhistogram #run the line data numbers appear
'''
$breaks
 [1] 4.0 4.2 4.4 4.6 4.8 5.0 5.2 5.4 5.6 5.8 6.0 6.2 6.4

$counts
 [1] 191 186 208 163 101  72  41  23   8   5   1   1

$density
 [1] 0.955 0.930 1.040 0.815 0.505 0.360 0.205 0.115 0.040 0.025 0.005 0.005

$mids
 [1] 4.1 4.3 4.5 4.7 4.9 5.1 5.3 5.5 5.7 5.9 6.1 6.3

$xname
[1] "quakes$mag"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
magnitudesnoboxplot <- (quakes$mag)
magnitudesnoboxplot
'''
 [1] 4.8 4.2 5.4 4.1 4.0 4.0 4.8 4.4 4.7 4.3 4.4 4.6 4.4 4.4 6.1 4.3 6.0 4.5 4.4 4.4 4.5 4.2 4.4 4.7 5.4 4.0 4.6 5.2 4.5
[30] 4.4 4.6 4.7 4.8 4.0 4.5 4.3 4.5 4.6 4.1 4.4 4.7 4.6 4.4 4.3 4.6 4.9 4.5 4.4 4.3 5.1 4.2 4.0 4.6 4.3 4.2 4.4 4.5 4.0
[59] 4.4 4.3 4.7 4.1 5.0 4.6 4.9 4.7 4.1 5.0 4.5 5.5 4.0 4.5 4.3 5.2 4.4 4.3 4.1 4.5 4.2 5.3 5.2 4.5 4.6 4.3 4.0 4.3 4.7
...
'''
magnitudesyesboxplot <- boxplot(quakes$mag) #run the line boxplot chart appears
magnitudesyesboxplot #run the line data numbers appear
'''
$stats
     [,1]
[1,]  4.0
[2,]  4.3
[3,]  4.6
[4,]  4.9
[5,]  5.7

$n
[1] 1000

$conf
         [,1]
[1,] 4.570022
[2,] 4.629978

$out
[1] 6.1 6.0 6.4 5.9 5.9 6.0 6.0

$group
[1] 1 1 1 1 1 1 1

$names
[1] "1"
'''
groupbystationnumbers <- cut(quakes$stations,breaks=c(0,50,100,150)) #Chapter 4 is cut() function
head(groupbystationnumbers)
'''
[1] (0,50] (0,50] (0,50] (0,50] (0,50] (0,50]
Levels: (0,50] (50,100] (100,150]
'''
sidebysideboxplotsgroupedbystationnumbers <- boxplot(quakes$mag~groupbystationnumbers,xlab="x-label Number Of Stations Detected",ylab="ylabel Magnitude",col="gray")
sidebysideboxplotsgroupedbystationnumbers #numbers data
'''
$stats
     [,1] [,2] [,3]
[1,]  4.0 4.50  5.4
[2,]  4.3 5.00  5.6
[3,]  4.5 5.20  5.7
[4,]  4.7 5.35  5.9
[5,]  5.3 5.70  6.0

$n
[1] 827 156  17

$conf
         [,1]     [,2]     [,3]
[1,] 4.478023 5.155725 5.585038
[2,] 4.521977 5.244275 5.814962

$out
[1] 5.4 5.4 6.1 6.0 4.4 6.4

$group
[1] 1 1 2 2 2 3

$names
[1] "(0,50]"    "(50,100]"  "(100,150]"
'''
qplot(groupbystationnumbers,quakes$mag,geom="boxplot",xlab="ggplot2 x-label Number Of Stations Detected",ylab="boxplot ylabel Magnitude")
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
plot(iris[,4],iris[,3],type="n",xlab="x label [,4] Petal Width 4 column (cm)",ylab="y label [,3] Petal Length 3 column (cm)") #scatterplot setup.  type="n" is the stepping stone approach from Chapter 7 manually build up the plot using type="n" to generate an empty plotting region of correct dimensions andadding points
points(iris[iris$Species=="setosa",4],iris[iris$Species=="setosa",3],pch=19,col="black")
points(iris[iris$Species=="virginica",4],iris[iris$Species=="virginica",3],pch=19,col="gray")
points(iris[iris$Species=="versicolor",4],iris[iris$Species=="versicolor",3],pch=1,col="black")
legend("topleft",legend=c("setosa","virginica","versicolor"),col=c("black","gray","black"),pch=c(19,19,1))
irispointcharacter <- rep(19,nrow(iris))
irispointcharacter[iris$Species=="versicolor"] <- 1
iriscolor <- rep("black",nrow(iris))
iriscolor[iris$Species=="virginica"] <- "gray"
plot(iris[,4],iris[,3],col=iriscolor,pch=irispointcharacter,xlab="x label [,4] Petal Width 4 column (cm)", ylab="y label [,3] Petal Length 3 column (cm)")  #RM:  I didn't understand
scatterplotmatrixes <- pairs(iris[,1:4],pch=irispointcharacter,col=iriscolor,cex=0.75) #returns a scatterplot matrix for the measurements Sepal.Length, Sepal.Width, Petal.Length, and Petal.Width
scatterplotmatrixes