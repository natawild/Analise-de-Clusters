library("readxl")
populacao <- read_excel("Aula3/populacao.xlsx", sheet = "populacao") #le de um ficheiro excel 
View(populacao)

demog30 =populacao[1:30,c(3,4,8)] #buscar as colunas 3,4 e 8 que correspondem ao nome, pais e pop 
demog30

demog30$`English Name` #nome da cidade
demog30$Country #pais 
demog30$pop #populacao 

summary(demog30$pop) #os percentis podem ser ligeiramente diferente pois, podem usar algoritmos diferentes

fivenum(demog30$pop) #medida de ordem -> (min, p25, mediana, p75, max) 


#fazer um gráfio de barras com a densidade populacional baseado nas cidades 
quartz(title = "Populacao") #desenha o gráfico numa janela 
par(las=2)#coloca o eixo do x na vertical; las=3 coloca tudo
barplot(demog30$pop,space = NULL,names.arg = demog30$"English Name",axisnames = TRUE, ylab = "Populacão em milhares", col=2) #constroi o gráfico 


#construir um histograma, a variável é continua ou seja, temos a informação de quantas cidades tem determinada populacao. 
hist(demog30$pop, col=3, main = paste("Histograma para população"))


#pie 
pie(demog30$pop, labels = demog30$`English Name`)

#construir um boxplot 
boxplot(demog30$pop)
boxplot.stats(demog30$pop) #5num, dim da amostra, intervalo de confianca, outliers, 

#Exercicio extra 
#Qual o nr de cidades com a populacão acima de 300 milhares 

quartz()
library(UsingR)
simple.hist.and.boxplot(demog30$pop)

#toc fazer o ex3 
#colocar os dados no excel de duas formas: 



