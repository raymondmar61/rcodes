#Factors.  Convert list to factor.
x1 <- 1:3
x1 #print 1 2 3
y <- 1:9
y #print 1 2 3 4 5 6 7 8 9
combinex1yvariablestodataframe <- cbind.data.frame(x1,y)
combinex1yvariablestodataframe
'''
  x1 y
1  1 1
2  2 2
3  3 3
4  1 4
5  2 5
6  3 6
7  1 7
8  2 8
9  3 9
'''
typeof(combinex1yvariablestodataframe) #print list
typeof(combinex1yvariablestodataframe$x1) #print integer
typeof(combinex1yvariablestodataframe$y) #print integer
structurecombinex1yvariablestodataframe <- str(combinex1yvariablestodataframe)
'''
'data.frame':	9 obs. of  2 variables:
 $ x1: int  1 2 3 1 2 3 1 2 3
 $ y : int  1 2 3 4 5 6 7 8 9
'''
convertvectortofactor <- as.factor(x1)
convertvectortofactor
'''
[1] 1 2 3
Levels: 1 2 3
'''
combinex1yvariablestodataframe2 <- cbind.data.frame(convertvectortofactor,y)
combinex1yvariablestodataframe2
'''
  convertvectortofactor y
1                     1 1
2                     2 2
3                     3 3
4                     1 4
5                     2 5
6                     3 6
7                     1 7
8                     2 8
9                     3 9
'''
typeof(combinex1yvariablestodataframe2) #print list
typeof(combinex1yvariablestodataframe2$convertvectortofactor) #print integer
typeof(combinex1yvariablestodataframe2$y) #print integer
structurecombinex1yvariablestodataframe2 <- str(combinex1yvariablestodataframe2)
'''
\'data.frame\':	9 obs. of  2 variables:
$ convertvectortofactor: Factor w/ 3 levels "1","2","3": 1 2 3 1 2 3 1 2 3
$ y                    : int  1 2 3 4 5 6 7 8 9
'''
#Define existing variable as a factor
x3 <- c(1:3)
x3 #print 1 2 3
combinex3yvariablestodataframe <- cbind.data.frame(x3,y)
combinex3yvariablestodataframe
'''
  x3 y
1  1 1
2  2 2
3  3 3
4  1 4
5  2 5
6  3 6
7  1 7
8  2 8
9  3 9
'''
combinex3yvariablestodataframe$x3 <- factor(combinex3yvariablestodataframe$x3,levels=c(1,2,3))
combinex3yvariablestodataframe
'''
x3 y
1  1 1
2  2 2
3  3 3
4  1 4
5  2 5
6  3 6
7  1 7
8  2 8
9  3 9
'''
typeof(combinex3yvariablestodataframe) #print list
typeof(combinex3yvariablestodataframe$x3) #print integer
typeof(combinex3yvariablestodataframe$y) #print integer
structurecombinex1yvariablestodataframe2 <- str(combinex3yvariablestodataframe)
'''
\'data.frame\':	9 obs. of  2 variables:
 $ x3: Factor w/ 3 levels "1","2","3": 1 2 3 1 2 3 1 2 3
 $ y : int  1 2 3 4 5 6 7 8 9
'''
#Insert labels for factors labels
x4 <- c(1:3)
x4 #print 1 2 3
combinex4yvariablestodataframe <- cbind.data.frame(x4,y)
combinex4yvariablestodataframe$x4 <- factor(combinex4yvariablestodataframe$x4,levels=c(1,2,3),labels=c("macOS","Windows","Linux"))
combinex4yvariablestodataframe
'''
       x4 y
1   macOS 1
2 Windows 2
3   Linux 3
4   macOS 4
5 Windows 5
6   Linux 6
7   macOS 7
8 Windows 8
9   Linux 9
'''
typeof(combinex4yvariablestodataframe) #print list
typeof(combinex4yvariablestodataframe$x4) #print integer
typeof(combinex4yvariablestodataframe$y) #print integer
structurecombinex1yvariablestodataframe4 <- str(combinex4yvariablestodataframe)
'''
\'data.frame\':	9 obs. of  2 variables:
 $ x4: Factor w/ 3 levels "macOS","Windows",..: 1 2 3 1 2 3 1 2 3
 $ y : int  1 2 3 4 5 6 7 8 9
 '''
#Ordered factors and ordered labels different order
x5 <- c(1:3)
x5 #print 1 2 3
combinex5yvariablestodataframe <- cbind.data.frame(x5,y)
combinex5yvariablestodataframe
'''
  x5 y
1  1 1
2  2 2
3  3 3
4  1 4
5  2 5
6  3 6
7  1 7
8  2 8
9  3 9
'''
combinex5yvariablestodataframe$x5 <- ordered(combinex5yvariablestodataframe$x5,levels=c(3,1,2),labels=c("No3","Maybe1","Yes2"))
combinex5yvariablestodataframe$x5 #Levels are in order of the labels vector labels=c("No3","Maybe1","Yes2")
'''
[1] Maybe1 Yes2   No3    Maybe1 Yes2   No3    Maybe1 Yes2   No3   
Levels: No3 < Maybe1 < Yes2
'''
combinex5yvariablestodataframe
'''
      x5 y
1 Maybe1 1
2   Yes2 2
3    No3 3
4 Maybe1 4
5   Yes2 5
6    No3 6
7 Maybe1 7
8   Yes2 8
9    No3 9
'''
typeof(combinex5yvariablestodataframe) #print list
typeof(combinex5yvariablestodataframe$x5) #print integer
typeof(combinex5yvariablestodataframe$y) #print integer
structurecombinex1yvariablestodataframe5 <- str(combinex5yvariablestodataframe)
'''
\'data.frame\':	9 obs. of  2 variables:
 $ x5: Ord.factor w/ 3 levels "No3"<"Maybe1"<..: 2 3 1 2 3 1 2 3 1
 $ y : int  1 2 3 4 5 6 7 8 9
 '''
#Clear Environment tab
rm(list=ls())