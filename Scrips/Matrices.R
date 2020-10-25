## R SCRIP PARA LA SESION 1##

#MATRICES##

#limpiar el espascio de trabajo
rm(list = ls())

#establecer directorio de trabajo
#setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 1. Vectores y matrices")
#getwd()

#CREANDO MATRICES
#usando DIM

m=c(21:40)
m
length(m)
dim(m)<-c(2,10)
m
dim(m)<-c(4,5)
m

#USANDO MATRIX

m<-matrix(21:40, nrow = 4, ncol=5)
m
m<-matrix(21:40, nrow = 4, ncol=5, byrow = TRUE)
m
#clase y atributos
class(m)
attributes(m)


#USANDO RBIND Y CBIND
x<-c(5,2.9,10.3)
y<-c(3:5)
m2<-rbind(x,y)
m2
m3<-cbind(x,y)
m3

#Manipulacion de elementos de una matriz
a<-rbind(seq(0,pi,length.out = 4),rep(c(1.5,4),2), c("a","b","c","d"))
a 
#elemento unicado en tercera fila segunda col
a[3,2]
#Se desea cambiar el elemento de la ultima fila y de la ultima columna por
a[nrow(a),ncol(a)]<-log(5)
#mostrar el quinto elemento
a[5]
#mostrar una matriz creada con las col 3 y 2 de a
a[,c(3,2)]

#SUMA Y DIFERENCIA DE MATRICES
b<-matrix(1:6, nrow = 2, ncol = 3)
c<-matrix(seq(0,2*pi,length.out = 6),nrow = 2,ncol = 3)
dim(b)==dim(c)
b+c
b-c
#Multiplicacion y division elemento a elemento
b*c
b/c

#MULTIPLICACION DE MATRICES
A<-matrix(1:12, nrow = 4, ncol = 3, byrow = T)
B<-rbind(4:5,c(1.5,10.2),c(0,pi))
attributes(A)
dim(A)
dim(B)
C<-A%*%B
#DETERMINANTE DE UNA MATRIZ
D<-matrix(c(1,5,3,2),2,2)
det(D)
#INVERSA DE UNA MATRIZ
solve(D)
#TRASPUESTA
t(D)

#FUNCIONES MATEMATICAS CON MATRICES
sqrt(D)
exp(D)
log10(D)
sin(D)
acosh(D)
atan(D)
