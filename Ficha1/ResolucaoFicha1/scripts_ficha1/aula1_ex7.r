
pop=read.csv(file="pop.csv",header=TRUE, sep=";",dec=",")                      # leitura de dados
pop
barplot(pop[["pop"]],names.arg=pop[["idade"]],xlab="Faixa Etária", ylim=c(0,5000000),ylab="População")    # gráfico dde barras
barplot(pop$pop,col=2, names.arg=pop$idade,xlab="Faixa Etária", ylim=c(0,5000000),ylab="População")    # o mesmo gráfico dde barras
windows()              
pie(pop[["pop"]],labels=pop[["idade"]], col=rainbow(4), main="População por Faixa Etária")                # gráfico de torta
windows()
pie(pop[["obit"]],labels=pop[["idade"]], col=topo.colors(4), main="Mortalidade por Faixa Etária")                # gráfico de torta
pop_t=c(pop[["pop"]])                             # vector pop_t
pop_h=c(pop[["hom"]])                             # vector pop_h
perc_h=pop_h/pop_t * 100                          # % populção masculina
perc_h
windows()
barplot(perc_h,names.arg=pop[["idade"]], col=4, xlab="Faixa Etária",ylab="Homens (%)")            # gráfico de barras %
obit_t=c(pop[["obit"]])                           # vectot obit_t
obit_h=c(pop[["h_obit"]])                         # vector obit_h
perc_obit=obit_h/obit_t * 100                     # % óbitos masculinos
perc_obit
windows()
barplot(perc_obit,names.arg=pop[["idade"]], col=2, ylim=c(0,80),xlab="Faixa Etária",ylab="Óbitos Masculinos (%)")  # gráfico de barras %     
barplot(rbind(perc_h,perc_obit),names.arg=pop[["idade"]], col=c(4,2), ylim=c(0,80),xlab="Faixa Etária",ylab="Percentagem (%)",beside = T)
legend("topright",col=c(4,2),c("% homens", "% óbitos homens"))


