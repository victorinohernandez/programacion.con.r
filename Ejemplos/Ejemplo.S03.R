### EJEMPLOS ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 3. Importacion y exportacion de datos/Ejemplos")


#EJEMPLO 1

#Importar un archivo de extensión XLSX.
library(readxl)
file <- "SESION3_EJEMPLO1.xlsx"
data<-read_excel(file, col_names = T)
head(data)
#convertir a dataframe
data<-data.frame(data)
colnames(data)<-c("Practica1", "Practica2", "Practica3")
head(data)
promedio<-round(rowMeans(data))
data<-data.frame(data,Promedio=promedio)
head(data)

# EJEMPLO 2
rm(list = ls())
Data<-data.frame(c(930,1200,850,499,153,1000,150,650,856,251))
colnames(Data)<-"Dinero_soles"
tipo.cambio<-3.27
Dinero_dolares<-Data$Dinero_soles*tipo.cambio
Data<-data.frame(Data,Dinero_dolares)
Data
#Exportar a csv
write.table(Data,"SESION3_EJEMPLO2.CSV", sep=";" , row.names=F)

#EJEMPLO 1

rm(list = ls())

#importar un archivo de stata
library(foreign)
file<-"SESION3_EJEMPLO3.dta"
Data<-read.dta(file)
tail(Data)
n<-dim(Data)
n

#Modificar el nombre de las variables mediante una concatenación
colnames(Data)<-paste0("X", 1:n[2])
tail(Data)
