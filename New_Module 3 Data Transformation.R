#Module Three: Data Transformation

install.packages("tidyverse")


r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)

install.packages("dplyr")
library("dplyr")

#Some of the key �verbs� provided by the dplyr package are

#arrange: reorder rows of a data frame

#filter: extract a subset of rows from a data frame based on logical conditions

#mutate: add new variables/columns or transform existing variables

#rename: rename variables in a data frame


#select: return a subset of the columns of a data frame, using a flexible notation

starts_with(): Starts with a prefix.

ends_with(): Ends with a suffix.

contains(): Contains a literal string.



#group_by

#summarise






#summarise / summarize: generate summary statistics of different variables in the data frame, possibly within strata
data(mtcars)
names(mtcars)

arrange(mtcars, cyl)
arrange(mtcars, cyl, wt,vs)

filter(mtcars,cyl==6)
filter(mtcars,cyl==6, mpg>20)
filter(mtcars,cyl==6 & mpg>20)
filter(mtcars,cyl==6 | vs==0, mpg>20)
filter(mtcars,wt < mean(wt))


mtcars1=mutate(mtcars,log.mpg=log(mpg))
mutate(mtcars,drat=drat*1000)



rename(mtcars, new.drat=drat)


select(mtcars,vs:gear)
select(mtcars,c(cyl,disp, wt))

select(mtcars, starts_with("c"))
select(mtcars, -starts_with("c"))
select(mtcars, ends_with(c("r","t")))
select(mtcars, contains(c("a","r")))


by_cyl=group_by(mtcars,cyl)
summarise(by_cyl,  disp.m = mean(disp),hp.m = mean(hp), sd(mpg), sum(is.na(wt)) , n() )

by_vs=group_by(mtcars,vs)
summarise(by_vs,  Mean.mpg = mean(mpg), SD.mpg=sd(mpg), sum(is.na(wt)) , n() )


?transmute
