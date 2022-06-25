help("mtcars") #Opens description mtcars data set Motor Trend Car Road Tests in Help tab
library("ggplot2")
ggplotstaticchartmotortrendhorsepower <- ggplot(data=mtcars,mapping=aes(x=hp))+ggtitle("Horsepower title")+labs(x="HP xaxis")
horsepowermeanmedian <- data.frame(mm=c(mean(mtcars$hp),median(mtcars$hp)),stats=factor(c("mean label","median")))
plotlines <- geom_vline(mapping=aes(xintercept=mm,linetype=stats),show.legend = TRUE,data = horsepowermeanmedian)
ggplotstaticchartmotortrendhorsepower+geom_histogram(color="black",fill="white",breaks=seq(0,400,24),closed="right")+plotlines+scale_linetype_manual(values=c(2,3))+labs(linetype="") #plot the histogram ggplotstaticchartmotortrendhorsepower count all  horsepowers on the x-axis, mean and median horsepowers lines horsepowermeanmedian and plotlines.  geom_histogram to ggplotstaticchartmotortrendhorsepower invokes the plot.  plotlines with changes to the default line types made with scale_linetype_manual shows the mean vertical line and median vertical line.
