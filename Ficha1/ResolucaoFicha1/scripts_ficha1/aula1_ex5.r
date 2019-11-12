
inter=read.csv(file="pombos.csv",header=TRUE, sep=";",dec=",")
inter
c_inter_orb=inter$comp
c_inter_orb
mean(c_inter_orb)                               # calcula as estatísticas descritivas
var(c_inter_orb)
sd(c_inter_orb)
median(c_inter_orb)
fivenum(c_inter_orb)
summary(c_inter_orb)
IQR(c_inter_orb)
windows()
hist(c_inter_orb)
windows()
hist(inter[["comp"]],                          # histograma de frequências seleccionando a variável por cabeçalho
main="Histograma de Comprimentos Orbitais",
xlab="Comprimento (mm)")
windows()
hist(inter[["comp"]], prob=T,                  # histograma
main="Histograma de Comprimentos Orbitais",     
xlab="Comprimento (mm)")
library(UsingR)
simple.hist.and.boxplot(inter$comp, main="Histograma de Comprimentos Orbitais")   # histograma e caixa de bogodes