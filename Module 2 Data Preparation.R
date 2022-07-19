# Module 2� Data Preparation

## Read Data from Excel
# Save the data in CSV format
# change dir from the file menue 
data <- read.csv("Book1.csv")
data
dim(data)
str(data)

data(mtcars)
mtcars
names(mtcars)
str(mtcars)
dim(mtcars)
nrow(mtcars)
ncol(mtcars)

table(mtcars$cyl)
id=which(mtcars$cyl==6)
summary(mtcars[id,]$mpg)

cbind(summary(mtcars[mtcars$cyl==4,1]),
summary(mtcars[mtcars$cyl==6,1]),
summary(mtcars[mtcars$cyl==8,1]))

mtcars[,2]



data(airquality)
names(airquality)
str(airquality)
dim(airquality)

is.na(airquality)

sum(is.na(airquality))

colSums(is.na(airquality))

rowSums(is.na(airquality))

airquality_clean=na.omit(airquality)
dim(airquality_clean)

###########################

# vectors
c("learning", "to", "create", "char" ,"vectors")
c(3,2,10,55)
c(TRUE, FALSE, FALSE, FALSE, TRUE)
6:15
seq(6,150, by=5)
seq(6,150, by=20)
v1=seq(6,150, length=20)

v1=seq(6,150, by=25)

# How to subset from a vector "indexing"
v1[4]
v1[4:7]

v1[c(4,8,12,5)]
## obs larger than 100

(1:length(v1))[v1 > 100]
which(v1>100)

# given geneder score
mean(score[gender=="F"])

length(v1[v1 > 100 ])
mean(v1[v1 > 100 ])





v1[v1 > 100 & v1 < 130]

v1[v1 > 100 | v1 < 130]

length(v1)
summary(v1)
mean(v1)
median(v1)
var(v1)
sd(v1)
id=which(v1 > 60)
v1[id]

# matrix
m1=matrix(c(3,8,5,9,10,1,6,9,6,5,10,5,7,6,2,9,3,1,4,10,9,7,7,10,7), nrow=5, byrow=T) # by column
m1

c1=c(3,8,5,9,10)
c2=c(1,6,9,6,5)
c1
c2
m1=cbind(c1,c2)
dim(m1)[2]

m2=rbind(c1,c2)
dim(m2)

############

c1=c(3,8,5,9,10)
c2=c(1,6,9)
c1
c2
m1=cbind(c1,c2)



d=dim(m1)
d
d[1]
d[2]

nrow(m1)
ncol(m1)
colSums(m1)
rowSums(m1)
m1

m1[2,3]
m1[2,]
m1[,3]
m1[1:3,]
m1[,1:3]

m2=m1[,c(4,2,1)]
m2
m1[c(5,3,1),]

m1[2,1:3]
m1[2,c(4,2,1)]
m1[c(5,3,1),3]


m1[rowSums(m1) < 30,]
m1[which( rowSums(m1)<30  ),]

which(m1>6)
m1[m1>6]

nrow(m1)
dim(m1)[1]
###########################

STD=rep(NA,dim(m1)[2])


for(i in 1:dim(m1)[2]){
STD[i]=sd(m1[,i])
}


apply(m1,1,sd)
apply(m1,2,sd)


# data.frame

g <- c(19,17,9,3,5,2) 
s <- c("Yes","Yes","No","Yes","No","No") 
length(g)
length(s)

d=data.frame("grade"=g, "smoking"=s)
dim(d)
names(d)
class(d)

d[,2]
d$smoking







class(airquality)
dim(airquality)
nrow(airquality)
ncol(airquality)
names(airquality)
head(airquality)
str(airquality)
airquality[1:20,2:5]
mean(airquality[,3])
airquality$Wind

id=airquality$Temp > mean(airquality$Temp) 
mean(airquality$Ozone[id],rm.na=TRUE)

# list



l
=list(l1=m1[2,],l2=mtcars[,4],l3=airquality[4,], l4=m1 )
l[[2]]

# Activity
# find the mean for each row in the mtcars data
# find the sd for each column in the mtcars data
# find the summary  for each column in the mtcars data

any(is.na(airquality[27,]))
all(is.na(airquality[27,]))