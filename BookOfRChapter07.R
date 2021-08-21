xcoordinates<-c(1.1, 2, 3.5, 3.9, 4.2)
ycoordinates<-c(2, 2.2, -1.3, 0, 0.2)
plot(xcoordinates,ycoordinates) #scatterplot chart default settings
matrixcoordinates<-cbind(xcoordinates,ycoordinates)
matrixcoordinates
'''
xcoordinates ycoordinates
[1,]          1.1          2.0
[2,]          2.0          2.2
[3,]          3.5         -1.3
[4,]          3.9          0.0
[5,]          4.2          0.2
'''
plot(matrixcoordinates) #scatterplot chart default settings
plot(xcoordinates,ycoordinates,type="l") #line chart
plot(xcoordinates,ycoordinates,type="b") #line chart with points
plot(xcoordinates,ycoordinates,type="o") #line chart with points line goes through points
plot(xcoordinates,ycoordinates,type="n") #blank chart
plot(xcoordinates,ycoordinates,type="b",main="Chart title\n second line",xlab="x axis label",ylab="y axis label") #title and axis labels
plot(xcoordinates,ycoordinates,type="b",main="Chart title",xlab="",ylab="") #blank axis labels
plot(xcoordinates,ycoordinates,type="b",main="1-8 integers black, red, green, blue, teal, purple, yellow, gray",xlab="",ylab="",col=2) #red color.  col=2 or col="red"
plot(xcoordinates,ycoordinates,type="b",main="FYI default color is 1 or black. 2 is red",xlab="",ylab="",col="seagreen4") #green color
plot(xcoordinates,ycoordinates,type="b",main="1-25 inclusive integers alter plotted points pch, plot point size cex default is 1",xlab="",ylab="",col="4",pch=8, cex=2.3) #asterik plot points
plot(xcoordinates,ycoordinates,type="b",main="1-6 inclusive integers alter line type lty, line size lwd default is 1",xlab="",ylab="",col="4",lty=2,lwd=2) #dotted lines
plot(xcoordinates,ycoordinates,main="Custom plot area xlim and ylim",xlab="x-axis leftmost -10 rightmost 5",ylab="y-axis bottom bottom -3 top 3",xlim=c(-10,5),ylim=c(-3,3))
xcoordinates2<-1:20
ycoordinates2<-c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,-12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)
plot(xcoordinates2,ycoordinates2,type="n",main="Blank chart for too elaborate exercise")
abline(h=c(-5,5),col="red",lty=2,lwd=3) #add two horizontal red dotted lines at y=-5 and y=5
segments(x0=c(5,15),y0=c(-5,-5),x1=c(5,15),y1=c(5,5),col="blue",lty=3,lwd=2) #add two blue dotted blue lines first line x0 y0 5 -5 to x1 t y1 5 second line x0 y0 15 -5 to x1 y1 15 5.  RM:  counterintutive
points(xcoordinates2[ycoordinates2>=5],ycoordinates2[ycoordinates2>=5],pch=4,col="darkmagenta",cex=2) #y values greater than or equal to five are plotted dark magenta X plot point.  Use logical vector subsetting.
points(xcoordinates2[ycoordinates2<=-5],ycoordinates2[ycoordinates2<=-5],pch=3,col="darkgreen",cex=2) #y values less than or equal to negative five are plotted dark green plus sign plot point.  Use logical vector subsetting.
points(xcoordinates2[(xcoordinates2>=5&xcoordinates2<=15)&(ycoordinates2>-5&ycoordinates2<5)],ycoordinates2[(xcoordinates2>=5&xcoordinates2<=15)&(ycoordinates2>-5&ycoordinates2<5)],pch=19,col="blue",cex=2) #x values between 5 and 15 inclusive and y values between -5 and 5 exclusive are plotted blue solid dot point.  Use logical vector subsetting.
points(xcoordinates2[(xcoordinates2<5|xcoordinates2>15)&(ycoordinates2>-5&ycoordinates2<5)],ycoordinates2[(xcoordinates2<5|xcoordinates2>15)&(ycoordinates2>-5&ycoordinates2<5)]) #x values less than five or greater than 15 and y values between -5 and 5 exclusive are plotted default settings.  Use logical vector subsetting.
lines(xcoordinates2,ycoordinates2,lty=4) #draw a dot and dash combination line connecting all the plot points
arrows(x0=8,y0=14,x1=11,y1=2.5) #draw an arrow starting at (8,14) and ending at (11,2.5) for which arrow tip is at (11,2.5)
text(x=8,y=15,labels="Insert text starting at (8,15)")
#RM:  run a line again displays again or repeats code.  Double running is recognized.
legend("bottomleft",legend=c("overall process","sweet","standard","too big","too small","sweet y range","sweet x range"),pch=c(NA,19,1,4,3,NA,NA),lty=c(4,NA,NA,NA,NA,2,3),col=c("black","blue","black","darkmagenta","darkgreen","red","red"),lwd=c(1,NA,NA,NA,NA,2,2),pt.cex=c(NA,1,1,2,2,NA,NA)) #legend location can be set with x-coordinates and y-coordinates.  Suggested pick a corner topleft, topright, bottomleft, or bottomright.  legend=c() are the labels as a vector of character strings.  Thereafter supply the remaining argument values in vectors of the same length to match up each label.  Use NA when you don't want to set the corresponding graphical parameter.
#ggplot2 package or grammar of graphics plot 2.
xcoordinates<-c(1.1, 2, 3.5, 3.9, 4.2)
ycoordinates<-c(2, 2.2, -1.3, 0, 0.2)
qplot(xcoordinates,ycoordinates) #ggplot2 default plot
qplot(xcoordinates,ycoordinates,main="Title",xlab="x axis label",ylab="y axis label")
qplot(xcoordinates,ycoordinates,geom="blank") #display blank plot chart
qplot(xcoordinates,ycoordinates,geom="blank") + geom_point() #add plots points from the xcoordinates and ycoordinates
qplot(xcoordinates,ycoordinates,geom="blank") + geom_point() + geom_line() #add plots points from the xcoordinates and ycoordinates and add the plot line
qplot(xcoordinates,ycoordinates,geom="blank") + geom_point(size=3,shape=6,color="blue") + geom_line(color="red",linetype=2) #add blue color triangle plots points from the xcoordinates and ycoordinates and add the dotted red plot line
qplotexperiment1<-qplot(xcoordinates,ycoordinates,geom="blank") + geom_line(color="red",linetype=1)
qplotexperiment1
qplotexperiment1qplot(xcoordinates,ycoordinates,geom="blank") + geom_line(color="blue",linetype=3)
qplotexperiment1
qplotexperiment1 + geom_point(size=3,shape=3,color="blue") #plot blue dotted line with blue plus sign plot points
qplotexperiment1 + geom_point(size=2,shape=7,color="green") #plot blue dotted line with green square plot points
#skipped Aesthetic Mapping With Geoms