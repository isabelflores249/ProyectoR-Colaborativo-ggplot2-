#Descarga de paquetes
install.packages("readr")
install.packages("dplyr")
library(readr)
library(dplyr)

# Asignar el directorio de trabajo 
setwd("C:\\Users\\Usuario\\OneDrive - Universidad de Costa Rica\\Bach Estadistica\\III Ciclo\\XS-0129 Programacion para Estadistica\\Evaluaciones")
# Leer el archivo csv. 
datos <- read.csv("dataset.csv", sep = ",") #sep es porque separa el contenido de columas con ,
summary(datos)
# Mostrar las dimensiones del dataset 
dim(datos)
# Extraer columnas numericas
datos_numericos <- datos[sapply(datos, is.numeric)]
datos_numericos
# Calcular la media de cada columna numerica
medias <- colMeans(datos_numericos, na.rm = TRUE)
medias