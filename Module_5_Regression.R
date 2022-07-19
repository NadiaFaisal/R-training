# Module 05 Regression

install.packages(car)
library(car)



data(mtcars)
head(cars)
str(cars)
dim(cars)
names(cars)
sapply(cars,class)

sapply(cars,summary)
sapply(cars,table)
sapply(cars,table, useNA = c("ifany"))


out=lm(dist~speed, data=cars)
plot(cars$speed, cars$dist, col="blue")
abline(out, col="red")

attributes(out)

out$coefficients
out$residuals
out[[2]]

out$fitted.values
out[[5]]

summary(out)


plot(out)     # check normality and constant variance see this https://www.statology.org/diagnostic-plots-in-r/
crPlots(out)  # check linearity

##### Prediction ####
predict(out, newdata=data.frame("speed"=c(8,12,18)))

###################################################


mtcars
names(mtcars)


#[, 1]	mpg	Miles/(US) gallon
#[, 2]	cyl	Number of cylinders
#[, 3]	disp	Displacement (cu.in.)
#[, 4]	hp	Gross horsepower
#[, 5]	drat	Rear axle ratio
#[, 6]	wt	Weight (1000 lbs)
#[, 7]	qsec	1/4 mile time
#[, 8]	vs	Engine (0 = V-shaped, 1 = straight)
#[, 9]	am	Transmission (0 = automatic, 1 = manual)


Data=mtcars[,c("mpg","cyl","wt","vs","am")]
head(Data)
str(Data)
dim(Data)
names(Data)
sapply(Data,class)

sapply(Data,summary)
sapply(Data,table)
sapply(Data,table, useNA = c("ifany"))


out=lm(mpg~., data=Data)
attributes(out)
out$coefficients
summary(out)


plot(out)     # check normality and constant variance see this https://www.statology.org/diagnostic-plots-in-r/
crPlots(out)  # check linearity


##### Prediction ####
New=data.frame("cyl"=c(4,6),"wt"=c(1.2,3.6),"vs"=c(0.4,1.5),"am"=c(0.3,1.6))
predict(out, newdata=New)

