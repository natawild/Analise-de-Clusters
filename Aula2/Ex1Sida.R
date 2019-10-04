#criar um vetor com os valores dos nrs de casos de SIDA

x=c(38.3, 6.2, 3.7, 2.6, 2.1, 14.6, 5.6, 3.7, 2.3, 2.0, 11.9, 5.5, 3.4, 2.2, 2.0, 6.6, 4.6, 3.1, 2.2, 1.9, 6.3, 4.5, 2.7, 2.1, 1.8)


#calculo da media 
media=mean(x)
media


#calculo da mediana 
mediana=median(x)
mediana

#a mediana é menor que a média, isto significa que 
summary(x)
range(x)

R=max(x)-min(x)

#Distancia inter quartilica
DIQ=IQR(x)

#desenhar um histograma 
hist(x)

#mudar a cor 
#FREQ=TRUE->       =F-> densidade frq relativas, distribuição de valores 

hist(x, breaks = "Sturges",
     freq = FALSE,ylim = c(0,.15), ylab = "fri" )


#DESENHAR UMA BOX PLOT 
boxplot(
  x
)

#inverter a boxplot 
boxplot(
  x,horizontal = T,col = "TOMATO",
  notch = T
  # outline = F -> retira os outliers
)

boxplot.stats(x,coef = 1.5, do.conf = T, do.out = T)




