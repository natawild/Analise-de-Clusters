
am=read.csv(file="amostra_bebes1.csv", header=TRUE, sep=";",dec=",")    # leitura de dados com criação data frame
am
summary.matrix(am)

summary(am$gpeso)
mean(am$gpeso, na.rm = T) # Remove os NA para cálculo da média
summary(am$igestpa)
summary(am$peso)

x=table(am$rnsexo)
x
hist(am$gpeso, breaks = "Sturges", probability=TRUE,col=8,xlim=c(0,25), xlab="Ganho de peso (Kg)")                    # histograma para ganho de peso
hist(am$peso, breaks = "Sturges", probability=TRUE,col=2,xlim=c(500,5000), xlab="Peso à nascença (g)")              # histograma para o peso  
plot(am[["peso"]]~am[["igestpa"]])                            # gráfico de dispersão
plot(am$peso~am$igestpa, xlab = "Idade Gestacional (sem)",ylab = "Peso (g)")                                       # gráfico de dispersão                                      
boxplot(am[["peso"]]~am[["igestpa"]], col=2,xlab = "Idade Gestacional (sem)",ylab = "Peso (g)")                   # gráfico de caixa e bigodes                                  
library(UsingR)
simple.scatterplot(am[["igestpa"]],am[["peso"]])       # gráfico dispersão + histograma    
boxplot(am[["peso"]]~am[["rnsexo"]],xlab = "Sexo",ylab = "Peso (g)")                 # gráfico de caixa e bigodes
attach(am)
names(am)  
plot(peso~factor(rnsexo))
detach(am)
sexo=as.factor(am$rnsexo)
tapply(am$peso,list(sexo),mean)

