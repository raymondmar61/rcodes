chickwts[1:5,] #return the first 5 rows and all columns.  chickwts is in The R Datasets Package.
?chickwts
'''
Chicken Weights by Feed Type
Description
An experiment was conducted to measure and compare the effectiveness of various feed supplements on the growth rate of chickens.
...
'''
chickwts$weight
'''
 [1] 179 160 136 227 217 168 108 124 143 140 309 229 181 141 260 203 148 169 213 257
[21] 244 271 243 230 248 327 329 250 193 271 316 267 199 171 158 248 423 340 392 339
[41] 341 226 320 295 334 322 297 318 325 257 303 315 380 153 263 242 206 344 258 368
[61] 390 379 260 404 318 352 359 216 222 283 332
'''
chickwts$feed
'''
 [1] horsebean horsebean horsebean horsebean horsebean horsebean horsebean horsebean
 [9] horsebean horsebean linseed   linseed   linseed   linseed   linseed   linseed  
[17] linseed   linseed   linseed   linseed   linseed   linseed   soybean   soybean  
[25] soybean   soybean   soybean   soybean   soybean   soybean   soybean   soybean  
[33] soybean   soybean   soybean   soybean   sunflower sunflower sunflower sunflower
[41] sunflower sunflower sunflower sunflower sunflower sunflower sunflower sunflower
[49] meatmeal  meatmeal  meatmeal  meatmeal  meatmeal  meatmeal  meatmeal  meatmeal 
[57] meatmeal  meatmeal  meatmeal  casein    casein    casein    casein    casein   
[65] casein    casein    casein    casein    casein    casein    casein   
Levels: casein horsebean linseed meatmeal soybean sunflower
'''
quakes[1:5,]
'''
     lat   long depth mag stations
1 -20.42 181.62   562 4.8       41
2 -20.62 181.03   650 4.2       15
3 -26.00 184.10    42 5.4       43
4 -17.97 181.66   626 4.1       19
5 -20.42 181.96   649 4.0       11
'''
?quakes
'''
Locations of Earthquakes off Fiji
Description
The data set give the locations of 1000 seismic events of MB > 4.0. The events occurred in a cube near Fiji since 1964.
...
'''
#plot x-y scatterplot
#plot(quakes$long,quakes$lat,xlab="xlabel Longitude",ylab="ylabel Latitude")

#If there's an even number of observations to calculate the median, then take the two middle values and calculate its mean.
observationnumbersvector <- c(2,4.4,3,3,2,2.2,2,4)
xbaraverage <- mean(observationnumbersvector)
xbaraverage #print 2.825
xbarmedian <- median(observationnumbersvector)
xbarmedian #print 2.6
xbarmodeviewintable <- table(observationnumbersvector)
xbarmodeviewintable
'''
observationnumbersvector
  2 2.2   3   4 4.4 
  3   1   2   1   1 
'''
lowestnumber <- min(observationnumbersvector)
lowestnumber #print 2
highestnumber <- max(observationnumbersvector)
highestnumber #print 4.4
rangenumbers <- range(observationnumbersvector)
rangenumbers #print 2.0 4.4
modecountfromdatatable <- max(xbarmodeviewintable)
modecountfromdatatable #print 3
xbarmodeviewintable==max(xbarmodeviewintable)
'''
observationnumbersvector
    2   2.2     3     4   4.4 
 TRUE FALSE FALSE FALSE FALSE 
'''
observationhighestcount <- xbarmodeviewintable[xbarmodeviewintable==max(xbarmodeviewintable)]
observationhighestcount #print 2\n 3  2 is the value and 3 is the frequency.
averagechickenweight <- mean(chickwts$weight)
averagechickenweight #print 261.3099
middlechickenweight <- median(chickwts$weight)
middlechickenweight #print 258
earthquakesfijimagnitudetable <- table(quakes$mag)
earthquakesfijimagnitudetable
'''
  4 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9   5 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.9   6 6.1 
 46  55  90  85 101 107 101  98  65  54  47  43  29  21  20  14   9   8   2   3   1 
6.4 
  1 
'''
modeformagnitudes <- earthquakesfijimagnitudetable[earthquakesfijimagnitudetable==max(earthquakesfijimagnitudetable)]
modeformagnitudes #print 4.5\n 107 4.5 magnitude 107 observations or frequency for 4.5 magnitude
ignoremissingnumbersmean <- mean(c(1,4,NA),na.rm=TRUE)
ignoremissingnumbersmean #print 2.5
ignoremissingnumbersmean <- mean(c(1,4,NaN),na.rm=TRUE)
ignoremissingnumbersmean #print 2.5
#na.rm=TRUE for missing values valid for sum, prod, mean, median, max, min, and range.  Any function calculates a numeric statistics based on a numeric vector.
averageweightbycasinfeed <- mean(chickwts$weight[chickwts$feed=="casein"])
averageweightbycasinfeed #print 323.5933
averageweightbyhorsebeanfeed <- mean(chickwts$weight[chickwts$feed=="horsebean"])
averageweightbyhorsebeanfeed #print 160.2
medianweightbyhorsebeanfeed <- median(chickwts$weight[chickwts$feed=="horsebean"])
medianweightbyhorsebeanfeed #print 151.5
modeweightbyhorsebeanfeed <- mode(chickwts$weight[chickwts$feed=="horsebean"])
modeweightbyhorsebeanfeed #print "numeric"
groupaverageweightsbychickenfeed <- tapply(chickwts$weight, INDEX = chickwts$feed, FUN=mean)
groupaverageweightsbychickenfeed
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
 323.5833  160.2000  218.7500  276.9091  246.4286  328.9167 
'''
groupmodeweightsbychickenfeed <- tapply(chickwts$weight, INDEX = chickwts$feed, FUN=mode)
groupmodeweightsbychickenfeed
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
"numeric" "numeric" "numeric" "numeric" "numeric" "numeric" 
'''
countfeeds <- table(chickwts$feed)
countfeeds
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
       12        10        12        11        14        12 
'''
percentagefeeds <- table(chickwts$feed)/nrow(chickwts)
percentagefeeds
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
0.1690141 0.1408451 0.1690141 0.1549296 0.1971831 0.1690141 
'''
percentagesoybean <- sum(chickwts$feed=="soybean")/nrow(chickwts)
percentagesoybean #print 0.1971831
mean(chickwts$feed=="soybean") #return 0.1971831
averagesoybeanhorsebean <- mean(chickwts$feed=="soybean"|chickwts$feed=="horsebean")
averagesoybeanhorsebean #print 0.3380282
tapplyfunctioninfun <- tapply(chickwts$weight,INDEX = chickwts$feed,FUN=function(x) length(x)/nrow(chickwts)) #dummy argument x to represent the weight numbers as a vector in each feed group.  Average the weights group by by feed.
tapplyfunctioninfun
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
0.1690141 0.1408451 0.1690141 0.1549296 0.1971831 0.1690141 
'''
percentagesoffeedrounded <- round(table(chickwts$feed)/nrow(chickwts),digits=3)
percentagesoffeedrounded
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
    0.169     0.141     0.169     0.155     0.197     0.169 
'''
percent <- round(mean(chickwts$feed=="soybean")*100,1)
percent #print 19.7
quantile8thor80thpercentile <- c(2,4.4,3,3,2,2.2,2,4)
quantile(quantile8thor80thpercentile,prob=0.8) #return 80%\n 3.6
quantiledata <- c(2,4.4,3,3,2,2.2,2,4)
quarterspercentiles <- quantile(quantiledata,prob=c(0,.25,.50,.75,1))
quarterspercentiles
'''
  0%  25%  50%  75% 100% 
2.00 2.00 2.60 3.25 4.40 
'''
summary(quantiledata)
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  2.000   2.000   2.600   2.825   3.250   4.400 
'''
quantile(chickwts$weight,prob=c(.25,.75))
'''
  25%   75% 
204.5 323.5 
'''
summary(quakes$mag[quakes$depth<400])  #depth must be less than 400km in quakes dataset
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   4.00    4.40    4.60    4.67    4.90    6.40 
'''
quantiledatax <- c(2,4.4,3,3,2,2.2,2,4)
quantiledatay <- c(1,4.4,1,3,2,2.2,2,7)
mean(quantiledatax) #print 2.825
mean(quantiledatay) #print 2.825
#plot quantiledatax and quantiledatay on horizontal lines
plot(quantiledatax,type="n",xlab="xlabel",ylab="ylabel data vector",yaxt="n",bty="n")
abline(h=c(3,4),lty=2,col="gray")
abline(v=mean(quantiledatax),lwd=2,lty=3)
text(c(0.8,2),c(3,4),labels=c("x","ytextlabel")) #labels for the horizontal lines abline(h=c(3,4),lty=2,col="gray") for which the c(0.8,2) is the starting point to print the label on the horizontal lines
points(jitter(c(quantiledatax,quantiledatay)),c(rep(3,length(quantiledatax)),rep(4,length(quantiledatay)))) #plot points on horizontal lines
var(quantiledatax) #print 0.9078571
sd(quantiledatax) #print 0.9528154
IQR(quantiledatax) #print 1.25 #IQR is interquartile range
IQRformula <- as.numeric(quantile(quantiledatax,0.75)-quantile(quantiledatax,0.25))
IQRformula #print 1.25
var(quantiledatay) #print 4.050714
sd(quantiledatay) #print 2.012639
IQR(quantiledatay) #print 1.6 #IQR is interquartile range
IQRformula <- as.numeric(quantile(quantiledatay,0.75)-quantile(quantiledatay,0.25))
IQRformula #print 1.6