# función 1
desvest <- function(vector) {
  if (!is.numeric(vector)) {
    stop("El vector debe ser numérico")
  }
vector <- vector[!is.na(vector)]
n <- length(vector)
  if (n < 2) {
    stop("El vector debe tener al menos dos valores no NA")
}
  
# formula
media <- mean(vector)
suma_cuadrados <- sum((vector - media)^2)
desviacion_estandar <- sqrt(suma_cuadrados / (n - 1))
  return(desviacion_estandar)
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


