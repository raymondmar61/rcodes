createvector<-5.5:0.5
createvector #print 5.5 4.5 3.5 2.5 1.5 0.5.  RM  create six values between 5.5 and 0.5 inclusive increments of 1
createvector - c(2,4,6,8,10,12) #print 3.5   0.5  -2.5  -5.5  -8.5 -11.5 #RM:  Subtract createvector from the values in vector c(2,4,6,8,10,12). The single letter c creates a vector.  Entries in parentheses separated by commas.  Also, R matches the elements according to their respective positions and performs the operation on each corresponding pair of elements.
onenegativeone <- c(1,-1)
createvector*onenegativeone #print 5.5 -4.5  3.5 -2.5  1.5 -0.5 #RM:  The length of the longer vector can be evenly divided by the length of the shorter vector.
addthree<-3
createvector+addthree #print 8.5 7.5 6.5 5.5 4.5 3.5.  #RM:  better than createvector+c(3,3,3,3,3,3)
sum(createvector) #print 18
prod(createvector) #print 162.4219
#Replace specific elements in a vector
createvector[c(1,3,5,6)]<-c(-99,99)
createvector #print -99.0   4.5  99.0   2.5 -99.0  99.0