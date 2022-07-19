#Topic 2_Data Types and variables in R
#just some modification
#kkkgllgl
#ddd
a1=3
a2=3.5
a1 <- 3

a3=3.578e-5
a4=3.578e52

a5="R"
a6="Many"

a7=TRUE
a8=FALSE


a1
a2

a3
a4


a5
a6
a7
a8


class(a1)
class(a2)
class(a3)
class(a4)
class(a5)
class(a6)
class(a7)
class(a8)


a.1=3
a_2=3.5
.a3=3.578e-5

a.1
a_2
.a3

############################
# Topic 3_Operations in R
# Arithmetic  Operators
a1+a2
a1-a2
a1*a2
a1/a3
a1^a3
1/a1
1/a1+a2
a4^(1/a1)
a3/(a1+a2)

7 %% 2
7 %/% 2

# Relational  Operators
a1<a2


b1= a1 < a2
b1

a1 > a2
a1 > (a2-0.5)
a1 >= (a2-0.5)

a1 == a2 ## It is different than "="
a1 != a2 

b1= a1 < a2
b2= a1 > a2
b1
b2

# activity 
# classifiy the following values as either positive or negative
 (a1-a2) > 0
 (a2-a3) > 0
# classifiy the following values as either odd or even
 (a1 %% 2) ==0
((a1+3)%% 2) ==0

3.578 %% 2==0


# Logical  Operators 
# activity 
# check if the following value is both even and more than 4
((a1+27)/5) %% 2 == 0   &&  ((a1+27)/5) > 4
# check if the following value is both odd and more than 4
((a1+27)/5) %% 2 != 0   &&  ((a1+27)/5) > 4

# check if the following value is either odd or more than 4
((a1+27)/5) %% 2 != 0   ||  ((a1+27)/5) > 4


############################
# Topic 4_Conditional Statement in R
# activity
age.1=45
income.1=140


income.2=130
age.2=32

income.3=160
age.3=64

# if age is more than 40 income is increased by 300

if (age.1>4){
income.1=income.1+300
}
income.1
if(age.2>40){
income.2=income.2+300
}
income.2

if(age.3>45){
income.3=income.3+300
}

income.3
if (age.3 > 40){
income.3=income.3+300
}
income.3



# if age is more than 40 income is increased by 300 and 
# if age is less than or equal to 40 income is increased by 200

if (age.1<=40){
income.1=income.1+200
}
income.1





# if age is more than or equal to 50 income is increased by 400 and 
# if age is more than 40 and less than 50 income is increased by 300 and 
# if age is less than or equal to 40 income is increased by 200

income1=100

if(age.1>=50){
income.1=income.1+400
} else if (age.1>40 & age.1<50){
income.1=income.1+300
} else if (age.1<=40){
income.1=income.1+200
}

income.1

if (age.3 >= 50){
income.3=income.3+400
} else if ( (age.3 >40) && (age.3 < 50) ) {
income.3=income.3+300
} else {
income.3=income.3+200
}

income.3
 

if(){
}
else if() {
}
else if() {
}
else {
}


############################
#Topic 5_Loops in R


vec <- c(1,2,4,3,7,6,9)
vec
for (val in vec)
{
print (val)
}


# activity
# find the sum of values from 1 to 15 using loop, while, repeat

i=0
for(i in 0:15){
i=i+1
}
i


n=0
while(n<16){
n=n+1

}
n

S=0
for (i in 1:15){
S=S+i
}
S



S=rep(1,15)
for (i in 1:15){
S[i]=S[(i-1)]+S[(i+1)]+i
}





# find the sum of even values from 1 to 15 using loop

############################
# Topic 7_Functions in R 
income=c(130,140,160)
age=c(32,45,64)

income
age

l=length(income)
l

range(income)
mean(income)
median(income)
var(income)
sd(income)
s=summary(income)
s
sqrt(income)
abs(income-150)
log(age)
exp(age/10)
sin(age)


income[2]
3:10
15:5
length(income):1
1:length(income)

income[length(income)]
income [1:2]

income>135
age>38
income[age>38]


income=append(income,170)
length(income)
income
income=append(income,c(180,180, 183,183, 192))
length(income)
income
unique(income)
rev(income)

rep(5,10)
seq(4,25,by=2)
seq(4,25,by=5)

seq(4,25,length=3)
seq(4,25,length=5)
seq(4,25,length=100)

tolower("ABG")
tolower(c("ABG","DRM"))

toupper(c("gyr", "xdt"))



