x=5 
x
y=x*4
y

z<-2

alturasMes=c(1.7,1.64,1.63,1.67,1.54,1.73,1.79,1.64,1.69,1.66,1.87,1.67,1.78,1.75,1.61,1.63,1.85)
generoMes=c("M","F","F","F","M","F","F","F","F","M","F","M","M","M","F","F","M")

#Calcular a média 
media=sum(alturasMes)/length(alturasMes)
mean(alturasMes)

#define o vetor c(1,2,3)
rep(1:3,2)


#c(1,1,2,2,3,3)
rep(1:3,each=2)

#verficacão true ou false
5==sqrt(25)

#Matriz 
Matriz=matrix(1:12,3,4)
Matriz
dim(Matriz)
as.vector(Matriz)
#Mostra apenas a linha 2 
Matriz[2,]

estudante=list("pg41022","Maria",12.4)
estudante[[2]]

resultados<-data.frame(nr=41022,nome="Célia",Nota=12.5)
resultados

#lerFicheiros 
#read.table(file(description = "",open = ""),)






