setwd( "C:/Users/lucas/Big_Data_Analytics/Fatores Estruturas de controle e funções")
getwd()

# Família Apply - Uma forma elegane de fazer loops

# aplly() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by - tem um comportamento similar

# Se estiver trabalhando com objetos:

# list, numeric, character (list/vetor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

# Usando um loop
lista1 <- list(a =(1:20), b = (35:67))

# Calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0

for(i in lista1$a){
  valor_a = valor_a + i
}

for(j in lista1$b){
  valor_b = valor_b + j
}

print(valor_a)
print(valor_b)

# Calculando cada elemento da lista com sapply
?sapply
sapply(lista1, sum)

# Aplicando funções com sapply
sapply(lista1, mean)

# apply()
?apply

x <- matrix(c(20,13,65,32,45,12,76,49,82), nr = 3, byrow = T)
x

apply(x, mean) # erro
apply(x, 1, mean) # indicando as linhas
apply(x, 2, mean) # indicando as colunas
apply(x,c(1,2), mean) # indicando linhas e colunas

apply(x, 1, plot)

resultapply <- apply(x, 1, mean)
resultapply

# Aplicando aaply() a um Dataframe
escola <- data.frame(
  Aluno = c("Bob", "Treaza", "Marta", "Felipe", "Zacarias", "Elton"),
  Fisica = c(91,82,75,97,62,74),
  Matematica = c(99,100,86,92,91,87),
  Quimica = c(56,72,49,68,59,77))

escola

escola$Matematica

# Calculando a média por aluno
escola$Media = NA
escola

escola$Media = apply(escola[,c(2,3,4)], 1, mean)
escola

escola$Media = round(escola$Media)
escola

# tapply()
?gl
tabela_basquete <- data.frame(
  equipe = gl(5,5,labels= paste("Equipe", LETTERS[1:5])),
  jogador = sample(letters, 25),
  num_cestas = floor(runif(25, min=0, max=50))
)

View(tabela_basquete)
summary(tabela_basquete)

# Como calcular o total de cestas por Equipe?

# tapply() vs sqldf
install.packages("sqldf")
library(sqldf)

sqldf("select equipe, sum(num_cestas) from tabela_basquete group by equipe")
sqldf("select equipe, avg(num_cestas) from tabela_basquete group by equipe")

?tapply
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, sum)
tapply(tabela_basquete$num_cestas, tabela_basquete$equipe, mean)

by(tabela_basquete$num_cestas, tabela_basquete$equipe, FUN = sum)
by(tabela_basquete$num_cestas, tabela_basquete$equipe, FUN = mean)

# by
?by
?rnorm
dat <- data.frame(
  species=c(rep(c(1,2,3), each =5)),
  petal.length=c(rnorm(5,4.5,1),
                 rnorm(5,4.5,1),
                 rnorm(5,5.5,1)),
  petal.width=c(rnorm(5,2.5,1),
                rnorm(5,2.5,1),
                rnorm(5,4,1))
)
dat
dat$species <- factor(dat$species)
View(dat)

?by
by(dat, dat$species, function(x){
  # calcular o comprimento média da pétala para cada espécie
  mean.pl <- mean(x$petal.length)
})

# lapply()
?lapply

lista1 <- list(a = (1:10), b=(45:77))
lista1

lapply(lista1, sum)
sapply(lista1, sum)

# vapply()
?vapply

vapply(lista1, 
       fivenum, 
       c(Min. = 0, 
         "1stQu." = 0,  
         Median = 0, 
         "3rd Qu." = 0,
          Max = 0))

# replicate
?replicate
replicate(7, runif(10))

# mapply
?mapply
mapply(rep, 1:4, 4:1)

# rapply
?rapply

lista2 <- list(a =c(1:5), b =c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how = "list")