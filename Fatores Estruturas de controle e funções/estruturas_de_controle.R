setwd("C:/Users/lucas/Big_Data_Analytics/Fatores Estruturas de controle e funções")
getwd()

# Estrutura de controle

# Condicionais if-else

#if(condicao){
  # conjunto de tarefas}
#else{outro conjunto}
# ifelse(condicao, tarefa1, tarefa2)

# Loop for
# for(i in 1:N){
#  conjunto de tarefas
# }

# Loop While
# while(condicao satisfeita){conjunto de tarefas}

# Repetições
# rep(x,y)
# rep(repita x, y vezes)
# repeat{}

# Aplicando

# If-else
x = 25
if (x < 30){
  "Este número é menor que 30"
}

# O uso das chaves não são obrigatórios, mas é recomendavel
if(x < 30)
  "Este número é menor que 30"

# Else
if(x < 7){
  "Este número é menor que 7"
} else{
  "Este número é maior que 7"
}
  
# Comandos podem ser alinhados
x = 4

if(x < 7){
  "Este número é menor que 7"
} else if(x == 7){
  "Este é o número 7"
} else{
  "Este número é maior que 7"
}
  
  
# If-Else
x = 45
ifelse(x < 6, "Menor que 6", NA)

X = 9
ifelse(x < 6, "Correto",NA)

# Expressões ifelse aninhadas
x = c(7,5,4)

ifelse(
  x < 5, "Menor que 5", 
  ifelse(
    x == 5, "Igual a 5", "Maior que 5"
    )
  )

# Estruturas if dentro de funções
func1 <- function(x,y){
  ifelse(y < 7, x + y, "Não encontrado")
}

func1(4,2)
func1(40,7)

# Rep
rnorm(10)
rep(rnorm(10),5)

# Repeat
x = 1
repeat {
  x = x + 3
  if(x > 99){
    break
  }
}








  
  
  
  
