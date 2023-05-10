setwd("C:/Users/lucas/Big_Data_Analytics/Fundamentos da Linguagem R")
getwd()

# Criando um dataframe vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

df <- data.frame(c(nomes,idades,itens,codigos))
df

# Criando vetores
pais = c("Portugal", "Inglaterra", "Irlanda", "Egito", "Brasil")
nome = c("Bruno", "Tiago", "Amanda", "Bianca", "Marta")
altura = c(1.88, 1.76, 1.53, 1.69, 1.68)
codigo = c(5001, 2183, 4702, 7965, 8890)

# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa

# Adicionando um novo vetor a um dataframe existente
olhos = c("Verde", "Azul", "Azul", "Castanho", "Castanho")
pesq = cbind(pesquisa, olhos)
pesq

# Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)
?str
?dim
# Obtendo um vetor de um dataframe
pesq$pais
pesq$nome

# Extraindo um único valor
pesq[1,1]
pesq[3,2]

# Número de linhas e colunas
nrow(pesq)
ncol(pesq)

# Primeiros elementos do dataframe
head(pesq)
head(mtcars)

# Ultimos elementos do dataframe
tail(pesq)
tail(mtcars)

# Data frames built-in no R
?mtcars
mtcars

# Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60, c("codigo", "olhos")]
pesq

# Dataframes nomeados
names(pesq) <- c("Páis", "Nome", "Altura", "Código", "Olhos")
pesq

colnames(pesq) <- c("var1", "var2", "var3", "var4", "var5")
rownames(pesq) <-c ("obs 1", "obs 2", "obs 3", "obs 4", "obs 5")
pesq

# Carregando um arquivo csv
?read.csv
pacientes <- data.frame(read.csv(file = "pacientes.csv", header = TRUE, sep = ","))

# Visualizando o dataset
view(pacientes)
head(pacientes)
summary(pacientes)

# Visualizando as variáveis
pacientes$Diabete
pacientes$Status
pacientes$status

# Histograma
hist(pacientes$Idade)

# Combinando dataframes
dataset_final <- merge(pesq, pacientes)
dataset_final

