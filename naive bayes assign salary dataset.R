install.packages("naivebayes")

install.packages("psych")

library(naivebayes)
library(ggplot2)

library(caret)

library(psych)

library(e1071)


View(SalaryData_Test)

View(SalaryData_Train)

salary <- rbind(SalaryData_Test,SalaryData_Train)
str(SalaryData_Train)

Model <- naiveBayes(SalaryData_Train$Salary ~ ., data = SalaryData_Train, laplace=7)
Model


Model_pred <- predict(Model,SalaryData_Test)
mean(Model_pred==SalaryData_Test$Salary)


confusionMatrix(Model_pred,SalaryData_Test$Salary)

Model <- naiveBayes(SalaryData_Train$Salary ~ ., data = SalaryData_Train)
Model 

windows()
plot(SalaryData_Train$workclass,SalaryData_Train$Salary)

