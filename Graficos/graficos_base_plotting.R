# Gráficos em R - Base Plotting System
setwd("/home/lucas")
getwd()

# Lista os pacotes instalados no ambiente
search()

# Demo
demo("graphics")

#Plot básico 
y = 5:7
x = 8:10

plot(x,y)
?plot

altura <- c(145, 167, 176, 123, 150)
largura <- c(51,63,64,40,55)

plot(altura, largura)

#Plotando um dataframe
?lynx
plot(lynx)
plot(lynx, ylab="Plots com DataFrames", xlab="")
plot(lynx, ylab="Plots com DataFrames", xlab="Observações")
plot(lynx, main="Plots com DataFrames", col="red")
plot(lynx, main="Plots com DataFrames", col="red", col.main = 52, cex.main = 1.5)

library(datasets)

hist(warpbreaks$breaks)

airquality
transform(airquality, Month= factor(Month))
boxplot(Ozone ~ Month , airquality, xlab="Month", ylab="Ozone (ppb)")

# Especificando os parâmetros

#col - cor do plot
#lty - tipo de linha
#lwd - largura de linha
#pch - símbolo no plot
#xlab - label do eixo x
#ylab - label do eixo y
#las - como as labels dos eixos são orientadas
#bg - background color
#mfrow - número de plots por linha
#mfcool - número de plots por coluna

# Funções básicas de plot

#plot() - scatterplots
#lines() - adiciona linhas ao gráfico
#points() - adiciona pontos ao gráfico
#text() - adiciona label(texto) ao gráfico
#title() - adiciona título ao gŕafico

?par

