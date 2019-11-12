
sida=scan(file="sida_acb.csv",sep=";", dec=",")

sida2=read.csv("sida_acb.csv", header = FALSE, sep = ";", dec=",")# leitura de dados
sida   
 # dados
mean(sida)
attach(sida2)
mean(V1)# m�dia aritm�tica
var(sida)                                            # vari�ncia
sd(sida)                                             # desvio padr�o
median(sida)                                         # mediana
fivenum(sida)                                        # resumo de 5 n�meros
summary(sida)                                        # resumo de 5 n�meros
IQR(sida)                                            # dist�ncia interquart�lica
hist(sida)                                           # histograma de frequ�ncias absolutas
#windows()
hist(sida,probability=T)                             # histograma de frequ�ncias relativas
#windows()
hist(sida,probability=T,breaks=5)                    # histograma de frequ�ncias relativas 
#windows()
hist(sida,probability=T,breaks=10)                   # variando o n�mero de classes
#window()
hist(sida,probability=T,breaks=20)
#windows()
hist(sida,main="Casos de Sida",probability=T)        # histograma com t�tulo
#windows()
boxplot(sida)
boxplot.stats(sida, coef = 1.5, do.conf = TRUE, do.out = TRUE)# caixa de bigodes
boxplot(sida,main="casos de sida",horizontal=T,range=3)      # caixa de bigodes com t�tulo
library(UsingR)                                      # carrega o package UsingR
windows()
simple.hist.and.boxplot(sida)                        # histograma e caixa de bigodes (package UsingR)
#windows()
simple.hist.and.boxplot(sida, main="Casos de Sida")
length(which(sida>10))
p=3/25
# Identifica quais os casos que obedecem � condi��o
length(sida[sida>10])                       # Determina quanto elementos do vector obdecem � condi��o
length(which(sida>10))/length(sida)
Prop=(length(sida[sida>10])/length(sida))*100     # Calcula a propor��o de cidades com mais de 10 000 casos de SIDA
Prop #%     
