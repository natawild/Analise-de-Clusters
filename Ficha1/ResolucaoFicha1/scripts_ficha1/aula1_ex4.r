
peso_b=read.csv(file="peso_bebes.csv", header=TRUE, sep=";",dec=",")    # leitura de dados com criação data frame
peso_b$peso
mean(peso_b$peso)                               # calcula as estatísticas descritivas
var(peso_b$peso)
sd(peso_b$peso)
median(peso_b$peso)
fivenum(peso_b$peso)
summary(peso_b$peso)
x=table(peso_b$peso)
x
x[which.max(x)]
IQR(peso_b$peso)
hist(peso_b$peso)                               # cria o histograma de frequências absolutas
hist(peso_b$peso, probability=T)
boxplot(peso_b$peso)                            # cria a caixa de bigodes
library(UsingR)
windows()
simple.hist.and.boxplot(peso_b$peso)            # cria o histograma e a caixa de bigodes (carregar package UsingR)



peso_1=sample(amostra$peso,15,replace = F)                   # selecciona uma amostra sem reposição
peso_1
m1=mean(peso_1)                               # calcula as estatísticas descritivas de peso_1
v1=var(peso_1)
sd(peso_1)
median(peso_1)
fivenum(peso_1)
summary(peso_1)
IQR(peso_1)
peso_2=peso_1+100
peso_2
m2=mean(peso_2)                             # calcula as estatísticas descritivas de peso_2
v2=var(peso_2)
sd(peso_2)
median(peso_2)
fivenum(peso_2)
summary(peso_2)
IQR(peso_2)
peso_3=peso_1*2
peso_3
m3=mean(peso_3)                              # calcula as estatísticas descritivas de peso_3
v3=var(peso_3)
vi=4*v1
sd(peso_3)
median(peso_3)
fivenum(peso_3)
summary(peso_3)
IQR(peso_3)
