#installing the packages required

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)
library(rpart)
library(rpart.plot)

df = read.csv('insurance.csv',stringsAsFactors = TRUE) #variables sex, smoker and region are in 'chr' type, factoring it because they are categorical
View(df)
summary(df)

#cleaning data

any(is.na(df))
str(df)

#EDA

plot1 <- ggplot(df, aes(charges)) +geom_histogram(col="#009966", fill="#66FFCC") + labs(title = "Insurance charges summary", x="charges", y="frequency")
print(plot1)
plot2 <-  ggplot(df) + geom_histogram(mapping=aes(charges, fill=smoker))
print(plot2)
plot3 <-  ggplot(df) + geom_histogram(mapping=aes(charges, fill=sex))
print(plot3)
plot4 <-  ggplot(df) + geom_boxplot(mapping=aes(y=bmi, col=region))
print(plot4)
plot5 <- ggplot(df,aes(x=age,y=charges)) +geom_point(size=2,shape=18,color="#FF3366") + geom_smooth(method=lm)
print(plot5)
plot6 <- ggplot(df,aes(x=bmi,y=charges)) +geom_point(size=2,shape=18,color="#FF9900") + geom_smooth(method=lm)
print(plot6)

summary(df$charges)
table(df$region)
table(df$sex)
table(df$smoker)

# correlation analysis #multiple regression

cor(df$age, df$charges)
cor(df$bmi, df$charges)
cor(df$children,df$charges)

#correlation matrix

cor.matrix <- cor(df[c("age","bmi", "children", "charges")])
print(cor.matrix)

numeric.columns <-  sapply(df,is.numeric)
cor.data <- cor(df[,numeric.columns])
print(corrplot(cor.data,method='color')) #visualising correlation, every feature should be perfectly co-related with itself
corrgram(df,order=TRUE,lower.panel = panel.shade, upper.panel = panel.pie, text.panel=panel.txt)

#train-test split

library(caTools)
set.seed(101)
sample <- sample.split(df$charges,SplitRatio=0.8)
sample.train <- subset(df,sample==TRUE)
sample.test <- subset(df,sample==FALSE)
nrow(sample.train)
nrow(sample.test)

linear.model <- lm(charges~., data=sample.train)
summary(linear.model)

fit.model <-  rpart(charges~., data = sample.train, method = "anova")
prediction <-  predict(fit.model,sample.test)
fit.model

prp(fit.model)
rpart.plot(fit.model)
printcp(fit.model)

# improving the model

df$age.new <- df$age^1.5
df$bmi.new <- ifelse(df$bmi >= 30, 1, 0)
linear.model2 <- lm(charges ~ age + age.new + children + bmi + sex + bmi.new*smoker + region, data =df)

summary(linear.model2)

# ##############################################


lm1 <- lm(wages~ overall + potential + age + height_cm + club + nationality + weight_kg + market_value + goal_keeping + attacking + movement + defending + skilling + international_reputation + potential, data=train_set)
summary(lm1)
AIC1 = AIC(lm1)
$#Adjusted R-squared:  0.763 

  #cook's d
cook<-cooks.distance(lm1)
cooks.distance(lm1)[which.max(cooks.distance(lm1))]
plot(lm1,which=4)  
par(mfrow = c(2, 2))
plot(lm1)

n <- length(cook)
cutoff <- 4/n
plot(cook, pch = 20, main = "Cook's Distance Plot before removal")


train_new <- subset(train_set, cook <= cutoff)

lm1 <- lm(wages~ overall + potential + age + height_cm + club_numeric + nationality_numeric+ weight_kg + market_value + goal_keeping + attacking + movement + defending + skilling + international_reputation + potential, data=train_set)
summary(lm1)
AIC1 = AIC(lm1)
$#Adjusted R-squared:  0.763 

# lm_cook, AIC 164623.3
lm_cook <- lm(wages~ overall + potential + age + height_cm + club + nationality + weight_kg + market_value + goal_keeping + attacking + movement + defending + skilling + international_reputation + potential, data=train_new)
summary(lm_cook)

#lm3 is the non numeric version
lm3 <- lm(wages~ overall + potential + age + height_cm + club + nationality + weight_kg + market_value + goal_keeping + attacking + movement + defending + skilling + international_reputation + potential, data=train_set)
summary(lm3)

log_model <- lm(wages~ overall + potential + age  + log_value + goal_keeping + attacking + defending + skilling + international_reputation + potential, data=train_set)
summary(log_model)
AIC4 = AIC(log_model)
AIC4

log_model2 <- lm(wages~ overall + potential + age  +club + nationality + log_value + goal_keeping + attacking + defending + skilling + movement + international_reputation + potential, data=train_new)
summary(log_model2)

AIC_logm2 = AIC(log_model2)
AIC_logm2

glm <- glm(wages_mod ~ overall + potential + age + log_value + goal_keeping + defending + attacking + defending + skilling + international_reputation + potential, data = train_set, family = Gamma(link="log"))
glm

robust2 <- rlm( wages ~  overall + log_value + potential + age + height_cm + club_numeric + nationality_numeric+ weight_kg + market_value + goal_keeping + attacking + movement + defending + skilling + international_reputation, data=train_new, maxit=50)
robust2

install.packages("Metrics")

library(Metrics)

models <- list(lm1, lm_cook, glm, log_model, step_mod, robust, random_forest_model)
names <- c("linear model", "lm(cook's D) ", "glm", "log_model", "AIC", "robust", "rfm")
mape_results <- c()

for (i in seq_along(models)) {
  mape_result <- mape(predict(models[[i]], test_set), test_set$wages)*100
  mape_results <- c(mape_results, mape_result)
}

names(mape_results) <- names
mape_results

mape_results_df <- data.frame(Model = names(mape_results), MAPE = mape_results)