
hambu=read.csv(file="hamb.csv", header=TRUE, sep=";",dec=",")    # leitura de dados com criação data frame
hambu
hambu$BIFE
hambu$CARNE
hambu$FRANGO
médias=c(mean(hambu$BIFE),mean(hambu$CARNE),mean(hambu$FRANGO))
médias
Variâncias=c(var(hambu$BIFE),var(hambu$CARNE),var(hambu$FRANGO))
Variâncias
Desv.padrão=c(sd(hambu$BIFE),sd(hambu$CARNE),sd(hambu$FRANGO))
Desv.padrão
Medianas=c(median(hambu$BIFE),median(hambu$CARNE),median(hambu$FRANGO))
Medianas
AmplIQ=c(IQR(hambu$BIFE),IQR(hambu$CARNE),IQR(hambu$FRANGO))
AmplIQ
summary.matrix(hambu)               # calcula as estatísticas descritivas para todas as variáveis na dataframe
boxplot(hambu)
windows()                           # cria uma janela individual para o gráfico
 boxplot(as.data.frame(hambu), main = "Hamburguers", par(las=1))       # Produz as boxplot como está na matriz de dados
windows()
boxplot(as.data.frame(hambu), main = "Hamburguers",horizontal = TRUE) # Produz as boxplot na horizontal
windows()
boxplot(hambu, col = "yellow", main = "Hamburguers", xlab = "Tipo",ylab = "calorias")      # Produz as boxplot a cores
windows()
boxplot(hambu$CARNE,hambu$FRANGO, col = "yellow", main = "Hamburguers", xlab = "Tipo",ylab = "calorias")
