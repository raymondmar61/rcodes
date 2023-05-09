#Bar Charts and Pie Charts in R ｜ R Tutorial 2.1 ｜ MarinStatsLectures [Eph_Y0BmHU0]
lungcapdata <- read.table(file="/home/mar/rstudio/LungCapData.txt",header=TRUE, sep="\t") #RM:  Used .txt file instead of .csv file from the tutorial to match the results
head(lungcapdata)
'
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
'
table(lungcapdata$Gender)
'
female   male 
   358    367 
'
attach(lungcapdata) #run attach function to speed up R code.  No need to reference the columns in lungcapdata as lungcapdata$*column name* such as lungcapdata$Gender
table(Gender)
'
Gender
female   male 
   358    367 
'
detach(lungcapdata) #remove attach, deactivate attach, unattach
table(lungcapdata$Gender)
'
female   male 
   358    367 
'
attach(lungcapdata)
names(lungcapdata) #return "LungCap"   "Age"       "Height"    "Smoke"     "Gender"    "Caesarean"
countgender <- table(Gender)
countgender
'
Gender
female   male 
   358    367 
'
percentgender <- table(Gender)/725
percentgender
'Gender
   female      male 
0.4937931 0.5062069 
'
barplot(countgender) #return a bar chart female and male x-axis and their counts y-axis
barplot(percentgender,main="Chart title",xlab="xaxis label Gender",ylab="yaxis label Percentage",las=1, names.arg=c("Female label bar on x-axis","Male label bar on x-axis"), horiz=F) #return a vertical bar chart female and male x-axis and their percentages y-axis, y-axis labels horizontally with las
pie(countgender, main="Pie chart title here.  Can add border type box() next")
detach(lungcapdata)

#Boxplots and Grouped Boxplots in R ｜ R Tutorial 2.2 ｜ MarinStatsLectures [U64yNvlhv9I]
lungcapdata <- read.table(file="/home/mar/rstudio/LungCapData.txt",header=TRUE, sep="\t") #RM:  Used .txt file instead of .csv file from the tutorial to match the results
head(lungcapdata)
'
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
'
attach(lungcapdata) #run attach function to speed up R code.  No need to reference the columns in lungcapdata as lungcapdata$*column name* such as lungcapdata$Gender
boxplot(LungCap, main="Boxplot title",ylab="yaxis label Lung Capacity range 0 to 16",ylim=c(0,16),las=1) #return a boxplot for the column LungCap.  Five number summary minimum, first quartile 25%, median 50%, third quartile 75%, and maximum.  y-axis range from 0 to 16 ylim=c(0,16).  y-axis labels horizontal las=1.
quantile(LungCap,probs=c(0.0,0.25,0.5,0.75,1.0))
'
    0%    25%    50%    75%   100% 
 0.507  6.150  8.000  9.800 14.675 
'
boxplot(LungCap~Gender,main="Boxplot title",ylab="yaxis label Lung Capacity range 0 to 16",ylim=c(0,16),las=1) #return boxplot for the column LungCap separated by Gender female and male on x-axis
boxplot(LungCap[Gender=="female"],LungCap[Gender=="male"],main="Boxplot title",ylab="yaxis label Lung Capacity range 0 to 16",ylim=c(0,16),las=1) #return boxplot for the column LungCap Gender female and male on x-axis without x-axis labels
boxplot(LungCap[Gender=="female"],main="Boxplot title",ylab="yaxis label Lung Capacity range 0 to 16",ylim=c(0,16),las=1) #return boxplot for the column LungCap Gender female on x-axis
detach(lungcapdata)

#Box Plots with Two Factors (Stratified Boxplots) in R ｜ R Tutorial 2.3 ｜ MarinStatsLectures [s7ljwAzB5dQ]
#Stratified boxplots examine the relationship between a categorical variable and a numeric variable within strata or groups defined by a third categorical variable.
#The example is the relationship between smoking and lung capacity within the age groups or age strata
lungcapdata <- read.table(file="/home/mar/rstudio/LungCapData.txt",header=TRUE, sep="\t") #RM:  Used .txt file instead of .csv file from the tutorial to match the results
head(lungcapdata)
'
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
'
attach(lungcapdata) #run attach function to speed up R code.  No need to reference the columns in lungcapdata as lungcapdata$*column name* such as lungcapdata$Gender
agegroups <- cut(Age,breaks=c(0,13,15,17,25),labels=c("<13","14/15","16/17","18+"))
Age[1:5] #return 6 18 16 14  5
agegroups[1:5]
'
[1] <13   18+   16/17 14/15 <13  
Levels: <13 14/15 16/17 18+
'
agegroups[1:10]
'
 [1] <13   18+   16/17 14/15 <13   <13   <13   <13   14/15 <13  
Levels: <13 14/15 16/17 18+
'
levels(agegroups) #return "<13"   "14/15" "16/17" "18+"
boxplot(LungCap,ylab="Y axis label Lung Capacity",main="main title BoxPlot Of Lung Capacity",las=1) #las=1 is y-axis labels rotated.  Standard box plot plotting LungCap column from 0 to 15 numbers on y-axis.
boxplot(LungCap~Smoke,ylab="Y axis label Lung Capacity",xlab="X axis Smokers? Smoke column",main="main title BoxPlot Of Lung Capacity",las=1) #Two box plots in one chart.  Left box plot is the Lung Capacity no smokers and right box plot is the Lung Capacity yes smokers.  X axis labels no and yes for Smoke.  The chart shows smokers lung capacity is higher than nonsmokers--counterintuitive.  Tutorial says smokers are older than nonsmokers.  Older children have bigger bodies and bigger lung capacities.
boxplot(LungCap[Age>=18]~Smoke[Age>=18],ylab="Y axis label Lung Capacity",xlab="X axis Smokers? Smoke column",main="main title BoxPlot Of Lung Capacity Smokers And Non Smokers Ages 18+",las=1) #Two box plots in one chart.  Left box plot is the Lung Capacity no smokers and right box plot is the Lung Capacity yes smokers all ages 18 and greater.  X axis labels no and yes for Smoke.  The chart shows smokers lung capacity is lower than nonsmokers all people ages 18 and over.
#Create boxplots of lung capacity for smokers and nonsmokers by agegroups <13 14/15 16/17 18+
boxplot(LungCap~Smoke*agegroups,ylab="Y axis label Lung Capacity",xlab="X axis Smokers? by each agegroup Smoke column",main="main title BoxPlot Of Lung Capacity Smokers And Non Smokers Group By Age Group",las=2, col=c(4,2)) #las=2 x-axis and y-axis labels rotated.  Eight box plots in one chart.  First boxplot far left is no smoke less than 13 years, second is yes smoke less than 13 years, third is no smoke age 14 and 15, fourth is yes smoke age 14 and 15, far right is yes smoke age 18+.  Color 4 is blue for no, color 2 is red for yes.  The col=c(4,2) vector blue and red rotates for no and yes.
#RM:  Y axis label and X-axis label confusing.  They're the Y axis titles and x-axis titles.  They're not the numbers on the y-axis and x-axis.
boxplot(LungCap~Smoke*agegroups,ylab="Y axis label Lung Capacity",xlab="X axis Smokers? by each agegroup Smoke column",main="main title BoxPlot Of Lung Capacity Smokers And Non Smokers Group By Age Group",las=2, col=c("blue","red"),axes=F) #axes=F removes x-axis and y-axis lines and labels
box() #adds a box for the previoius boxplot
axis(2,at=seq(0,20,2),seq(0,20,2),las=1) #insert customized y-axis axis labels from 0 to 15
axis(1,at=c(1.5,3.5,5.5,7.5),labels=c("<13","14-15","16-17","18+")) #insert customized x-axis axis labels <13, 14-15, 16-17, 18+
legend(x=5.5,y=4.5,legend=c("Non-Smokers","Smokers"),col=c(4,"red"),pch=15,cex=0.8) #insert legend Non Smokers blue and Smokers red
detach(lungcapdata)

#Histograms in R ｜ R Tutorial 2.4 ｜ MarinStatsLectures [Hj1pgap4UOY]
lungcapdata <- read.table(file="/home/mar/rstudio/LungCapData.txt",header=TRUE, sep="\t") #RM:  Used .txt file instead of .csv file from the tutorial to match the results
head(lungcapdata)
'
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
'
attach(lungcapdata) #run attach function to speed up R code.  No need to reference the columns in lungcapdata as lungcapdata$*column name* such as lungcapdata$Gender
hist(LungCap) #Histogram of LungCap column counting the number of values.  LungCap is x-axis.  Frequency or count is y-axis.
hist(LungCap,freq=FALSE) #Change from count to probability density
#or
hist(LungCap,prob=T) #Change from count to probability density
#or
hist(LungCap,probability=T,ylim=c(0,0.2)) #Change from count to probability density.  Set y-axis from 0 to 0.02
hist(LungCap,probability=T,ylim=c(0,0.2), breaks=7) #Change from count to probability density.  Set y-axis from 0 to 0.02.  Create 1+7=8 bins.
hist(LungCap,probability=T,ylim=c(0,0.2), breaks=c(0,2,4,6,8,10,12,14,16)) #Change from count to probability density.  Set y-axis from 0 to 0.02.  Assign bin ranges.  First bin is 0 to 2, second bin is 3 to 4, third bin is 5 to 6, last bin is 15 to 16.  Can use sequence breaks=seq(from=0,to=16,by=2)
hist(LungCap,probability=T,ylim=c(0,0.2), breaks=c(0,2,4,6,8,10,12,14,16), main="Histogram title Lung Capacity", xlab="xaxis title label Lung Capacity count",las=1) #Change from count to probability density.  Set y-axis from 0 to 0.02.  Assign bin ranges.  First bin is 0 to 2, second bin is 3 to 4, third bin is 5 to 6, last bin is 15 to 16.  Can use sequence breaks=seq(from=0,to=16,by=2).  las=1 rotates y-axis labels horizontally.
lines(density(LungCap),col=2,lwd=3) #add a probability line red color line width 3 for the histogram chart above or the latest histogram chart
detach(lungcapdata)

#Stem and Leaf Plots in R  ｜ R Tutorial 2.5 ｜ MarinStatsLectures [NpBRo0tRNeY]
#Steam and leaf plots summarize the distribution of a numeric variable best for smaller datasets.
lungcapdata <- read.table(file="/home/mar/rstudio/LungCapData.txt",header=TRUE, sep="\t") #RM:  Used .txt file instead of .csv file from the tutorial to match the results
head(lungcapdata)
'
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
'
attach(lungcapdata) #run attach function to speed up R code.  No need to reference the columns in lungcapdata as lungcapdata$*column name* such as lungcapdata$Gender or lungcapdata$LungCap
femalelungcapacity <- LungCap[Gender=="female"]
head(femalelungcapacity) #return 10.125  9.550  6.225  6.000  7.025  9.525
stem(femalelungcapacity) #The smallest is 0.5.  The largest is 13.1.  There are seven in the 12's:  12.1, 12.2, 12.2, 12.2, 12.4, 12.7, and 12.9.
'

  The decimal point is at the |

   0 | 5
   1 | 0135689
   2 | 0033456777789999
   3 | 0122457788999999
   4 | 012333344555556666677777899
   5 | 0000122222334466666777778999
   6 | 000111111122222222233345555556666667777777788888999999
   7 | 000123334444444445555666667778888888999999
   8 | 000000001111122222333333444444555556666666666777777888888888899
   9 | 0000000011122223333344455556666777788888999999
  10 | 000011111222334445555666777778899
  11 | 00111223556678888
  12 | 1222479
  13 | 1
'
stem(femalelungcapacity,scale=2) #returns the stem separate each whole number by 2 or by half for decimal number 1 to 4 is first half, deciaml number 5 to 9 is second half
detach(lungcapdata)

#Stacked and Grouped Bar Charts and Mosaic Plots in R ｜R Tutorial 2.6｜ MarinStatsLectures [rl1tB9p3FLg]
lungcapdata <- read.table(file="/home/mar/rstudio/LungCapData.txt",header=TRUE, sep="\t") #RM:  Used .txt file instead of .csv file from the tutorial to match the results
head(lungcapdata)
'
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
'
attach(lungcapdata)
table1 <- table(Smoke,Gender)
table1
'
     Gender
Smoke female male
  no     314  334
  yes     44   33
'
barplot(table1) #two barplots in one chart.  Left barplot is female no smoke bottom 314 + yes smoke top 44 = 350.  Right barplot is male no smoke 334 + male yes smoke 33 = 367.
barplot(table1,beside=T) #two stacked barplots in one chart.  First left barplot is female no smoke 314, second left barplot is female smoke 44.  First right barplot is male smoke 334, second right barplot is male yes smoke 33.  Add legend.text=T for the default legend.
barplot(table1,beside=T,legend.text=c("custom legend non-smoker","custom label smoker vector"),main="Chart title Gender And Smoking",xlab="x label Gender",las=1,col=c("green","orange")) #two stacked barplots in one chart.  First left barplot is female no smoke 314, second left barplot is female smoke 44.  First right barplot is male smoke 334, second right barplot is male yes smoke 33.
moasicplot(table1) #create a moasic bar moasic chart
detach(lungcapdata)
