library(readxl)
dados <- read_excel("Documents/GitHub/Analise-de-Clusters/Ficha2/Ficha 2 - dados.xlsx", sheet = "DiasComp")
View(dados) 


idade=dados$C #variavel independente
comp=dados$`Comprimento alar (cm)` #variavel dependente 


plot(idade,comp,pch=2) #gráfico de dispersão 


lm(comp~idade)  #coeficientes de regressão 

summary(lm(comp~idade))
model=lm(comp~idade) # model, guarda todos os elementos necessários para efetuar a regressão linear


#desenha os 4 gráficos na mesma janela 
quartz()
par(mfrow=c(2,2))
plot(model)


#
residuals((model))
model$residuals

# Kolmogorov-Smirnov test
#H0-> Os residuos seguem uma distribuição normal
ks.test(model$residuals,"pnorm", mean(model$residuals), sd(model$residuals))
#p>0,005 -> não rejeitamos a H0 



#Shapiro-Wilk normality test
shapiro.test(model$residuals)


summary(model$residuals)
#testar apenas uma variavel (One Sample t-test)
t.test(model$residuals,mu = 0,alternative = "two.sided")
#"two.sided" sig que aceito a outra alternativa, p.e. não rejeito a h0 

boxplot(model$residuals)

#prever o comp alar de uma andorinha de 13 dias de idade 
predict(model,list(idade=13))
predict(model,list(idade=c(13,15,15,16)))
#este modelo so serve para prever entre os 3 e 17 dias de idade 






simple.lm() 
plot(lm())

