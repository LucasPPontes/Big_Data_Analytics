setwd("C:/Users/lucas/Big_Data_Analytics")
getwd()

# Criando matrizes

# Número de linhas
matrix(c(1,2,3,4,5,6), nr = 2)
matrix(c(1,2,3,4,5,6), nr = 3)
matrix(c(1,2,3,4,5,6), nr = 6)

# Número de colunas
matrix(c(1,2,3,4,5,6), nc = 2)

# Help
?matrix

# Matrizes precisam ter um número de elementos que seja múltiplo do número de linhas
matrix(c(1,2,3,4,5), nc = 2)

# Criando matrizes a partir de vetores e preenchedo a partir das linhas
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = TRUE)
matrix(data = meus_dados, nrow = 5, ncol = 2)

# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]

# Criando uma matriz diagonal
matriz = 1:3
diag(matriz)

# Extraíndo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

# Transposta da matriz
W <- matrix(c(2,4,8,12), nr= 2, ncol = 2)
W
t(W)
U <- t(W)
U

# Obtendo uma matriz inversa
solve(W)

# Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat1
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplicando matriz com vetor
x = c(1:4)
y <- matrix(c(2,3,4,5), nr = 2)
x
y
x * y

# Nomeando a matriz
mat3 <- matrix(c("Terra", "Marte", "Saturno", "Netuno"), nr = 2)
mat3
dimnames(mat3) = (list(c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3

# Nomeando matriz no momento de sua criação
mat4 <- matrix(c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha1","Linha2"), c("Coluna1", "Coluna2")))
mat4

# Combinando matrizes
mat5 <- matrix(c(2,3,4,5), nr = 2)
mat6 <- matrix(c(6,7,8,9), nr = 2)
mat5
mat6
cbind(mat5,mat6)
rbind(mat5,mat6)

# Desconstruindo a matriz
c(mat5)