
sida=scan(file="sida_acb.csv",sep=";", dec=",")

sida2=read.csv("sida_acb.csv", header = FALSE, sep = ";", dec=",")# leitura de dados
sida   
 # dados
mean(sida)
attach(sida2)
mean(V1)# média aritmética
var(sida)                                            # variância
sd(sida)                                             # desvio padrão
median(sida)                                         # mediana
fivenum(sida)                                        # resumo de 5 números
summary(sida)                                        # resumo de 5 números
IQR(sida)                                            # distância interquartílica
hist(sida)                                           # histograma de frequências absolutas
#windows()
hist(sida,probability=T)                             # histograma de frequências relativas
#windows()
hist(sida,probability=T,breaks=5)                    # histograma de frequências relativas 
#windows()
hist(sida,probability=T,breaks=10)                   # variando o número de classes
#window()
hist(sida,probability=T,breaks=20)
#windows()
hist(sida,main="Casos de Sida",probability=T)        # histograma com título
#windows()
boxplot(sida)
boxplot.stats(sida, coef = 1.5, do.conf = TRUE, do.out = TRUE)# caixa de bigodes
boxplot(sida,main="casos de sida",horizontal=T,range=3)      # caixa de bigodes com título
library(UsingR)                                      # carrega o package UsingR
windows()
simple.hist.and.boxplot(sida)                        # histograma e caixa de bigodes (package UsingR)
#windows()
simple.hist.and.boxplot(sida, main="Casos de Sida")
length(which(sida>10))
p=3/25
# Identifica quais os casos que obedecem à condição
length(sida[sida>10])                       # Determina quanto elementos do vector obdecem à condição
length(which(sida>10))/length(sida)
Prop=(length(sida[sida>10])/length(sida))*100     # Calcula a proporção de cidades com mais de 10 000 casos de SIDA
Prop #%     
