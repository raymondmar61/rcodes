#Exercise 23.1
#a Use mfrow to present the boxplot and the scatterplot with a fitted line as a vertical column in one device.  The plots are a linear model fitted with a categorical predictor treated as continuous mtcars data with mpg as the response and cyl as the explanatory.
par(mfrow=c(2,1))
boxplot(mtcars$mpg~mtcars$cyl,xlab="Cylinders",ylab="MPG")
carfit <- lm(mpg~cyl,data=mtcars)
plot(mtcars$mpg~mtcars$cyl,xlab="Cylinders",ylab="MPG")
abline(carfit,lwd=2)
#b Create the layout matrices to reproduce the three plots as square devices
threerowsonecolumn <- cbind(c(2,1,1,3),c(2,1,1,3))
threerowsonecolumn
'''
     [,1] [,2]
[1,]    2    2
[2,]    1    1
[3,]    1    1
[4,]    3    3
'''
layout(threerowsonecolumn)
layout.show(3)
tworowsthreecolumnsfirstcolumnistworows <- rbind(c(1,1,2,3),c(1,1,4,5))
tworowsthreecolumnsfirstcolumnistworows
'''
     [,1] [,2] [,3] [,4]
[1,]    1    1    2    3
[2,]    1    1    4    5
'''
layout(tworowsthreecolumnsfirstcolumnistworows)
layout.show(5)
fourrowstwocolumnsvariety <- cbind(c(2,3,3,1),c(2,3,3,1),c(2,4,5,1))
fourrowstwocolumnsvariety
'''
     [,1] [,2] [,3]
[1,]    2    2    2
[2,]    3    3    4
[3,]    3    3    5
[4,]    1    1    1
'''
layout(fourrowstwocolumnsvariety)
layout.show(5)
#c Produce a set of plots from the quakes database at dimensions 9 inches by 4.5 inches.  Two rows, three columns, and left and right columns occupies two rows.
dev.new(width=9,height=4.5)
tworowsthreecolumnsvariety <- rbind(c(1,1,2,4),c(1,1,3,4))
tworowsthreecolumnsvariety
'''
     [,1] [,2] [,3] [,4]
[1,]    1    1    2    4
[2,]    1    1    3    4
'''
layout(tworowsthreecolumnsvariety)
layout.show(4)
par(mar=c(4,4,2,1))
plot(quakes$long,quakes$lat,cex=0.02*quakes$stations,xlab="Longitude",ylab="Latitude")
box(which="figure",col="gray")
plot(quakes$mag,quakes$stations,xlab="Magnitude",ylab="Stations")
box(which="figure",col="gray")
plot(quakes$depth,quakes$stations,xlab="Depth",ylab="Stations")
box(which="figure",col="gray")
hist(quakes$stations,main="",xlab="Stations")
abline(v=mean(quakes$stations),lty=2)
box(which="figure",col="gray")
#d Write a function named interactive.arrow to superimpose an arrow on a plot using two clicks on the mouse.  RM:  error messages appeared even though I copied and pasted the answer.
interactive.arrow <- function(...,label=NA){
  arr.pts <- locator(2)
  arrows(x0=arr.pts$x[1],y0=arr.pts$y[1],x1=arr.pts$x[2],y1=arr.pts$y[2],...)
  if(!is.na(label)){
    lab.pt <- text(locator(1),label=label,xpd=NA)
  }
}
boxplot(quakes$mag)
interactive.arrow(xpd=TRUE,label="minumum")
interactive.arrow(xpd=TRUE,label="1st quartile")
interactive.arrow(xpd=TRUE,label="median")
interactive.arrow(xpd=TRUE,label="3rd quartile")
interactive.arrow(xpd=TRUE,label="maximum")
interactive.arrow(xpd=TRUE,label="outliers")
