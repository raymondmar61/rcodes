#Exercise 7.1
#a Recreate the following plot as closely as you can
x<--3:3
y<-7:13
plot(x,y,type="n",main="")
abline(h=c(7,13),col="red",lty=2,lwd=2)
abline(v=c(-3,3),col="blue",lty=2,lwd=2)
arrows(x0=-2.5,y0=7.5,x1=-1,y1=9.5)
arrows(x0=-2.5,y0=10,x1=-1,y1=10)
arrows(x0=-2.5,y0=12.5,x1=-1,y1=10.5)
arrows(x0=2.5,y0=7.5,x1=1,y1=9.5)
arrows(x0=2.5,y0=10,x1=1,y1=10)
arrows(x0=2.5,y0=12.5,x1=1,y1=10.5)
text(x=0,y=10.25,labels="something")
text(x=0,y=9.75,labels="profound")
#b Create a plot of weight on the x-axis and height on the y-axis.  Use different point characters or colors to distinguish between males and females and provide a matching legend.  Label the axis and give the plot a title.
xaxisweight<-c(55,85,75,42,93,63,58,75,89,67)
yaxisheight<-c(161,185,174,154,188,178,170,167,181,178)
sex<-c("female","male","male","female","male","male","female","male","male","female")
plot(xaxisweight,yaxisheight,type="n",xlab="x axis label weight",ylab="y axis label height")
points(xaxisweight[sex=="male"],yaxisheight[sex=="male"],pch=4,col="blue",cex=2)
points(xaxisweight[sex=="female"],yaxisheight[sex=="female"],pch=3,col="red",cex=4) #RM:  pink color hard to see.  Used pch to recognize different point characters.  cex is size of point.
legend("bottomright",legend=c("male","female"),pch=c(4,3),col=c("blue","red"),pt.cex=c(2,4))  #RM: "bottom" is bottom centered.  pt.cex=c(2,4) unnecessary added as reference.
#Exercise 7.2
#Use ggplot2 for the two exercises in Exercise 7.1
