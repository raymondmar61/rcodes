#Binomial Distribution in R ｜ R Tutorial 3.1｜ MarinStatsLectures [iG995W0XefU]
#X is the binomially distributed with n=20 trials or 20 trials.  p=1/6 or one out of six chances of success.  X~BIN(n=20,p=1/6)
#dbinom function find values for the probability density function of X, f(x)
dbinom(x=3,size=20,prob=1/6) #return 0.2378866.  x is equal to three.  The probability for x to be 3 from a sample size of 20 with a probability of success is 1 out of 6.  The probability of exactly three successes is 0.2378866.  P(X=3) the probability of three successes.
dbinom(x=1,size=1,prob=1/6) #return 0.1666667
dbinom(x=1,size=1,prob=1/2) #return 0.5
dbinom(x=0:3,size=20,prob=1/6) #return 0.02608405 0.10433621 0.19823881 0.23788657.  The multiple probabilities P(X=0) and P(X=1) and . . . P(X=3); in other words, the probabilities X=0, 1, 2, and 3 or 0 success, 1 success, 2 successes, and 3 successes.
sum(dbinom(x=0:3,size=20,prob=1/6)) #return 0.5665456.  The multiple probabilities P(X<=3); in other words, the probabilities X=0, 1, 2, or 3, or 0 success, 1 success, 2 successes, or 3 successes.
#pbinom function gives us values for the probability distribution function of X, F(x)
pbinom(q=3,size=20,prob=1/6,lower.tail=T) #return 0.5665456.  The multiple probabilities P(X<=3); in other words, the probabilities X=0, 1, 2, or 3, or 0 success, 1 success, 2 successes, or 3 successes.
#rbinom function take a random sample from a Binomial Distribution
#qbinom function find quantiles for a Binomial Distribution

#Poisson Distribution in R ｜ R Tutorial 3.2 ｜ MarinStatsLectures [778WK1Pf8eI]
#X follows a poisson distribution with a known rate of lambda=7.  X~Poisson(lambda=7).
#dpois function find values for the probability density function of X, f(x)
dpois(x=4,lambda=7) #return 0.09122619.  P(X=4) find the probability x is equal to 4 or 4 occurrences.
dpois(x=0:4,lambda=7) #return 0.000911882 0.006383174 0.022341108 0.052129252 0.091226192.  The multiple probabilities P(X=0) and P(X=1) and . . . P(X=4); in other words, the probabilities X=0, 1, 2, 3, and 4 or 0 occurrence, 1 occurrence, 2 occurrences, 3 occurrences, and 4 occurrences.
sum(dpois(x=0:4,lambda=7)) #return 0.1729916.  The multiple probabilities P(X<=4); in other words, the probabilities X=0, 1, 2, 3, or 4, or 0 occurrence, 1 occurrence, 2 occurrences, 3 occurrences, or 4 occurrences.
#ppois function returns probabilities associated with the probability distribution function, F(x) 
ppois(q=4,lambda=7,lower.tail=T) #return 0.1729916.  The multiple probabilities P(X<=4); in other words, the probabilities X=0, 1, 2, 3, or 4, or 0 occurrence, 1 occurrence, 2 occurrences, 3 occurrences, or 4 occurrences.
ppois(q=12,lambda=7,lower.tail=F) #return 0.02699977.  P(X>=12)
#rpois function takes a random sample from a poisson distribution.
#qpois function find quantiles for the poisson distribution

#Normal Distribution, Z Scores, and Normal Probabilities in R ｜ R Tutorial 3.3｜ MarinStatslectures [peEsXbdMY_4]
#X is normally distributed with a mean of 75 and a standard deviation of 5.  X~N(u=75,o^2=5^2).
pnorm(q=70,mean=75,sd=5,lower.tail=T) #return 0.1586553.  Probability X is less than or equal to 70.  Mean is 75.  Standard deviation is 5.  P(X<=70).
pnorm(q=85,mean=75,sd=5,lower.tail=F) #return 0.02275013.  Probability X is greater than or equal to 85.  Mean is 75.  Standard deviation is 5.  P(X>=85).
pnorm(q=1,mean=0,sd=1,lower.tail=F)  #return 0.1586553.  Probability for Z or the standard normal.  P(Z>=1)
#The qnorm function can be used to calculate quantiles or percentiles for a normal random variable.
qnorm(p=0.25,mean=75,sd=5,lower.tail=T) #return 71.62755.  Find the 25th percentile or the first quartile with a mean of 75, standard deviation is 5.
#Find or plot the probability density function.
x <- seq(from=55,to=95,by=0.25) 
x
'
[1] 55.00 55.25 55.50 55.75 56.00 56.25 56.50 56.75 57.00 57.25 57.50 57.75 58.00 58.25 58.50 58.75 59.00 59.25
 [19] 59.50 59.75 60.00 60.25 60.50 60.75 61.00 61.25 61.50 61.75 62.00 62.25 62.50 62.75 63.00 63.25 63.50 63.75
...
'
density <- dnorm(x, mean=75,sd=5)
plot(x,density) #return bell shape curve small open circles centered at x=75
plot(x,density,type="l",main="X~Normal mean=75 sd=5",xlab="x", ylab="Probability Density",las=1) #return bell shape curve solid line centered at x=75
abline(v=75) #insert a vertical line at x=75
#Draw a random sample from a normally distributed population
randomsample <- rnorm(n=40,mean=75,sd=5)  #40 observations, mean of 75, standard deviation of 5
randomsample
'
 [1] 72.14892 69.56892 74.39865 70.31727 75.50473 76.38521 78.28730 68.79145 72.47112 70.15186 77.04502 77.60486
[13] 67.43561 68.22826 72.72383 73.69886 76.00663 69.42741 75.93454 72.07116 63.05117 74.81416 77.14774 65.69489
[25] 72.50988 77.06656 68.81227 71.08076 75.52205 78.48871 71.39357 72.84577 67.45015 81.66412 73.04755 75.50732
[37] 75.20175 77.57032 78.56598 76.34113
'
hist(randomsample) #histogram chart randomsamples on the x-axis and the frequency count on the y-axis

#Correlations and Covariance in R with Example  ｜ R Tutorial 4.12 ｜ MarinStatsLectures [XaNKst8ODEQ]
#Pearson's correlation is a parametric measure of the linear association between 2 numeric variables.
#Spearman's rank correlation is a non-parametric measure of the monotonic association between 2 numeric variables.
#Kendall's rank correlation is another non-parametric measure of the association, based on concordance or discordance of x-y pairs.
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
#What is the relationship between Age and Lung Capacity
plot(Age,LungCap,main="Scatterplot",las=1) #scatterplot of lung capacity y-axis and age x-axis.  There is a positive correlation between lung capacity and age.  Age goes up, lung capacity goes up.
cor(Age,LungCap,method="pearson") #return 0.8196749.  Correlation between Age and LungCap columns.  pearson is the default correlation.  cor(LungCap,Age,method="pearson") returns 0.8196749.  Order doesn't matter.
cor(Age,LungCap,method="spearman") #return 0.8172464.  Correlation between Age and LungCap columns.  spearman is the correlation.
cor(Age,LungCap,method="kendall") #return 0.639576.  Correlation between Age and LungCap columns.  kendall is the  correlation.
#A confidence interval returned for the correlation and test the hypothesis the correlation is equal to zero core test command for pearson, spearman, and kendall.
cor.test(Age,LungCap,method="pearson",exact=F) #95% confidence interval for the correlation 0.7942660 0.8422217.  Test statistic t = 38.476 and p value for the test the correlation equals zero 2.2e-16.  Exact is false to approximate a p-value.
'
	Pearson\'s product-moment correlation

data:  Age and LungCap
t = 38.476, df = 723, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
    0.7942660 0.8422217
sample estimates:
    cor 
0.8196749 
'
cor.test(Age,LungCap,method="pearson",exact=F,alt="greater",conf.level=0.99) #95% confidence interval for the correlation 0.7942660 0.8422217.  Test statistic t = 38.476 and p value for the test the correlation equals zero 2.2e-16.  Exact is false to approximate a p-value.  alt changes the alternative hypothesis.  alt="greater" the correlation is greater than zero; by default the alternative is two-sided test.  The comfort level conf.level changes the confidence level.  Set confidence level to 99%.
'
	Pearson\'s product-moment correlation

data:  Age and LungCap
t = 38.476, df = 723, p-value < 2.2e-16
alternative hypothesis: true correlation is greater than 0
99 percent confidence interval:
    0.7891778 1.0000000
sample estimates:
    cor 
0.8196749 
'
#Covariance is less interested in applied statistics.  We can calculate the covariance using the cov function.
cov(Age,LungCap) #return 8.738289
#Produce all possible pairwise plots using pairs command
pairs(lungcapdata) #return Error in pairs.default(lungcapdata) : non-numeric argument to 'pairs'.  if worked, then return scatterplots of different combinations of the columns in lungcapdata
pairs(lungcapdata[,1:3]) #return scatterplots of different combinations of the columns with numerical data LungCap, Age, and Height in lungcapdata
pairs(lungcapdata[,c(1,3)]) #return scatterplots of combinations of column 1 and column 3 with numerical data LungCap and Height in lungcapdata.  RM:  I can't figure out how to use column names instead of index numbers.  Maybe it's impossible to use column names.  Must use column numbers reference number.
cor(lungcapdata[,1:3],method="pearson") #return correlation matrix for all numeric variables
'
          LungCap       Age    Height
LungCap 1.0000000 0.8196749 0.9121873
Age     0.8196749 1.0000000 0.8357368
Height  0.9121873 0.8357368 1.0000000
'
cov(lungcapdata[,1:3],method="pearson") #return covariance matrix for all numeric variables
'
          LungCap       Age   Height
LungCap  7.086288  8.738289 17.48861
Age      8.738289 16.038019 24.10498
Height  17.488607 24.104976 51.87088
'
detach(lungcapdata)

#Simple Linear Regression in R ｜ R Tutorial 5.1 ｜ MarinStatsLectures [66z_MRwtFJM]
#Examine or modelling the relationship between two numeric variables.  We can also fit a simple linear regression using a categorical explanatory variable X.
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
plot(Age,LungCap,main="Scatterplot",las=1) #scatterplot of lung capacity y-axis and age x-axis.  There is a positive correlation between lung capacity and age.  Age goes up, lung capacity goes up.
cor(Age,LungCap) #return 0.8196749
linearmodellm <- lm(LungCap ~ Age) #Use to insert or fit a linear regression.  The first variable LungCap is the Y variable.  The second variable Age is the X variable.
summary(linearmodellm)
'
Call:
lm(formula = LungCap ~ Age)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.7799 -1.0203 -0.0005  0.9789  4.2650 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  1.14686    0.18353   6.249 7.06e-10 ***
Age          0.54485    0.01416  38.476  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.526 on 723 degrees of freedom
Multiple R-squared:  0.6719,	Adjusted R-squared:  0.6714 
F-statistic:  1480 on 1 and 723 DF,  p-value: < 2.2e-16
'
attributes(linearmodellm)
'
$names
 [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"        "qr"           
 [8] "df.residual"   "xlevels"       "call"          "terms"         "model"        

$class
[1] "lm"
'
linearmodellm$coefficients
'
(Intercept)         Age 
  1.1468578   0.5448484 
'
linearmodellm$coef
'
(Intercept)         Age 
  1.1468578   0.5448484 
'
coef(linearmodellm)
'
(Intercept)         Age 
  1.1468578   0.5448484 
'
plot(Age,LungCap,main="Scatterplot",las=1) #scatterplot of lung capacity y-axis and age x-axis.  There is a positive correlation between lung capacity and age.  Age goes up, lung capacity goes up.
abline(linearmodellm,col=2,lwd=3) #insert regression line.  linearmodellm <- lm(LungCap ~ Age) 
confint(linearmodellm,level=0.95) #confidence intervals
'
                2.5 %    97.5 %
(Intercept) 0.7865454 1.5071702
Age         0.5170471 0.5726497
'
anova(linearmodellm) #a nova table anova table
'
Analysis of Variance Table

Response: LungCap
           Df Sum Sq Mean Sq F value    Pr(>F)    
Age         1 3447.0  3447.0  1480.4 < 2.2e-16 ***
Residuals 723 1683.5     2.3                      
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
'
detach(lungcapdata)
