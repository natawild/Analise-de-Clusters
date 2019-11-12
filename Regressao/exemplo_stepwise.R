

# packages a instalar
# tidyverse for easy data manipulation and visualization
# caret for easy machine learning workflow
# leaps, for computing stepwise regression

install.packages("tidyverse")
install.packages("caret")
install.packages("leaps")

library(tidyverse)
library(caret)
library(leaps)

library(MASS)
data("swiss")
view(swiss)

# Ajuste completo do modelo
full.model <- lm(Fertility ~., data = swiss)
summary(full.model)
# modelo de regressão utilizando Stepwise
# stepAIC(object, scope, scale = 0,
#         direction = c("both", "backward", "forward"),
#         trace = 1, keep = NULL, steps = 1000, use.start = FALSE,
#         k = 2, ...)

step.model <- stepAIC(full.model, direction = "both",
                      trace = FALSE)
summary(step.model)


step.modelb <- stepAIC(full.model, direction = "backward",
                      trace = FALSE)
summary(step.modelb)

step.modelf <- stepAIC(full.model, direction = "forward",
                       trace = FALSE)
summary(step.modelf)


models <- regsubsets(Fertility~., data = swiss, nvmax = 5,
                     method = "seqrep")
summary(models)


# Set seed for reproducibility
set.seed(123)
# Set up repeated k-fold cross-validation
train.control <- trainControl(method = "cv", number = 10)
# Train the model
step.model <- train(Fertility ~., data = swiss,
                    method = "leapBackward",
                    tuneGrid = data.frame(nvmax = 1:5),
                    trControl = train.control
)
step.model$results
step.model$bestTune
summary(step.model$finalModel)

coef(step.model$finalModel, 4)

#ou
lm(Fertility ~ Agriculture + Education + Catholic + Infant.Mortality,
   data = swiss)

AIC(step.model)
AIC(step.modelb)
AIC(step.modelf)
