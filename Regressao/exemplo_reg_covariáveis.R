


#' hsb2: High School and Beyond Data Set
hsb2 <- read.csv("https://stats.idre.ucla.edu/stat/data/hsb2.csv")
#' ou no package blorr
#install.packages("blorr")
library(blorr)

data(hsb2)
View(hsb2)


#' id - Student ID.
#' gender - Student's gender, with levels female and male.
#' race - Student's race, with levels african american, asian, hispanic, and white.
#' ses- Socio economic status of student's family, with levels low, middle, and high.
#' schtyp - Type of school, with levels public and private.
#' prog -Type of program, with levels general, academic, and vocational.
#' read- Standardized reading score.
#' write-Standardized writing score.
#' math-Standardized math score.
#' science-Standardized science score.
#' socst-Standardized social studies score.


#' criação de uma variável como factor

hsb2$female.f<- factor(hsb2$female)
hsb2$race.f <- factor(hsb2$race )

levels(hsb2$female.f)<-c("M","F")
levels(hsb2$race.f)<-c("african","asian","hispanic","white")

is.factor(hsb2$race.f)


tabulate(hsb2$race.f)
tabulate(hsb2$female.f)

hsb2$race.f[1:15]

attach(hsb2)

summary(race)
summary(race.f)
summary(female.f)

boxplot(write~race.f)
boxplot(write~female.f)

#'considerando a variável "write" como dependente

yhat=lm(write ~ race.f, data = hsb2)
summary(yhat)

#'ou em alternativa
yhat_alt=lm(write ~ factor(race), data = hsb2)
summary(yhat_alt)



summary(lm(write ~ race, data = hsb2))
hsb2W=hsb2[c(2:6,8)]

yhat_g=lm(write~factor(race)+factor(female)+factor(ses)+factor(schtyp)+factor(prog),data = hsb2)
summary(yhat_g)


library(tidyverse)
library(caret)
library(leaps)

library(MASS)

step.model <- stepAIC(yhat_g, direction = "both",
                      trace = FALSE)
summary(step.model)
coef(step.model)
summary(residuals(step.model))
plot(step.model)


step.modelb <- stepAIC(yhat_g, direction = "backward",
                       trace = FALSE)
summary(step.modelb)

step.modelf <- stepAIC(yhat_g, direction = "forward",
                       trace = FALSE)
summary(step.modelf)
