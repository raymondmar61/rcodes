#summary() function
library(datasets) #Load datasets in RStudio
?iris #Help on iris Edgar Anderson's Iris Data.  This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
head(iris)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
countcategoricalvariablespecies <- summary(iris$Species)
countcategoricalvariablespecies
'''
    setosa versicolor  virginica 
        50         50         50 
'''
statisticsquantitativevariablesepallength <- summary(iris$Sepal.Length)
statisticsquantitativevariablesepallength
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  4.300   5.100   5.800   5.843   6.400   7.900 
'''
statisticsallvariables <- summary(iris)
statisticsallvariables
'''
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500   
 '''
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library

#describe() function
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)
library(datasets) #Load datasets in RStudio
?iris #Help on iris Edgar Anderson's Iris Data.  This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
head(iris)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
p_load(psych) #load psych package.  If psych is not installed, then RStudio downloads automatically.
p_help(psych) #opens psych package documentation help PDF in browser.  Must be connected online.  p_help from pacman?
p_help(psych, web=F) #opens psych package documentation help in R Viewer.  Can be connected offline.  p_help from pacman?
sepallengthdescribe <- describe(iris$Sepal.Length) #describe is for quantitative variables
sepallengthdescribe
'''
   vars   n mean   sd median trimmed  mad min max range skew kurtosis   se
X1    1 150 5.84 0.83    5.8    5.81 1.04 4.3 7.9   3.6 0.31    -0.61 0.07
'''
allvariablesdescribe <- describe(iris)
allvariablesdescribe #The asterisk indicates variable is categorical, not quantitative
'''
             vars   n mean   sd median trimmed  mad min max range  skew kurtosis   se
Sepal.Length    1 150 5.84 0.83   5.80    5.81 1.04 4.3 7.9   3.6  0.31    -0.61 0.07
Sepal.Width     2 150 3.06 0.44   3.00    3.04 0.44 2.0 4.4   2.4  0.31     0.14 0.04
Petal.Length    3 150 3.76 1.77   4.35    3.76 1.85 1.0 6.9   5.9 -0.27    -1.42 0.14
Petal.Width     4 150 1.20 0.76   1.30    1.18 1.04 0.1 2.5   2.4 -0.10    -1.36 0.06
Species*        5 150 2.00 0.82   2.00    2.00 1.48 1.0 3.0   2.0  0.00    -1.52 0.07
'''
rm(list=ls()) #clear Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
detach("package:psych",unload=TRUE) #clear psych package

library(datasets) #Load datasets in RStudio
?iris #Help on iris Edgar Anderson's Iris Data.  This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
head(iris)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
histogrampetallength <- hist(iris$Petal.Length) #bar chart x-axis petal lengths y-axis count or frequency of petal lengths
summarystatisticspetallength <- summary(iris$Petal.Length)
summarystatisticspetallength
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.600   4.350   3.758   5.100   6.900 
'''
summarystatisticsspecies <- summary(iris$Species)
summarystatisticsspecies
'''
    setosa versicolor  virginica 
        50         50         50 
'''
histogrampetallengthversicolorspecies <- hist(iris$Petal.Length[iris$Species=="versicolor"], main ="Main title Petal Length for Versicolor Species")
histogrampetallengthversicolorspecies #histogram also created
'''
$breaks
[1] 3.0 3.5 4.0 4.5 5.0 5.5

$counts
[1]  5 11 20 13  1

$density
[1] 0.20 0.44 0.80 0.52 0.04

$mids
[1] 3.25 3.75 4.25 4.75 5.25

$xname
[1] "iris$Petal.Length[iris$Species == \"versicolor\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
histogrampetallengthvirginicaspecies <- hist(iris$Petal.Length[iris$Species=="virginica"], main ="Main title Petal Length for Virginica Species")
histogrampetallengthvirginicaspecies #histogram also created
'''
$breaks
[1] 4.5 5.0 5.5 6.0 6.5 7.0

$counts
[1]  9 16 16  5  4

$density
[1] 0.36 0.64 0.64 0.20 0.16

$mids
[1] 4.75 5.25 5.75 6.25 6.75

$xname
[1] "iris$Petal.Length[iris$Species == \"virginica\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
histogrampetallengthsetosaspecies <- hist(iris$Petal.Length[iris$Species=="setosa"], main ="Main title Petal Length for Setosa Species")
histogrampetallengthsetosaspecies #histogram also created
'''
$breaks
 [1] 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9

$counts
[1]  2  2  7 13 13  7  4  0  2

$density
[1] 0.4 0.4 1.4 2.6 2.6 1.4 0.8 0.0 0.4

$mids
[1] 1.05 1.15 1.25 1.35 1.45 1.55 1.65 1.75 1.85

$xname
[1] "iris$Petal.Length[iris$Species == \"setosa\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
rm(list=ls()) #clear Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library
library(datasets) #Load datasets in RStudio
histogrampetallengthlessthan2 <- hist(iris$Petal.Length[iris$Petal.Length<2],main="Main title Petal Lengths less than 2")
histogrampetallengthlessthan2
'''
$breaks
 [1] 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9

$counts
[1]  2  2  7 13 13  7  4  0  2

$density
[1] 0.4 0.4 1.4 2.6 2.6 1.4 0.8 0.0 0.4

$mids
[1] 1.05 1.15 1.25 1.35 1.45 1.55 1.65 1.75 1.85

$xname
[1] "iris$Petal.Length[iris$Petal.Length < 2]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
histogramvirginicapetallengthlessthan55 <- hist(iris$Petal.Length[iris$Petal.Length<5.5 & iris$Species=="virginica"],main="Main title Short length virginica less than 5.5")
histogramvirginicapetallengthlessthan55
'''
$breaks
[1] 4.4 4.6 4.8 5.0 5.2 5.4

$counts
[1] 1 2 6 9 4

$density
[1] 0.2272727 0.4545455 1.3636364 2.0454545 0.9090909

$mids
[1] 4.5 4.7 4.9 5.1 5.3

$xname
[1] "iris$Petal.Length[iris$Petal.Length < 5.5 & iris$Species == \"virginica\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
'''
#Template create dataset  datasetname[rows, columns].  Leave either rows or columns blank to select all.
createdatasetsetosarows <- iris[iris$Species=="setosa",]
createdatasetsetosarows
'''
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
4           4.6         3.1          1.5         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
...
'''
head(createdatasetsetosarows)
'''
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
'''
summary(createdatasetsetosarows)
'''
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
 Min.   :4.300   Min.   :2.300   Min.   :1.000   Min.   :0.100   setosa    :50  
 1st Qu.:4.800   1st Qu.:3.200   1st Qu.:1.400   1st Qu.:0.200   versicolor: 0  
 Median :5.000   Median :3.400   Median :1.500   Median :0.200   virginica : 0  
 Mean   :5.006   Mean   :3.428   Mean   :1.462   Mean   :0.246                  
 3rd Qu.:5.200   3rd Qu.:3.675   3rd Qu.:1.575   3rd Qu.:0.300                  
 Max.   :5.800   Max.   :4.400   Max.   :1.900   Max.   :0.600  
'''
summary(createdatasetsetosarows$Petal.Length)
'''
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  1.000   1.400   1.500   1.462   1.575   1.900 
'''
hist(createdatasetsetosarows$Petal.Length) #create histogram Petal.Length
createdatasetsetosarowspetallengthlessthan15 <- iris[iris$Species=="setosa" & iris$Petal.Length<1.5,]
createdatasetsetosarowspetallengthlessthan15
'''
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
7           4.6         3.4          1.4         0.3  setosa
9           4.4         2.9          1.4         0.2  setosa
13          4.8         3.0          1.4         0.1  setosa
...
'''
rm(list=ls()) #clear Environment tab
detach("package:datasets",unload=TRUE) #clear packages or uncheck packages in Packages tab System Library

#Regression
#Out of many, one.  Out of many variables, one variable.  Out of many scores, one score.
#Regression.  Use many variables to predict scores on one variables.
library(datasets)
?USJudgeRatings #Lawyers' Ratings of State Judges in the US Superior Court.  Lawyers' ratings of state judges in the US Superior Court.  #RM:  Not Supreme Court.
head(USJudgeRatings)
'''
               CONT INTG DMNR DILG CFMG DECI PREP FAMI ORAL WRIT PHYS RTEN
AARONSON,L.H.   5.7  7.9  7.7  7.3  7.1  7.4  7.1  7.1  7.1  7.0  8.3  7.8
ALEXANDER,J.M.  6.8  8.9  8.8  8.5  7.8  8.1  8.0  8.0  7.8  7.9  8.5  8.7
ARMENTANO,A.J.  7.2  8.1  7.8  7.8  7.5  7.6  7.5  7.5  7.3  7.4  7.9  7.8
BERDON,R.I.     6.8  8.8  8.5  8.8  8.3  8.5  8.7  8.7  8.4  8.5  8.8  8.7
BRACKEN,J.J.    7.3  6.4  4.3  6.5  6.0  6.2  5.7  5.7  5.1  5.3  5.5  4.8
BURNS,E.B.      6.2  8.8  8.7  8.5  7.9  8.0  8.1  8.0  8.0  8.0  8.6  8.6
'''
data <- USJudgeRatings
creatematrix <- as.matrix(data[-12]) #Exclude the last column or the 12th column RTEN Retention
head(creatematrix)
'''
               CONT INTG DMNR DILG CFMG DECI PREP FAMI ORAL WRIT PHYS
AARONSON,L.H.   5.7  7.9  7.7  7.3  7.1  7.4  7.1  7.1  7.1  7.0  8.3
ALEXANDER,J.M.  6.8  8.9  8.8  8.5  7.8  8.1  8.0  8.0  7.8  7.9  8.5
ARMENTANO,A.J.  7.2  8.1  7.8  7.8  7.5  7.6  7.5  7.5  7.3  7.4  7.9
BERDON,R.I.     6.8  8.8  8.5  8.8  8.3  8.5  8.7  8.7  8.4  8.5  8.8
BRACKEN,J.J.    7.3  6.4  4.3  6.5  6.0  6.2  5.7  5.7  5.1  5.3  5.5
BURNS,E.B.      6.2  8.8  8.7  8.5  7.9  8.0  8.1  8.0  8.0  8.0  8.6
'''
retentioncolumn <- data[,12] #return all rows left of comma.  Right of comma is 12th column RTEN Retention.  Not a matrix
head(retentioncolumn) #print 7.8 8.7 7.8 8.7 4.8 8.6
retentioncolumnasmatrix <- as.matrix(data[,12])
head(retentioncolumnasmatrix)
'''
     [,1]
[1,]  7.8
[2,]  8.7
[3,]  7.8
[4,]  8.7
[5,]  4.8
[6,]  8.6
'''
regressionsimultaneousentry <- lm(retentioncolumn~creatematrix) #lm stands for linear model.  Use all the x-variables in creatematrix to predict the y-value which is retention.
regressionsimultaneousentry
'''
Call:
lm(formula = retentioncolumn ~ creatematrix)

Coefficients:
     (Intercept)  creatematrixCONT  creatematrixINTG  creatematrixDMNR  creatematrixDILG  creatematrixCFMG  
        -2.11943           0.01280           0.36484           0.12540           0.06669          -0.19453  
creatematrixDECI  creatematrixPREP  creatematrixFAMI  creatematrixORAL  creatematrixWRIT  creatematrixPHYS  
         0.27829          -0.00196          -0.13579           0.54782          -0.06806           0.26881  
'''
regressionspecifyxvariables <- lm(RTEN~CONT+INTG+DMNR+DILG+CFMG+DECI+PREP+FAMI+ORAL+WRIT+PHYS,data=USJudgeRatings)
regressionspecifyxvariables
'''
Call:
lm(formula = RTEN ~ CONT + INTG + DMNR + DILG + CFMG + DECI + 
    PREP + FAMI + ORAL + WRIT + PHYS, data = USJudgeRatings)

Coefficients:
(Intercept)         CONT         INTG         DMNR         DILG         CFMG         DECI         PREP         FAMI  
   -2.11943      0.01280      0.36484      0.12540      0.06669     -0.19453      0.27829     -0.00196     -0.13579  
       ORAL         WRIT         PHYS  
    0.54782     -0.06806      0.26881  
'''
summary(regressionspecifyxvariables)
'''
Call:
lm(formula = RTEN ~ CONT + INTG + DMNR + DILG + CFMG + DECI + 
    PREP + FAMI + ORAL + WRIT + PHYS, data = USJudgeRatings)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.22123 -0.06155 -0.01055  0.05045  0.26079 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) -2.11943    0.51904  -4.083 0.000290 ***
CONT         0.01280    0.02586   0.495 0.624272    
INTG         0.36484    0.12936   2.820 0.008291 ** 
DMNR         0.12540    0.08971   1.398 0.172102    
DILG         0.06669    0.14303   0.466 0.644293    
CFMG        -0.19453    0.14779  -1.316 0.197735    
DECI         0.27829    0.13826   2.013 0.052883 .  
PREP        -0.00196    0.24001  -0.008 0.993536    
FAMI        -0.13579    0.26725  -0.508 0.614972    
ORAL         0.54782    0.27725   1.976 0.057121 .  
WRIT        -0.06806    0.31485  -0.216 0.830269    
PHYS         0.26881    0.06213   4.326 0.000146 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.1174 on 31 degrees of freedom
Multiple R-squared:  0.9916,	Adjusted R-squared:  0.9886 
F-statistic: 332.9 on 11 and 31 DF,  p-value: < 2.2e-16
'''
analysisofvariancetable <- anova(regressionspecifyxvariables)
analysisofvariancetable
'''
Analysis of Variance Table

Response: RTEN
          Df Sum Sq Mean Sq   F value    Pr(>F)    
CONT       1  0.058   0.058    4.1794 0.0494903 *  
INTG       1 45.096  45.096 3270.7650 < 2.2e-16 ***
DMNR       1  1.300   1.300   94.3167 6.415e-11 ***
DILG       1  2.346   2.346  170.1567 3.963e-14 ***
CFMG       1  0.503   0.503   36.5172 1.086e-06 ***
DECI       1  0.214   0.214   15.5296 0.0004306 ***
PREP       1  0.164   0.164   11.9069 0.0016353 ** 
FAMI       1  0.039   0.039    2.7997 0.1043449    
ORAL       1  0.439   0.439   31.8608 3.385e-06 ***
WRIT       1  0.065   0.065    4.7078 0.0378096 *  
PHYS       1  0.258   0.258   18.7170 0.0001464 ***
Residuals 31  0.427   0.014                        
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
'''
coefficients <- coef(regressionspecifyxvariables)
coefficients
'''
 (Intercept)         CONT         INTG         DMNR         DILG         CFMG         DECI         PREP         FAMI 
-2.119429682  0.012796377  0.364840272  0.125399138  0.066690976 -0.194527027  0.278292932 -0.001960111 -0.135790972 
        ORAL         WRIT         PHYS 
 0.547817680 -0.068061595  0.268811919 
'''
confidenintervals <- confint(regressionspecifyxvariables) #confidence intervals for the coefficients
confidenintervals
'''
                   2.5 %      97.5 %
(Intercept) -3.178010347 -1.06084902
CONT        -0.039955335  0.06554809
INTG         0.101011150  0.62866939
DMNR        -0.057571651  0.30836993
DILG        -0.225031708  0.35841366
CFMG        -0.495940888  0.10688683
DECI        -0.003683181  0.56026904
PREP        -0.491456059  0.48753584
FAMI        -0.680844080  0.40926214
ORAL        -0.017628284  1.11326364
WRIT        -0.710196975  0.57407378
PHYS         0.142088434  0.39553540
'''
residuals <- resid(regressionspecifyxvariables) #residuals on a case by case basis
residuals
'''
  AARONSON,L.H.  ALEXANDER,J.M.  ARMENTANO,A.J.     BERDON,R.I.    BRACKEN,J.J.      BURNS,E.B.   CALLAHAN,R.J. 
   0.1674282950    0.1599043028    0.1318188003   -0.0721243488   -0.1663513584    0.0344455088   -0.1228672774 
     COHEN,S.S.       DALY,J.J.    DANNEHY,J.F.       DEAN,H.H.     DEVITA,H.J.   DRISCOLL,P.J.     GRILLO,A.E. 
  -0.0359845065   -0.0414643393    0.1054849167    0.0315661299    0.0279048490   -0.0066302844    0.1215116258 
 HADDEN,W.L.JR.     HAMILL,E.C.     HEALEY.A.H.       HULL,T.C.       LEVINE,I.   LEVISTER,R.L.     MARTIN,L.F. 
  -0.0707169455    0.0963751277    0.0966781231    0.0587324090    0.2607914304   -0.0613783951   -0.0105476010 
   MCGRATH,J.F.    MIGNONE,A.F.     MISSAL,H.M.     MULVEY,H.M.      NARUK,H.J.    O'BRIEN,F.J. O'SULLIVAN,T.J. 
  -0.0926140135   -0.0964022149   -0.0479617600    0.0279999236   -0.0633662511   -0.0142423076   -0.1918226956 
      PASKEY,L.    RUBINOW,J.E.      SADEN.G.A. SATANIELLO,A.G.       SHEA,D.M.    SHEA,J.F.JR.      SIDOR,W.J. 
   0.0253091922   -0.0179725262   -0.0144131915    0.1145104470   -0.0617147925   -0.0608608820    0.0421019215 
  SPEZIALE,J.A.     SPONZO,M.J.  STAPLETON,J.F.      TESTO,R.J. TIERNEY,W.L.JR.       WALL,R.A.     WRIGHT,D.B. 
   0.1474606096    0.0421784997   -0.2212325911   -0.0375263260   -0.0007537799   -0.0024277845   -0.1204656347 
  ZARRILLI,K.J. 
  -0.0603603048 
'''
hist(residuals) #create a histogram chart of the residuals
rm(list=ls()) #clear Environment tab
