# Primeiros passos na linguagem R

# Configurando o ambiente de trabalho
setwd("C:/Users/lucas/Big_Data_Analytics")
getwd()

# Nome dos contribuidores
contributors()

# Licença
license()

# Informações sobre a sessão
sessionInfo()

# Imprimir na tela
print("Mensagem impressa")

# Criar gráficos
plot(1:25)
plot(25:1)

# Instalar pacotes 
install.packages("randomForest")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("devtools")

# Carregar o pacote
library(ggplot2)

# Descarregar o pacote
detach(package:ggplot2)

# Se precisar de ajuda em alguma função
help(mean)
?mean

# Para buscar mais opções sobre uma função, use o pacote SOS
install.packages("sos")
library(sos)
findFn("fread")

# Se não souber o nome da função
help.search("randomForest")
help.search("matplot")
??matplot
RSiteSearch("matplot")
example("matplot")

# Sair
q()