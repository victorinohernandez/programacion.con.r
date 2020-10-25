### EVALUCION FINAL ###
rm(list = ls())
#setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/TPR - Evaluación Final")


#Ejercicio 3: (6 puntos)
library(readxl)
encuesta <- read_excel("Datos/Encuesta.xslx")
#View(encuesta)

encuesta<-data.frame(encuesta)

Respuesta<-encuesta$Número

Respuesta<-factor(Respuesta, levels = c("5","4","3","2","1"),labels = c("Muy buena experiencia","Buena experiencia","Regular experiencia", "Mala experiencia","Muy mala experiencia"))


data<-data.frame(encuesta,Respuesta)
#View(data)

Aprobacion<-data$Número

data$apro <- with(data,Número)

data$Aprobation [data$apro==5] <- "Calificado"
data$Aprobation [data$apro==4] <- "Calificado"
data$Aprobation [data$apro==3] <- "Descalificado"
data$Aprobation [data$apro==2] <- "Descalificado"
data$Aprobation [data$apro==1] <- "Descalificado"



Aprobacion<-factor(Aprobacion, levels = c("5","4","3","2","1"),labels = c("Calificado","Calificado","Descalificado", "Descalificado","Descalificado"))

data<-data.frame(data, Aprobacion)
View(data)

plot(Aprobacion, col= 4)
plot(as.factor(data$Aprobation))
