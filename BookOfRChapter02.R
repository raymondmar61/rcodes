2+3
14/6
14/6+5
14/(6+5)
3^2
2^3
sqrt(x=9)
sqrt(x=5.311)
10^2+3*60/8-3
5^3*(6-2)/(61-3+4)
2^(2+1)-4+64^((-2)^(2.25-1/4))
(0.44*(1-0.44)/34)^(1/2)
log(x=243,base=3)  #3^5=243.  Log calculates the power you raise the base to get x.  x and base must be positive.
2342151012900
0.0000002533
(6*(2.3)+42)/(3^(4.2-3.62))
x <- 5
x = x + 1
x
ls
myvec<-c(1,3,1,42)
myvec
fool <- 32.1
myvec2 <-c(100, fool)
myvec2
3:27
50:(-47+10)
5.3:(-47+1.5)
5:-10
seq(from=3,to=27,by=3)
seq(from=3,to=27,length.out=40)
rep(x=1,times=4) #[1] 1 1 1 1
rep(x=c(3, 66, 999), times=3) #[1]   3  66 999   3  66 999   3  66 999
rep(x=c(3, 66, 999), each=2) #[1]   3   3  66  66 999 999
rep(x=c(3, 66, 999), times=3, each=2) # [1]   3   3  66  66 999 999   3   3  66  66 999 999   3   3 [15]  66  66 999 999
sort(x=c(2.5,-1,-10,3.44),decreasing=FALSE)
sort(x=c(2.5,-1,-10,3.44),decreasing=TRUE)
myvec<-c(5,-2.3,4,4,4,6,8,10,40221,-8)
myvec #[1]     5.0    -2.3     4.0     4.0     4.0     6.0     8.0 [8]    10.0 40221.0    -8.0
myvec[-1] #[1]    -2.3     4.0     4.0     4.0     6.0     8.0    10.0 [8] 40221.0    -8.0
myvec[-2] #[1]     5     4     4     4     6     8    10 40221    -8
myvec[c(1,3,5)] #[1] 5 4 4
myvec[c(1,3,8)] #[1]  5  4 10
myvec[1:7] #[1]  5.0 -2.3  4.0  4.0  4.0  6.0  8.0
myvec[+2] #[1] -2.3
myvecaddtwo<-myvec+2
myvecaddtwo #[1]     7.0    -0.3     6.0     6.0     6.0     8.0    10.0 [8]    12.0 40223.0    -6.0
myvecmultiplyten<-myvec*10
myvecmultiplyten #[1]     50    -23     40     40     40     60     80    100 [9] 402210    -80
myvec+2 #[1]     7.0    -0.3     6.0     6.0     6.0     8.0    10.0 [8]    12.0 40223.0    -6.0
myvec[1:4] #[1]  5.0 -2.3  4.0  4.0
barvariable<-c(3,2,4,4,1,2,4,1,0,0,5)
barvariable #[1] 3 2 4 4 1 2 4 1 0 0 5
barvariable[5]<-1000
barvariable #[1]    3    2    4    4 1000    2    4    1    0    0    5
barvariable[c(1,7,8)]<-c(-2222, 5678, 10000000)
barvariable #[1]    -2222        2        4        4     1000        2 [7]     5678 10000000        0        0        5
barvariable[9:11]<-99
barvariable #[1]    -2222        2        4        4     1000        2 [7]     5678 10000000       99       99       99
downwardincrementone<-5.5:0.5
downwardincrementone #[1] 5.5 4.5 3.5 2.5 1.5 0.5
subtractdownwardincrementone<-downwardincrementone-c(2,4,6,8,10,12)
subtractdownwardincrementone #[1]   3.5   0.5  -2.5  -5.5  -8.5 -11.5
longervector<-5.5:0.5
shortervector<-c(+1,-1)
longervector*shortervector #[1]  5.5 -4.5  3.5 -2.5  1.5 -0.5
addthreesinglevector<-3
longervector+addthreesinglevector #[1] 8.5 7.5 6.5 5.5 4.5 3.5
sum(longervector) #[1] 18
prod(longervector) #[1] 162.4219
longervector[c(1,3,5,6)]<-c(-99,99)
longervector #[1] -99.0   4.5  99.0   2.5 -99.0  99.0
