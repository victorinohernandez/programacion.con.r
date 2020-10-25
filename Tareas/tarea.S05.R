### SESION 05 TAREA ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 5. Bucles/Tarea")





mirombo <- function(n) {
  
  # Upper triangle
  espacio <- n - 1
  for (i in 0:(n - 1)) {
    for (j in 0:espacio) cat(" ")
    for (j in 0:i) cat("* ")
    cat("\n")
    espacio <- espacio - 1
  }
  
  # Lower triangle
  espacio = 1;
  for (i in (n - 1):1) {
    for (j in 0:espacio) cat(" ")
    for (j in 0:(i - 1)) cat("* ")
    cat("\n")
    espacio <- espacio + 1
  }
}
mirombo(9)

# TRIANGULOS

n<-9
espacio <- n - 1
for (i in 0:(n - 1)) {
  for (j in 0:espacio) cat(" ")
  for (j in 0:i) cat("* ")
  cat("\n")
  espacio <- espacio - 1
}

espacio = 1;
for (i in (n - 1):1) {
  for (j in 0:espacio) cat("*") 
  for (j in 0:(i - 1)) cat("+ ")
  cat("\n")
  espacio <- espacio + 1
}