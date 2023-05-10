
# Big Data na Prática Analisando a temperatura Média nas Cidades Brasileiras

# Configurando o diretório de trabalho
setwd("C:/Users/lucas/Big_Data_Analytics/Fatores Estruturas de controle e funções")
getwd()

# Dataset:
# Berkeley Earth
# http://berkeyearth.org/data
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("gpplot2")
library(readr)
library(data.table)
library(dplyr)
library(ggplot2)

# Carregando os dados (Usando um timer para comparar o tempo de carregamento com diferentes funções)

# Usando read.csv2()
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))

# Usando read.table()
system.time(df_teste2 <- read.table("TemperaturasGlobais.csv"))

# Usando fread()
?fread
system.time(df <- fread("TemperaturasGlobais.csv"))

# Criando subsets dos dados carregados
cidades_brasil <- subset(df, Country == "Brazil")
cidades_brasil <- na.omit(cidades_brasil)

View(df)
View(df <- na.omit(df))

head(cidades_brasil)
nrow(df)
nrow(cidades_brasil)
dim(cidades_brasil)

View(cidades_brasil)

# Convertendo as Datas
cidades_brasil$dt <- as.POSIXct(cidades_brasil$dt,format="%Y-%m-%d")
cidades_brasil$Month <- month(cidades_brasil$dt)
cidades_brasil$Year <- year(cidades_brasil$dt)
View(cidades_brasil)

# Palmas
plm <- subset(cidades_brasil, City == "Palmas")
plm <- subset(plm, Year %in% c(1796,1846,1896,1946,1996,2012))
View(plm)

# Curitiba 
cta <- subset(cidades_brasil, City == "Curitiba")
cta <- subset(cta, Year %in% c(1796,1846,1896,1946,1996,2012))
View(cta)

# Recife
rce <- subset(cidades_brasil, City == "Recife")
rce <- subset(rce, Year %in% c(1796,1846,1896,1946,1996,2012))
View(rce)

# Construindo os Plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA , size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete("")+
  ggtitle("Temperatura Média ao longo dos anos em Palmas")+
  theme(plot.title = element_text(size = 18))


p_cta <- ggplot(cta, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA , size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete("")+
  ggtitle("Temperatura Média ao longo dos anos em Curitiba")+
  theme(plot.title = element_text(size = 18))

p_rce <- ggplot(rce, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE, fill = NA , size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete("")+
  ggtitle("Temperatura Média ao longo dos anos em Recife")+
  theme(plot.title = element_text(size = 18))

# Plotando
p_plm
p_cta
p_rce