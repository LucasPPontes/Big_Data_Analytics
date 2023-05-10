setwd("C:/Users/lucas/Big_Data_Analytics/Fatores Estruturas de controle e funções")
getwd()

# Fatores

#O termo fator se refere a tipos de dados estatísticos usados para armazenar variáveis categóricas. Fatores são variáveis categóricas que são muito úteis em sumarização de estatísticas, plots e regressões.
#Fatores representam uma maneira muito eficiente para armazenar valores de caracteres, porque cada caractere único é armazenado apenas uma vez e os dados são armazenados como um vetor de inteiros
#Para criar fatores usamos a função factor()
#Fatores Ordenados
#factor(…, ord = T) ou ordered()

vec1 <- c("Macho", "Femea", "Femea","Macho", "Macho")
vec1 
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

# Variáveis categóricas nominais
# Não existe uma ordem implícita
animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)

# Variáveis categóricas ordinais
# Possuem uma ordem natural
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
fac_grad <- factor(grad, ordered = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado"))
fac_grad
levels(fac_grad)

# Sumarizar os dados fornece uma visão geral sobre o conteúdo das variáveis
summary(fac_grad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2
levels(fac_vec2) <- c("Femea", "Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)

# Mais exemplos
data <- c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata <- factor(data)
fdata
summary

rdata = factor(data, labels = c("I", "II", "III"))
rdata


# Fatores Não ordenados
# R apenas criou os níveis, oq ue não significa que exista uma hierarquia
f.set1

