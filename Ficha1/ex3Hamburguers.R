library(readxl)
hamburguers <- read_excel("Documents/GitHub/Analise-de-Clusters/ResolucaoFicha/hamb_1.xlsx")
View(hamburguers)


hamburguers$Carne
hamburguers$Frango
hamburguers$Vegetariano

summary(hamburguers$Carne)


vegetariano=hamburguers[c(1)] #buscar a coluna 1 que corresponde aos hamburguers vegetarianos 
vegetariano

boxplot(hamburguers, col=c('green','red', 'yellow')) 

hist(hamburguers$Frango, col=3, main = paste("Histograma para hamburguers de frango"))

hist(hamburguers$Vegetariano, col=3, main = paste("Histograma para hamburguers de vegetariano"))


hamburguersv2 <- read_excel("Documents/GitHub/Analise-de-Clusters/ResolucaoFicha/hamb_2.xlsx")
View(hamburguersv2)


library(dplyr)
x=filter(hamburguersv2, Tipologia =='Vegetariano')

hist(x$Calorias)



