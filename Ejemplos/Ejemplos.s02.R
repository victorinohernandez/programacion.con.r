### EJEMPLOS ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 2. Factores dataframes y listas/Ejemplos")

# EJEMPLO 1

#CONCATENAR FACTORES
f1<-factor(sample(letters,size=5,replace = T))
f2<-factor(sample(letters,size = 5, replace = T))
f1
f2
factor(c(levels(f1)[f1],levels(f2)[f2]))

# EJEMPLO 2

#MANEJO DE LISTAS
a<-c(1.5,6,2*pi)
b<-c("A","B","C","E")
v<-list(a,b)
v
v[2]
v[[2]][4]
#reemplazar "E" por "D"
v[[2]][4]<-"D"
v

#EJEMPLO 3

#CONCATENAR UN DATAFRAME
nombre<-c("Ana","Juan","Carlos","Erica","Paolo","Sergio","Jerson","Raquel")
nota<-c(18,9,15,13,12,10,16,5)
Data<-data.frame(Nombre=nombre,Nota=nota)
#generar el vector estado
estado<-nota>=11
estado[estado==T]<-"Aprobado"
estado[estado==F]<-"Desaprobado"
Data<-data.frame(Data,Estado=estado)
Data
