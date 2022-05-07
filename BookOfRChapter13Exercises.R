#Exercise 13.2
#13.2a Proportion of seismic events at a depth of 300km or deeper rounded two decimal places in quakes data.
round(mean(quakes$depth>=300),2) #print 0.45
#13.2b  Mean and median magnitudes at a depth of 300km or deeper in quakes data.
mean(quakes$mag[quakes$depth>=300]) #print 4.527373
median(quakes$mag[quakes$depth>=300]) #print 4.5
#13.2c Write a for loop gives mean weight of chicks for each feed type rounded one decimal place.
levels(chickwts$feed) #print "casein"    "horsebean" "linseed"   "meatmeal"  "soybean"   "sunflower"
for(i in levels(chickwts$feed)){
  print(i)
  '''
  [1] "casein"
  [1] "horsebean"
  [1] "linseed"
  [1] "meatmeal"
  [1] "soybean"
  [1] "sunflower"
  '''
}
for(i in levels(chickwts$feed)){
  cat(i,": ",round(mean(chickwts$weight[chickwts$feed==i]),1)," grams\n",sep="")
  '''
  casein: 323.6 grams
  horsebean: 160.2 grams
  linseed: 218.8 grams
  meatmeal: 276.9 grams
  soybean: 246.4 grams
  sunflower: 328.9 grams
  '''
}
#13.2d Identify the two variable types in InsectSprays data.  Count is numeric-idscrete.  Spray is categorical-nominal.
InsectSprays[1:5,]
'''
  count spray
1    10     A
2     7     A
3    20     A
4    14     A
5    14     A
'''
#13.2e  Calculate the mode count in InsectSprays data.
tablecount <- table(InsectSprays$count)
tablecount
'''
 0  1  2  3  4  5  6  7  9 10 11 12 13 14 15 16 17 19 20 21 22 23 24 26 
 2  6  4  8  4  7  3  3  1  3  3  2  4  4  2  2  4  1  2  2  1  1  1  2 
'''
tablecount[tablecount==max(tablecount)] #print 3\n 8
#13.2f Use tapply to sum the count by spray type in InsectSprays data.
sumcountsbyspraytype <-  tapply(InsectSprays$count,INDEX = InsectSprays$spray,FUN=sum)
sumcountsbyspraytype
'''
  A   B   C   D   E   F 
174 184  25  59  42 200 
'''
#13.2g Write a for loop gives percentage of agriculture units in each spray type group which has at least five bugs rounded whole number.
levels(InsectSprays$spray) #print "A" "B" "C" "D" "E" "F"
for(i in levels(InsectSprays$spray)){
  print(i)
  '''
  [1] "A"
  [1] "B"
  [1] "C"
  [1] "D"
  [1] "E"
  [1] "F"
  '''
}
table(InsectSprays$count)
'''
 0  1  2  3  4  5  6  7  9 10 11 12 13 14 15 16 17 19 20 21 22 23 24 26 
 2  6  4  8  4  7  3  3  1  3  3  2  4  4  2  2  4  1  2  2  1  1  1  2 
'''
table(InsectSprays$count[InsectSprays$spray=="C"])
'''
0 1 2 3 4 7 
2 4 2 2 1 1 
'''
table(InsectSprays$count[InsectSprays$spray=="C"]>=5)
'''
FALSE  TRUE 
   11     1 
'''
for(i in levels(InsectSprays$spray)){
  cat(i,InsectSprays$count[InsectSprays$spray==i],"\n")
  '''
  A 10 7 20 14 14 12 10 23 17 20 14 13 
  B 11 17 21 11 16 14 17 17 19 21 7 13 
  C 0 1 7 2 3 1 2 1 3 0 1 4 
  D 3 5 12 6 4 3 5 5 5 5 2 4 
  E 3 5 3 5 3 6 1 1 3 2 6 4 
  F 11 9 15 22 15 16 13 10 26 26 24 13 
  '''
}
for(i in levels(InsectSprays$spray)){
  cat(i,InsectSprays$count[InsectSprays$spray==i]>=5,"\n")
  '''
  A TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE 
  B TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE 
  C FALSE FALSE TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE 
  D FALSE TRUE TRUE TRUE FALSE FALSE TRUE TRUE TRUE TRUE FALSE FALSE 
  E FALSE TRUE FALSE TRUE FALSE TRUE FALSE FALSE FALSE FALSE TRUE FALSE 
  F TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE 
  '''
}
for(i in levels(InsectSprays$spray)){
  cat("Spray ",i,"; at least 5 bugs: ",round(mean(InsectSprays$count[InsectSprays$spray==i]>=5)*100,0),"% \n",sep="")
  '''
  Spray A; at least 5 bugs: 100% 
  Spray B; at least 5 bugs: 100% 
  Spray C; at least 5 bugs: 8% 
  Spray D; at least 5 bugs: 58% 
  Spray E; at least 5 bugs: 33% 
  Spray F; at least 5 bugs: 100% 
  '''
}
#13.2h Use tapply and a disposable function to obtain the percentage of agriculture units in each spray type group which has at least five bugs rounded whole number.
tapply(InsectSprays$count,INDEX=InsectSprays$spray,FUN=function(x) round(mean(x>=5)*100,0))
'''
  A   B   C   D   E   F 
100 100   8  58  33 100 
'''

#Exercise 13.3
#13.3a 10th, 30th, and 90th percentiles of chick weights and use tapply to determine which feed type is associated with the highest sample variance of weights.
threepercentiles <- quantile(chickwts$weight,prob=c(.1,.3,.9))
threepercentiles
'''
10% 30% 90% 
153 217 359 
'''
chickvariance <- tapply(chickwts$weight,INDEX=chickwts$feed,FUN=var)
chickvariance
'''
   casein horsebean   linseed  meatmeal   soybean sunflower 
 4151.720  1491.956  2728.568  4212.091  2929.956  2384.992 
'''
chickvariance[chickvariance==max(chickvariance)]
'''
meatmeal 
4212.091 
'''
#13.3b
#i Find the IQR of the recorded depths
quakesdepthsiqr <- IQR(quakes$depth)
quakesdepthsiqr #print 444
#ii Find the five-number summary or quantiles all magnitudes at depths 400km or deeper
fivenumbersummary <- summary(quakes$mag[quakes$depth>400])
fivenumbersummary
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  4.000   4.200   4.500   4.545   4.700   5.900 
'''
#iii Use cut from section 4.3.3 to create a factor vector four evenly spaced categories of quakes$depth
dmin <- min(quakes$depth)
dmin #print 40
dmax <- max(quakes$depth)
dmax #print 680
depthcat <- cut(quakes$depth,breaks=seq(dmin,dmax,length=5),include.lowest=TRUE,right=FALSE)
levels(depthcat) #print "[40,200)"  "[200,360)" "[360,520)" "[520,680]"
#iv Sample mean and standard deviation of the magnitudes associated with each category of depth from depthcat
tapply(quakes$mag,INDEX=depthcat,FUN=mean)
'''
 [40,200) [200,360) [360,520) [520,680] 
 4.735492  4.552201  4.500000  4.546488 
'''
tapply(quakes$mag,INDEX=depthcat,FUN=sd)
'''
 [40,200) [200,360) [360,520) [520,680] 
0.4042286 0.3788451 0.3612255 0.3908510 
'''
#v Use tapply to compute the .8th quantile [or 80 percentile] of the magnitudes of the seismic events in quakes, split by depthcat
tapply(quakes$mag,INDEX=depthcat,FUN=quantile,prob=0.8)
'''
 [40,200) [200,360) [360,520) [520,680] 
      5.1       4.8       4.8       4.9 
'''