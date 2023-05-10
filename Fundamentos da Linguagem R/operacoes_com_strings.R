setwd("C:/Users/lucas/Big_Data_Analytics")
getwd()

# String
texto <- "Isso é uma string!"
texto

# Convertendo um elemento para uma string
x = as.character(4.5)
x
class(x)

# Concatenando strings
nome = "Nelson"; sobrenome = "Mandela"
paste(nome, sobrenome)
cat(nome, sobrenome)

# Formatando a saída
sprintf("A %s é a nota %d", "Data Science Academy", 10)

# Extraindo parte da string
texto <- "Isso é uma string!"
substr(texto, start=12, stop=17)
?substr

# Contando o número de caracteres
nchar(texto)

# Alterando a capitalização
tolower(texto)
toupper(texto)

# Usando stringr
library(stringr)

# Dividindo uma string em caracteres
?strsplit
strsplit("Histograma de elementos de dados", NULL)

# Divindo uma string em caracteres, após o caracteres espaço
strsplit("Histograma de elementos de dados", " ")

# Trabalhando com strings
string1 <- c("string1 teste1 teste2")
string2 <- c("string2 teste1 teste2")
string1
string2

# Adicionando 2 strings
str_c(c(string1,string2), sep="")

# Podemos contar quantas vezes um caractere aparece no texto
str_count(string2, "s")

# Localiza a primeira e a última posição em que o caractere aparece na string
str_locate_all(string2, "s")

# Substitui a primeira ocorrência de um caractere
str_replace(string2, "\\s", "")

# Substitui todas as ocorrências de um caractere
str_replace_all(string2, "\\s","")

# Detectando padrões nas strings
string1 <- "17 jan 2001"
string2 <- "1 jan 2001"
padrao <- "jan 20"
grepl(pattern = padrao, x = string1)
padrao <- "jan20"
grepl(pattern = padrao, x = string1)