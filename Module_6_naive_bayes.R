install.packages("naivebayes")    # For Naïve Bayes classifier
install.packages("ROCR")       # For ROC curve to evaluate model
    
# Loading package
library(naivebayes)
library(ROCR) 


mtcars$vs ### Decide the response   
mtcars$vs=factor(mtcars$vs) # change the response to Categorical Variable
   
# Splitting dataset
split <- sample.split(mtcars, SplitRatio = 0.8)
split
   
train_Bayes<- subset(mtcars, split == "TRUE")
test_Bayes <- subset(mtcars, split == "FALSE")

dim(train_Bayes)
dim(test_Bayes)

   
# Training model
Bayes_model <- naive_bayes(vs ~ wt + disp, data = train_Bayes)
Bayes_model
   
# Summary
summary(Bayes_model)
   
# Predict test data based on model
predict_Bayes<- predict(Bayes_model,  new=test_Bayes[,c("wt","disp")])
predict_Bayes
   

   
# Evaluating model accuracy
# using confusion matrix
data.frame("True"=test_Bayes$vs, "Predicted"=predict_Bayes)
table(test_Bayes$vs, predict_Bayes)
   
missing_classerr <- mean(predict_Bayes != test_Bayes$vs)
print(paste('Accuracy =', 1 - missing_classerr))
   
# ROC-AUC Curve
as.numeric(predict_Bayes)-1
as.numeric(test_Bayes$vs)-1

ROCPred <- prediction(as.numeric(predict_Bayes)-1, as.numeric(test_Bayes$vs)-1) 
ROCPer <- performance(ROCPred, measure = "tpr", 
                             x.measure = "fpr")
   
auc <- performance(ROCPred, measure = "auc")
auc <- auc@y.values[[1]]
auc
   
# Plotting curve
plot(ROCPer)
plot(ROCPer, colorize = TRUE, 
     print.cutoffs.at = seq(0.1, by = 0.1), 
     main = "ROC CURVE")
abline(a = 0, b = 1)
   
auc <- round(auc, 4)
legend(.6, .4, auc, title = "AUC", cex = 1)