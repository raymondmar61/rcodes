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
