dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv",head=TRUE)
quantile(dataframeexpenses$Amount, probs=0.90) #print 103.172.  90 percentile 90th percentile.
quantile(dataframeexpenses$Amount, probs=c(0.90, 0.80, 0.20, 0.10)) #print 103.172.  Multiple percentiles.
'    90%     80%     20%     10% 
103.172  32.494   3.000   1.910 
'

#Binomial distribution.  n=20 trials.  Probability of success is 1/6 p=1/6.  X is binomially distributed X~BIN(n=20,p=1/6).  The Binomial Distribution functions dbinom, pbinom, qbinom, rbinom.
#dbinom is the find values for the probability density function of X.
probabilityxis3 <- dbinom(X=3, size=20, prob=1/6) #Probability X is 3 P(X=3)
probabilityxis3 #return 0.2378866
probabilityx0to3 <- dbinom(X=0:3, size=20, prob=1/6) #Probability x is 0 and x is 1 and x is 2 and x is 3
probabilityx0to3 #return 0.02608405 0.10433621 0.19823881 0.23788657.  Zero success, 1 success, 2 successes, and 3 successes, respectively.
probabilityxlessthanequal3 <- sum(dbinom(X=0:3, size=20, prob= 1/6)) #Probability zero success, one success, two successes, or three successes
probabilityxlessthanequal3 #return 0.5665456.
#pbinom gives values for the probability distribution function of X
probabilitydistributionxlessthanequal3 <- pbinom(q=3, size=20, prob=1/6, lower.tail=T) #Probability zero success, one success, two successes, or three successes
probabilitydistributionxlessthanequal3 #return 0.5665456.
#rbinom takes a random sample from a binomial distribution
#qbinom finds quantiles for a binomial distribution

#Poisson distribution.  Known rate of 7 lambda=7.  The functions are dpois, ppois, qpois, and rpois.
#dpois finds values for the probability density function of X.
probabilityxisexactly4 <- dpois(X=4, lambda=7) 
probabilityxisexactly4 #return 0.09122619.  It's a percentage chance of four occurrences.
probabilityx0to4 <- dpois(X=0:4, lambda=7) #Probability x is 0 and x is 1 and x is 2 and x is 3 and x is 4.
probabilityx0to4 #return 0.000911882 0.006383174 0.022341108 0.052129252 0.091226192
probabilityxlessthanequal4 <- sum(dpois(X=0:4, lambda=7)) #Probability x is 0 or x is 1 or x is 2 or x is 3 or x is 4.
probabilityxlessthanequal4 #return 0.1729916
#or
#ppois returns probabilities associated with the probability distribution function
probabilityxlessthanequal4 <- ppois(q=4, lambda=7, lower.tail=T)
probabilityxlessthanequal4 #return 0.1729916
probabilityxgreaterthanequal12 <- ppois(q=12, lambda=7, lower.tail=F) #X is greater than or equal to 12.
probabilityxgreaterthanequal12 #return return 0.02699977
#rpois takes a random sample from a poisson distribution
#qpois find quantiles for the poisson distribution

#Normal distribution X.  Known mean 75.  Standard deviation 5.  X~N(mu=75, ru^2=5^2).  The functions are dnorm, pnorm, qnorm, and rnorm.
#pnrom find the probability for a normal random variable
probabilityxlessthanequal70 <- pnorm(q=70, mean=75, sd=5, lower.tail=T)
probabilityxlessthanequal70 #return 0.1586553
probabilityxgreaterthanequal85 <- pnorm(q=85, mean=75, sd=5, lower.tail=F)
probabilityxgreaterthanequal85 #return 0.02275013
#Standard normal Z.  Probability greater than equal to 1
pnorm(q=1, mean=0, sd=1, lower.tail=F) #return 0.1586553
#qnorm to find quantiles or percentiles for a normal random variable
firstquartile25thpercentile <- qnorm(p=0.25, mean=75, sd=5, lower.tail=T)
firstquartile25thpercentile #return 71.62755
#dnorm to plot probability density function
xvalues55to95 <- seq(from=55, to=95, by=0.25)
xvalues55to95
'
  [1] 55.00 55.25 55.50 55.75 56.00 56.25 56.50 56.75 57.00 57.25 57.50 57.75 58.00 58.25 58.50 58.75 59.00 59.25
 [19] 59.50 59.75 60.00 60.25 60.50 60.75 61.00 61.25 61.50 61.75 62.00 62.25 62.50 62.75 63.00 63.25 63.50 63.75
 [37] 64.00 64.25 64.50 64.75 65.00 65.25 65.50 65.75 66.00 66.25 66.50 66.75 67.00 67.25 67.50 67.75 68.00 68.25
 [55] 68.50 68.75 69.00 69.25 69.50 69.75 70.00 70.25 70.50 70.75 71.00 71.25 71.50 71.75 72.00 72.25 72.50 72.75
 [73] 73.00 73.25 73.50 73.75 74.00 74.25 74.50 74.75 75.00 75.25 75.50 75.75 76.00 76.25 76.50 76.75 77.00 77.25
 [91] 77.50 77.75 78.00 78.25 78.50 78.75 79.00 79.25 79.50 79.75 80.00 80.25 80.50 80.75 81.00 81.25 81.50 81.75
[109] 82.00 82.25 82.50 82.75 83.00 83.25 83.50 83.75 84.00 84.25 84.50 84.75 85.00 85.25 85.50 85.75 86.00 86.25
[127] 86.50 86.75 87.00 87.25 87.50 87.75 88.00 88.25 88.50 88.75 89.00 89.25 89.50 89.75 90.00 90.25 90.50 90.75
[145] 91.00 91.25 91.50 91.75 92.00 92.25 92.50 92.75 93.00 93.25 93.50 93.75 94.00 94.25 94.50 94.75 95.00
'
densityvariable <- dnorm(xvalues55to95, mean=75, sd=5)
densityvariable
'
  [1] 2.676605e-05 3.265128e-05 3.973109e-05 4.822532e-05 5.838939e-05 7.051914e-05 8.495605e-05 1.020930e-04
  [9] 1.223804e-04 1.463329e-04 1.745365e-04 2.076563e-04 2.464438e-04 2.917462e-04 3.445138e-04 4.058096e-04
...
'
plot(xvalues55to95,densityvariable,type="l") #return a line bell shape curve

#Correlation use cor(columnnumericaldata1, columnnumericaldata2).  RM:  I don't have any data for correlation.  Spearman correlation add method="spearman".
#Covariance cov(columnnumericaldata1, columnnumericaldata2) which is the same as variance var().
#Pearson's correlation in a parametric measure of linear association between two numeric variables method="pearson" which is default.  Spearman's rank correlation is a non-parametric measure of the monotonic association between two numeric variables method="spearman".  Kendall's rank correlation is another non-parametric measure of the association, based on concordance or discordance of x-y pairs method="kendall".
#Relationship between Amount and Tax
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv", head=TRUE)
dataframeexpensesamounttaxcolumns <- dataframeexpenses[dataframeexpenses$Amount>=0&dataframeexpenses$Tax>=0&dataframeexpenses$Amount<500,c("Amount","Tax")]
dataframeexpensesamounttaxcolumns <- na.omit(dataframeexpensesamounttaxcolumns) #remove NA, delete NA, exclude NA, remove nulls, delete nulls, exclude nulls.  https://www.tutorialspoint.com/how-to-remove-all-rows-having-na-in-r
dataframeexpensesamounttaxcolumns
plot(dataframeexpensesamounttaxcolumns$Amount,dataframeexpensesamounttaxcolumns$Tax, main="Scatterplot Amount and Tax positive association",las=1)
pearsoncorrelation <- cor(dataframeexpensesamounttaxcolumns$Amount,dataframeexpensesamounttaxcolumns$Tax, method="pearson") #Order doesn't matter cor(dataframeexpensesamounttaxcolumns$Tax,dataframeexpensesamounttaxcolumns$Amount . . . ) is the same.
pearsoncorrelation #return 0.9912537
confidenceintervaltesthypothesis <- cor.test(dataframeexpensesamounttaxcolumns$Amount,dataframeexpensesamounttaxcolumns$Tax, method="pearson")
confidenceintervaltesthypothesis
'
	Pearson\'s product-moment correlation

data:  dataframeexpensesamounttaxcolumns$Amount and dataframeexpensesamounttaxcolumns$Tax
t = 183.06, df = 594, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
    0.9897340 0.9925493
sample estimates:
    cor 
0.9912537 
'
cor.test(dataframeexpensesamounttaxcolumns$Amount,dataframeexpensesamounttaxcolumns$Tax, method="pearson", alt="greater", conf.level = 0.99) #change alternative hypothesis from two sided to greater than zero.  Change confidence level to 99%.
'
	Pearson\'s product-moment correlation

data:  dataframeexpensesamounttaxcolumns$Amount and dataframeexpensesamounttaxcolumns$Tax
t = 183.06, df = 594, p-value < 2.2e-16
alternative hypothesis: true correlation is greater than 0
99 percent confidence interval:
    0.9894221 1.0000000
sample estimates:
    cor 
0.9912537 
'
covariancefunction <- cov(dataframeexpensesamounttaxcolumns$Amount,dataframeexpensesamounttaxcolumns$Tax)
covariancefunction #return 123.0547
pairs(dataframeexpensesamounttaxcolumns) #create multiple scatterplot charts for all possible numeric variables or numeric columns

#Simple linear regression examines or models the relationship between two numeric variables.  The exercise is the Tax is the outcome or dependent variable or y variable.
plot(dataframeexpensesamounttaxcolumns$Amount,dataframeexpensesamounttaxcolumns$Tax, main="Scatterplot Amount and Tax positive association",las=1)
linearregressionmodel <- lm(dataframeexpensesamounttaxcolumns$Tax~dataframeexpensesamounttaxcolumns$Amount) #y variable dependent on the left, x variable independent on the right
abline(linearregressionmodel, col=2, lwd=3) #insert regression line immediately below the plot.  Red color.  Line width three times bigger.  Predicted line.  Forecast line.  Fitted line.
summary(linearregressionmodel) #The residuals or errors is the difference or subtraction between the observed value and the predicted value which is on the line.  The standard deviation of these error or residuals is called the Residual standard error.
'
Call:
lm(formula = dataframeexpensesamounttaxcolumns$Tax ~ dataframeexpensesamounttaxcolumns$Amount)

Residuals:
    Min      1Q  Median      3Q     Max 
-5.3290 -0.0224 -0.0092  0.0239  3.5702 

Coefficients:
                                          Estimate Std. Error t value Pr(>|t|)    
(Intercept)                              0.0158255  0.0201590   0.785    0.433    
dataframeexpensesamounttaxcolumns$Amount 0.0825485  0.0004509 183.064   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.4247 on 594 degrees of freedom
Multiple R-squared:  0.9826,	Adjusted R-squared:  0.9826 
F-statistic: 3.351e+04 on 1 and 594 DF,  p-value: < 2.2e-16
'
attributes(linearregressionmodel)
'
$names
 [1] "coefficients"  "residuals"     "effects"       "rank"          "fitted.values" "assign"        "qr"           
 [8] "df.residual"   "xlevels"       "call"          "terms"         "model"        

$class
[1] "lm"
'
linearregressionmodel$coef #same as linearregressionmodel$coefficients. coef(linearregressionmodel) also works.
'
                             (Intercept) dataframeexpensesamounttaxcolumns$Amount 
                              0.01582554                               0.08254850 
'
confidenceinterval <- confint(linearregressionmodel)
confidenceinterval
'
                                               2.5 %     97.5 %
(Intercept)                              -0.02376607 0.05541716
dataframeexpensesamounttaxcolumns$Amount  0.08166289 0.08343410
'
confidenceinterval99 <- confint(linearregressionmodel, level=0.99)
confidenceinterval99
'
                                               0.5 %     99.5 %
(Intercept)                              -0.03626800 0.06791909
dataframeexpensesamounttaxcolumns$Amount  0.08138324 0.08371375
'
anova(linearregressionmodel)
'
Analysis of Variance Table

Response: dataframeexpensesamounttaxcolumns$Tax
                                          Df Sum Sq Mean Sq F value    Pr(>F)    
dataframeexpensesamounttaxcolumns$Amount   1 6044.0  6044.0   33513 < 2.2e-16 ***
Residuals                                594  107.1     0.2                      
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
'
plot(linearregressionmodel) #multiple regression diagnostic plot charts.  Press *return* to see the next chart.
#Regression
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv",head=TRUE)
xvariable <- as.matrix(dataframeexpenses[-6]) #All columns except column 6 Amount
yvariable <- dataframeexpenses[,6] #All rows for column 6 Amount
regressionsimultaneousentry <- lm(yvariable~xvariable) #Error in `contrasts<-`(`*tmp*`, value = contr.funs[1 + isOF[nn]]) : contrasts can be applied only to factors with 2 or more levels.  RM:  still works.
#or specify the individual variables.  The Amount is predicted by the Tax.  RM:  I specify the individual variables.
regressionsimultaneousentry <- lm(Amount~Tax, data=dataframeexpenses)
regressionsimultaneousentry
'
Call:
lm(formula = Amount ~ Tax, data = dataframeexpenses)

Coefficients:
(Intercept)          Tax  
     0.4975      12.2779  
'
summary(regressionsimultaneousentry)
'
Call:
lm(formula = Amount ~ Tax, data = dataframeexpenses)

Residuals:
    Min      1Q  Median      3Q     Max 
-238.79   -1.18   -0.69   -0.42  801.40 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)   0.4975     1.4085   0.353    0.724    
Tax          12.2779     0.2174  56.485   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 33.8 on 627 degrees of freedom
  (1068 observations deleted due to missingness)
Multiple R-squared:  0.8358,	Adjusted R-squared:  0.8355 
F-statistic:  3191 on 1 and 627 DF,  p-value: < 2.2e-16
'
anova(regressionsimultaneousentry) #Coefficients with inferential tests
coef(regressionsimultaneousentry) #Coefficients
confint(regressionsimultaneousentry) #Confidence for coefficients
resid(regressionsimultaneousentry) #Residuals case by case
hist(residuals(regressionsimultaneousentry)) #Histogram of residuals

#Principal component analysis PCA.  Two variables like a scatterplot chart, regression line, and the perpendicular distance from the regression line and not vertical lines, and collapse take all scatterplots move them to the regression line.  Optional to rotate to a flat line at 180 degrees.
dataframeexpenses <- read.csv("/home/mar/rstudio/endgamecsvexpenses.csv",head=TRUE)
pcprincipalcomponents <- prcomp(dataframeexpenses, center=TRUE, scale=TRUE) #center=TRUE center means to 0 is optional.  scale=TRUE sets unit variance.
#or specify variables from a dataframe
pcprincipalcomponents <- prcomp(~Amount+Tax, data=dataframeexpenses, center=TRUE, scale=TRUE) #center=TRUE center means to 0 is optional.  scale=TRUE sets unit variance.
pcprincipalcomponentssummary <- summary(pcprincipalcomponents)
pcprincipalcomponentssummary #PC1 is principal component 1 which is Amount.  PC2 is principal component 2 or which is Tax.
'
Importance of components:
                          PC1    PC2
Standard deviation     1.3835 0.2929
Proportion of Variance 0.9571 0.0429
Cumulative Proportion  0.9571 1.0000
'