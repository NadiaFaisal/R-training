install.packages("e1071")      # For SVM
    
# Loading package
library(e1071)
library(ROCR) 

mtcars$vs ### Decide the response   
mtcars$vs=factor(mtcars$vs) # change the response to Categorical Variable
# Splitting dataset

split <- sample.split(mtcars, SplitRatio = 0.8)
split
   
train_svm <- subset(mtcars, split == "TRUE")
test_svm <- subset(mtcars, split == "FALSE")

class(train_svm)
class(test_svm)

dim(train_svm)
dim(test_svm)

   
# Training model
svm_model <- svm(vs ~ wt + disp, data = train_svm, kernel = "linear")
svm_model
   
# Summary
summary(svm_model)
   
# Predict test data based on model
predict_svm <- predict(svm_model, new=test_svm[,c("wt" ,"disp")], type = "response")
predict_svm  
length(predict_svm)   

# Evaluating model accuracy
# using confusion matrix
svm
   
missing_classerr <- mean(predict_svm != test_svm$vs)
print(paste('Accuracy =', 1 - missing_classerr))
