#INEGI

#Librerias
library(readr)
library(grid)
library(dplyr)
library(readr)
library(tidyverse)
library(datasets)

#CSV DICIONARIO DE VARIABLES
Dicionario <- read_csv("CSV/diccionario_de_datos/diccionario_de_datos_atus_anual_1997_2021.csv")
atus_anual_2021 <- read.csv("CSV/conjunto_de_datos/atus_anual_2021.csv")










#Filtar vehiculos chocados en Tijuana
TJ <- atus_anual_2021 %>% filter(ID_ENTIDAD==02 & ID_MUNICIPIO==004)
hist(x=TJ$MES,main = "Histograma de autos chocados en Tijuana",ylab ="Vehiculos",col = "blue")

#Filtrar Vehicular chocados en Monterrey
MTY <- atus_anual_2021 %>% filter(ID_ENTIDAD==19 & ID_MUNICIPIO==039)
hist(x=MTY$MES,main = "Histograma de autos chocados en Monterrey",ylab ="Vehiculos",col = "Red")


























#Histograma de choques
hist(x = atus_anual_2021$AUTOMOVIL, main = "Histograma de Automoviles", 
     xlab = "Numero de autos", ylab = "Frecuencia de choques",
     col = "ivory")




