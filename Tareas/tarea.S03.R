### TAREA ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 3. Importacion y exportacion de datos/Tarea")
library(readxl)
Notas <- read_excel("SESION3_DATA1.xlsx")
#convertir a dataframe
Notas<-data.frame(Notas)
head(Notas)
#crear y agregar un vector
Promponderado<-(Notas$EXAMEN.1*Notas$PONDERACION.1)+(Notas$EXAMEN.2*Notas$PONDERACION.2)
Notas<-data.frame(Notas,Promponderado)
Notas
#Exportar en csv
write.csv(Notas,"S3_RESULTADO.csv", row.names = F)
