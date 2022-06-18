dev.new() #Opens a new device window if there is a plot already open.  Becomes active.  Any subsequent plotting commands affect the particular device.
basicscatterplot <- plot(quakes$long,quakes$lat)
basicscatterplot #prints NULL.  RM:  assigning a variable to a graph is nothing.  Running basicscatterplot <- plot(quakes$long,quakes$lat) creates the scatterplot.
dev.new() #Run after basicscatterplot <- plot(quakes$long,quakes$lat) opens a new device window if there is a plot already open.  Becomes active.  Any subsequent plotting commands affect the particular device.
basichistogram <- hist(quakes$stations)  #Run basichistogram creates a histogram at the new device window dev.new()
dev.set(2) #print RStudioGD\n 2 
basicscatterplotlabels <- plot(quakes$long,quakes$lat,xlab="xlabel Longitude",ylab="ylabel Latitude") #replaces basicscatterplot chart with basicscatterplotlabels chart
basicscatterplotlabelscex <- plot(quakes$long,quakes$lat,cex=0.02*quakes$stations,xlab="xlabel Longitude",ylab="ylabel Latitude") #replaces basicscatterplotlabels chart with basicscatterplotlabelscex chart.  The size of each point is proportional to the number of stations
dev.set(3) #print png\n 3
meanverticalline <- abline(v=mean(quakes$stations),lty=2) #RM:  the basichistogram should have seen a vertical line representing the mean at the basichistogram.  No change.
dev.set(4) #print X11cairo\n 4
meanverticalline <- abline(v=mean(quakes$stations),lty=2) #RM:  the basichistogram vertical line representing the mean at the basichistogram appears.  The reason is the window title says R Graphics:  Device 4 (ACTIVE)
dev.off(2) #close active window 2
dev.off() #close currently active device windows
dev.new(width=8,height=4) #Preset the device window dimensions twice as wide as its height.  Default size is width=7 and height=7.
par(mfrow=c(1,2)) #Two plots side by side one row, two columns.  Make sure no plotting windows open.
basicscatterplotlabelscex <- plot(quakes$long,quakes$lat,cex=0.02*quakes$stations,xlab="xlabel Longitude",ylab="ylabel Latitude")
basichistogram <- hist(quakes$stations) 
#basicscatterplotlabelscex and basichistogram are in one window side by side.
meanverticalline <- abline(v=mean(quakes$stations),lty=2) #the basichistogram vertical line representing the mean at the basichistogram appears.
dev.off() #close currently active device windows
layoutmatrix <- matrix(c(10,300,2222,3),2,2) #create a two row and two column grid of plotting cells for which 10 is the upper left cell, 2222 is upper right cell, and 300 and 3 is the bottom cells.
layoutmatrix
'''
     [,1] [,2]
[1,]   10 2222
[2,]  300    3
'''
layoutmatrix <- matrix(c(10,300,2222,3),2,2)
layout(mat=layoutmatrix) #Error in layout(mat = layoutmatrix) : layout matrix must contain at least one reference to each of the values {1 ... 2222}
layoutmatrix <- matrix(c(1,3,2,3),2,2) 
layout(mat=layoutmatrix)
layout.show(n=max(layoutmatrix)) #opens a window two rows, first row two columns, second row one column for a total of three sections
#Activate MASS package to plot the three charts below plot and boxplot are the first row and barplot is the second row
plot(survey$Wr.Hnd,survey$Height,xlab="Writing handspan",ylab="Height")
boxplot(survey$Height~survey$Smoke,xlab="Smoking frequency",ylab="Height")
barplot(table(survey$Exer),horiz=TRUE,main="Exercise")
#Set margin space in different ways.  The first is the number of lines of text which fit on top of one another parallel to each edge by specifying as vectors of length 4 in particular order c(bottom, left, top, right).  The graphical parameters oma or outer margin and mar figure margin control the amounts.
par()$oma #print 0 0 0 0.  Default outer margin.  No outer margin set by default.
par()$mar #print 5.1 4.1 4.1 2.1.  Default figure margin.  5.1 lines of text on the bottom, 4.1 lines of text on the left and top, and 2.1 lines of text on the right.
#RM:  I interpret outer margin as the paper margin in a hard copy print and figure margin as the chart margin in a hard copy print.  Figure margin is the area containing the axes, labels, and titles.  The outer margin or outer region is additional space around the figure margin not included by default.
par(oma=c(1,4,3,2),mar=4:7) #Outer margin bottom 1, left 4, top 3, and right 2.  Figure margins are 4, 5, 6, and 7 lines.
plot(1:10) #return a scatterplot with the revised margins which are irregular squashing the scatterplot
box("figure",lty=2) #create a box or border depicting the figure margin
box("outer",lty=3) #create a box or border depicting the outer margin
mtext("Produce text in the figure margin instead of the box(\"figure\")\nmar[ . ]",line=2) #line is the number of spaces away from the border the text appears.  The optional argument side in mtext dictates where the text appears.  Default is 3 which is the top.  side=1 is bottom, side=2 is left, side=4 is right.
mtext("Produce text above the outer margin(\"outer\")\nmar[ . ]",line=0.5,outer=TRUE) #line is the number of spaces away from the border the text appears.  The optional argument side in mtext dictates where the text appears.  Default is 3 which is the top.  side=1 is bottom, side=2 is left, side=4 is right.
#Use the graphical parameter xpd to draw elements such as draw an arrow or place a legend outside the plotting areas.  xpd is set to FALSE by default.  Set to TRUE to draw outside the figure margin and not in the outer margin.  Set xpd to NA permits drawing in all three areas plot region, figure margin, and outer margin.
par(oma=c(1,1,5,1),mar=c(2,4,5,4))
boxplot(mtcars$mpg~mtcars$cyl,xaxt="n",ylab="MPG") #suppress the horizontal axis xaxt="n"
box("figure",lty=2) #add the figure margin boundary
box("outer",lty=3) #add the outer margin boundary
arrows(x0=c(2,2.5,3),y0=c(44,37,27),x1=c(1.25,2.25,3),y1=c(31,22,20),xpd=NA) #add arrows to each boxplot.  Set xpd=NA allows potential all arrows to be displayed outside the margins.  Set xpd=TRUE allows arrows display outside the figure margins.
text(x=c(2,2.5,3),y=c(45,38,28),c("V4 cars","V6 cars","V8 cars"),xpd=NA) #add labels to each boxplot.  Set xpd=NA allows potential all text to be displayed outside the margins.  Set xpd=TRUE allows text display outside the figure margins.
#R can read mouse clicks inside a chart.  Identify coordinates in a plot.
plot(1,1) #plot a scatterplot at x=1, y=1
locator() #activates locator without arguments for default behaviors.  Left mouse click anywhere in the chart to record x and y coordinates.  Press Esc or right mouse click to terminate locator.  The coordinates left mouse clicked are returned as a list.
drawpointsandlines <- locator(type="o",pch=4,lty=2,lwd=3,col="red",xpd=TRUE) #type="o" produces the points and lines.  type="p" points only.  tye="l" lines only.  xpd=TRUE allows locator points and/or lines to protrude into the figure region margins.
drawpointsandlines #press ESC.  The coordinates left mouse clicked are returned as a list and the lines are plotted on the chart.
plot(survey$Height~survey$Wr.Hnd,pch=16,col=c("gray","black")[as.numeric(survey$Sex)],xlab="Writing handspan",ylab="Height")  #RM:  Load MASS package to produce the scatterplot chart
legend(locator(n=1),legend=levels(survey$Sex),pch=16,col=c("gray","black"))  #left mouse click anywhere once to place the legend for the scatterplot chart
horsepower <- mtcars$hp
milespergallon <- mtcars$mpg
weightedvectorbysamplemean <- mtcars$wt/mean(mtcars$wt) #Creates a vector cars less than the average weight have a value less than one and cars more than the average weight have a value greater than one
plot(horsepower,milespergallon,cex=weightedvectorbysamplemean)
plot(horsepower,milespergallon,cex=weightedvectorbysamplemean,xaxs="i",yaxs="i")  #xaxs="r" and yaxs="r" are defaults which include additional horizontal and vertical padding to prevent points being chopped off.  Set xaxs and yaxs to i removes additional padding.
plot(horsepower,milespergallon,cex=weightedvectorbysamplemean,xaxt="n",yaxt="n",bty="n",xlab="",ylab="") #no axis, no labels, no box.  Just scatterplots points only.
box(bty="o") #The box is a u shape for the present chart.  o shape is default which is a box.  Other shapes are l, 7, c, ], u, and blank ""
box(bty="l",lty=3,lwd=2)  #Capital l shape dotted line line width 2 for the present chart
box(bty="]",lty=2,lwd=9,col="gray")  #Right bracket shape line dots line width 9 gray color
#customize axis.  axis function controls the addition and appearance of an axis on any of the four sides.  side argument side=n takes an integer 1 is bottom, 2 is left, 3 is top, and 4 is right.
horsepowersequence <- seq(min(horsepower),max(horsepower),length=10))
horsepowersequence
'''
[1]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81
 [31]  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100 101 102 103 104 105 106 107 108 109 110 111
...
'''
plot(horsepower,milespergallon,cex=weightedvectorbysamplemean,xaxt="n",bty="n",ann=FALSE)  #scatterplot chart no x-axis, no box, no default axis labels
axis(side=1,at=horsepowersequence) #custom x-axis or bottom axis is horsepowersequence
axis(side=3,at=round(horsepowersequence)) #custom top axis is horsepowersequence in round function
horsepowersequencebetween50325 <- seq(50,325,length=25) #sequence between 50 and 325 spaced by 25
plot(horsepower,milespergallon,cex=weightedvectorbysamplemean,axes=FALSE) #no axis, no box, default x-axis label and y-axis label
box(bty="l") #Capital l shaped box
axis(side=2,tcl=-2,las=1,mgp=c(3,2.5,0)) #y-axis tcl parameter is the length between each tick mark for which -0.5 is default.  Negative values draws the tick marks away from the plot region.  Positive values tick marks are inwards.  las parameter controls the orientation.  Set to 1 tick labels are horizontal.  las=0 is default writes all labels parallel to the corresponding axis.  las=2 is perpendicular to the corresponding axes.  las=3 is labels written vertically.  mgp controls the axis spacing mgp=c(axis title, axis labels, axis line).  Default is mgp=c(3,1,0) axis title is three lines of text away from the plot, tick marks are one line of text away, and the axis line is zero lines of text away from the plot region.
axis(side=1,at=horsepowersequencebetween50325,tcl=1.5,mgp=c(3,1.5,1))  #tick marks placed using at=horsepowersequencebetween50325 using horsepowersequencebetween50325 tcl=1.5 tick marks have an inward facing tick mark 1.5 lines of text in length.  mgp controls the axis spacing mgp=c(axis title, axis labels, axis line).  Default is mgp=c(3,1,0) axis title is three lines of text away from the plot, tick marks are one line of text away, and the axis line is zero lines of text away from the plot region.
#Different fonts
par(mar=c(3,3,3,3))
plot(1,1,type="n",xlim=c(-1,1),ylim=c(0,7),xaxt="n",yaxt="n",ann=FALSE)  #Empty plot region with preset x-limits and y-limits
text(0,6,label="sans text (default\nfamily=\"sans\",font=1")
text(0,5,label="serif text\nfamily=\"serif\", font=1",family="serif",font=1)
text(0,4,label="mono text\nfamily=\"mono\", font=1",family="mono",font=1)
text(0,3,label="mono text (bold, italic)\nfamily=\"mono\", font=4",family="mono",font=4)
text(0,2,label="sans text (italic)\nfamily=\"sans\", font=3",family="sans",font=3)
text(0,1,label="serif text (bold)\nfamily=\"serif\", font=2",family="serif",font=2)
mtext("some",line=1,at=-0.5,cex=2,family="sans") #print on top of plot
mtext("different",line=1,at=0,cex=2,family="serif") #print on top of plot
mtext("fonts",line=1,at=0.5,cex=2,family="mono") #print on top of plot
#RM:  skipped greek symbols and mathematical expressions