
demog=read.csv(file="cid_acb.csv", header=TRUE, sep=";",dec=",")    # leitura de dados com cria��o data frame
demog
demog$Cidade     # vari�vel Cidades
demog$Pais       # vari�vel Pa�s
demog$Pop        # vari�vel Popula��o
mean(demog$Pop)
summary(demog$Pop)
barplot(demog$Pop)
windows()
barplot(demog$Pop,width=0.5,space = NULL, font = 1,names.arg=demog$Cidade,horiz=F,density = 10,angle = 45, 
ylab = "Popula��o", ylim = c(0, 35))



windows()
pie(demog$Pop,labels=demog$Cidade)
windows()
hist(demog$Pop, breaks = "Sturges",freq = NULL,include.lowest = TRUE, right = TRUE,
density = NULL, angle = 45, col = 3, border = NULL, main = "Histograma para Popula��o",
xlab = "Popula��o", ylab="Frequ�ncias Absolutas",  ylim=c(0,12),
axes = TRUE, plot = TRUE, labels = FALSE)
windows()
hist(demog$Pop, breaks = 10,probability=T,density = NULL, angle = 45, col = 5,
 main = paste("Histograma para Popula��o"),xlab = "Pop", ylab="Frequ�ncias relativas",
axes = TRUE, plot = TRUE, labels = FALSE)

windows()
library(UsingR)
simple.hist.and.boxplot(demog$Pop)




