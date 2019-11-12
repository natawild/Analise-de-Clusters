
hambu=read.csv(file="hamb.csv", header=TRUE, sep=";",dec=",")    # leitura de dados com cria��o data frame
hambu
hambu$BIFE
hambu$CARNE
hambu$FRANGO
m�dias=c(mean(hambu$BIFE),mean(hambu$CARNE),mean(hambu$FRANGO))
m�dias
Vari�ncias=c(var(hambu$BIFE),var(hambu$CARNE),var(hambu$FRANGO))
Vari�ncias
Desv.padr�o=c(sd(hambu$BIFE),sd(hambu$CARNE),sd(hambu$FRANGO))
Desv.padr�o
Medianas=c(median(hambu$BIFE),median(hambu$CARNE),median(hambu$FRANGO))
Medianas
AmplIQ=c(IQR(hambu$BIFE),IQR(hambu$CARNE),IQR(hambu$FRANGO))
AmplIQ
summary.matrix(hambu)               # calcula as estat�sticas descritivas para todas as vari�veis na dataframe
boxplot(hambu)
windows()                           # cria uma janela individual para o gr�fico
 boxplot(as.data.frame(hambu), main = "Hamburguers", par(las=1))       # Produz as boxplot como est� na matriz de dados
windows()
boxplot(as.data.frame(hambu), main = "Hamburguers",horizontal = TRUE) # Produz as boxplot na horizontal
windows()
boxplot(hambu, col = "yellow", main = "Hamburguers", xlab = "Tipo",ylab = "calorias")      # Produz as boxplot a cores
windows()
boxplot(hambu$CARNE,hambu$FRANGO, col = "yellow", main = "Hamburguers", xlab = "Tipo",ylab = "calorias")
