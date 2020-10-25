### TAREA ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 2. Factores dataframes y listas/Tarea")

#1
Nombre<-c("Juan Flores","María Quinto","Omar Duque","Sergio Peña","Carlos Arando","Marisol Jiménez","Paola Reyes", "Carmen Robles","Mario Cantú","José Cori","Laura Quispe","Pamela Paz","Katy Palacios","Flor Timaná","Anthony Mejía")
P1<-c(18,12,15,13,19,17,16,15,18,17,20,15,16,15,17)
P2<-c(17,9,13,13,18,13,10,16,15,12,19,14,15,14,16)
P3<-c(17,9,13,12,19,14,9,5,15,15,19,12,14,13,16)
EP<-c(12,12,8,12,16,12,8,12,12,11,14,11,13,15,14)
EF<-c(13,9,11,10,14,13,12,12,11,10,13,11,13,14,15)
dfAlumnos<-data.frame(Nombre,P1,P2,P3,EP,EF)
dfAlumnos
#2
PP<-rowMeans(dfAlumnos[,c(2,3,4)])
PP<-round(PP)
PP
dfAlumnos<-data.frame(dfAlumnos,PP)
dfAlumnos
#3
PF<-round(rowMeans(dfAlumnos[,c(2,3,4,5,6)]))
dfAlumnos<-data.frame(dfAlumnos,PF)
dfAlumnos
#4
Estado<-PF>=11
Estado[Estado==T]<-"Aprobado"
Estado[Estado==F]<-"Desaprobado"
dfAlumnos<-data.frame(dfAlumnos,Estado)
dfAlumnos
#5
max(dfAlumnos[,8])
min(dfAlumnos[,8])
dfAlumnos[which(dfAlumnos$PF==17),"Nombre"]
dfAlumnos[which(dfAlumnos$PF==10),"Nombre"]

