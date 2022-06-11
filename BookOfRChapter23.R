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
