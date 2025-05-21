# función 1
desvest <- function(vector) {
  if (!is.numeric(vector)) {
    stop("El vector debe ser numérico")
  }
  return(sd(vector, na.rm = TRUE))
}

# función 2
col_na <- function(dataframe) {
  if (!is.data.frame(dataframe)) {
    stop("El argumento debe ser un dataframe")
  }
  colnames(dataframe)[sapply(dataframe, function(x) any(is.na(x)))]
}

# asignar el directorio de trabajo
setwd("~/Downloads")

# cargar el dataset
datos <- read.csv("dataset.csv", sep = ",")

# aplicar funciones

desvest_edad <- desvest(vector = datos$edad)
print(desvest_edad)

desvest_promedio <- desvest(vector = datos$promedio)
print(desvest_promedio)

desvest_creditos <- desvest(vector = datos$creditos_aprobados)
print(desvest_creditos)

datos_na <- col_na(dataframe = datos)
print(datos_na)


