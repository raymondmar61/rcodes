#Exercises 10.1
#10.1a
vec1 <-c(2,1,1,3,2,1,0)
vec2 <-c(3,8,2,2,0,0,0)
cat("This is a test using cat() concatenate display string") #print This is a test using cat()
vec1[1] #print 2
vec2[2] #print 8
(vec2-vec1) #print 1  7  1 -1 -2 -1  0
(vec2-vec1)[c(1,5,1,4)] #print 1 -2, 1, -1
(vec2-vec1)[c(2,6)] #print 7 -1
(vec2-vec1)[2,6] #print Error in (vec2 - vec1)[2, 6] : incorrect number of dimensions
vec2[3] #print 2
if((vec1[1]+vec2[2])==10){cat("True if statement")}
if(vec1[1]>=2&&vec2[1]>=2){cat("True if statement")}
if(all((vec2-vec1)[c(2,6)]<7)){cat("pass")}else{cat("False if statement")}  
if(!is.na(vec2[3])){cat("True if statement")}
#10.1b
#multiply corresponding elements if sum greater than 3; otherwise sum
multiplyorsum<-ifelse(test=vec1+vec2>3,yes=vec1*vec2,no=vec1+vec2)
multiplyorsum #print 6 8 3 6 2 1 0
#10.1c
#skipped

