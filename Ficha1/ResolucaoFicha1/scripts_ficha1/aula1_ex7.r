
pop=read.csv(file="pop.csv",header=TRUE, sep=";",dec=",")                      # leitura de dados
pop
barplot(pop[["pop"]],names.arg=pop[["idade"]],xlab="Faixa Et�ria", ylim=c(0,5000000),ylab="Popula��o")    # gr�fico dde barras
barplot(pop$pop,col=2, names.arg=pop$idade,xlab="Faixa Et�ria", ylim=c(0,5000000),ylab="Popula��o")    # o mesmo gr�fico dde barras
windows()              
pie(pop[["pop"]],labels=pop[["idade"]], col=rainbow(4), main="Popula��o por Faixa Et�ria")                # gr�fico de torta
windows()
pie(pop[["obit"]],labels=pop[["idade"]], col=topo.colors(4), main="Mortalidade por Faixa Et�ria")                # gr�fico de torta
pop_t=c(pop[["pop"]])                             # vector pop_t
pop_h=c(pop[["hom"]])                             # vector pop_h
perc_h=pop_h/pop_t * 100                          # % popul��o masculina
perc_h
windows()
barplot(perc_h,names.arg=pop[["idade"]], col=4, xlab="Faixa Et�ria",ylab="Homens (%)")            # gr�fico de barras %
obit_t=c(pop[["obit"]])                           # vectot obit_t
obit_h=c(pop[["h_obit"]])                         # vector obit_h
perc_obit=obit_h/obit_t * 100                     # % �bitos masculinos
perc_obit
windows()
barplot(perc_obit,names.arg=pop[["idade"]], col=2, ylim=c(0,80),xlab="Faixa Et�ria",ylab="�bitos Masculinos (%)")  # gr�fico de barras %     
barplot(rbind(perc_h,perc_obit),names.arg=pop[["idade"]], col=c(4,2), ylim=c(0,80),xlab="Faixa Et�ria",ylab="Percentagem (%)",beside = T)
legend("topright",col=c(4,2),c("% homens", "% �bitos homens"))


