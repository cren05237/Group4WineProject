library(dplyr)

# white wine
white <- read.csv('/Users/cassieren/Documents/MSBA/Summer 2023/MIS S381N/wine+quality/winequality-white.csv', sep=';')
white$target <- ifelse(white$quality >= 7, 1, 0)
white$alcohol2 <- white$alcohol^2
white$alcohol3 <- white$alcohol^3

predictors <- select(white, -c(quality))

model <- glm(target ~ ., data = predictors, family = binomial)
summary(model)
model


# Red wine analysis
red <- read.csv('/Users/cassieren/Documents/MSBA/Summer 2023/MIS S381N/wine+quality/winequality-red.csv', sep=';')
red$target <- ifelse(red$quality >= 7, 1, 0)
# red$alcohol2 <- red$alcohol^2
# red$alcohol3 <- red$alcohol^3

predictors.red <- select(red, -c(quality))

model.red <- glm(target ~ ., data = predictors.red, family = binomial)
summary(model.red)
model

