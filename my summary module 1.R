#############
#building 2 vectors and make operation on them using some built in function

income=c(120,130,140,150,160,175)
age=c(10,20,30,40,50,60,75,88,98,56)

l1=length(age)
l2=length(income)
l1
l2
#range of values is when we order the values from low to high
#and then subtract the lowest from the highest
#the rane is the easiest measure of variability to calculate
range(age)
range(income)


mean(age)
mean(income)
#median is the value in the middle of the data set
#50% of data is smaller or equal to the median
#and 50% is equal or higher

median(age)
median(income)

#variance of values(segma sequare) is the measure of how far each value in the data
#from the mean
#this give us the distance of each value from the mean
#at first find the mean
#subtract each value of the set from the mean
#sequar these values
#sum these values and then devide them by n
var(age)
var(income)

#standard deviation of values is the square root of the variance
#measure the dispersion of a dataset relative to its mean // mo3adal enteshar 3n mean
sd(age)
sd(income)
summary(income)
sqrt(income)
abs(age)
log(age)
sin(age)
