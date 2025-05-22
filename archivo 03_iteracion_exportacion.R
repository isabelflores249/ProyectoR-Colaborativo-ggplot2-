#asignar el directorio de trabajo

setwd("C:/Users/estef/Downloads")

#leer el archivo csv

datos <- read.csv("dataset.csv", sep = ",")


#Utilizar un for o while para iterar sobre columnas y contar cuántas tienen más de 10 valores mayores a la media.

#for

contador <- 0

for (col_name in names(datos)) {
  columna <- datos[[col_name]]
  
  if (is.numeric(columna)) {
    media <- mean(columna, na.rm = TRUE)
    cantidad_mayores <- sum(columna > media, na.rm = TRUE)
    
    if (cantidad_mayores > 10) {
      contador <- contador + 1
    }
  }
}

print(contador)

#Crear un nuevo data frame con los resultados de la iteración.

resultados <- data.frame( edad = c(),
                          promedio = c(),
                          creditos_aprobados = c()
  
)

#Guardar ese nuevo data frame en un archivo .csv usando write.csv() en la carpeta /resultados/




