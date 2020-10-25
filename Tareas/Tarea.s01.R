## TAREA##


#limpiar el espascio de trabajo
rm(list = ls())

#establecer directorio de trabajo
#setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 1. Vectores y matrices/Tarea")

#VECTORES
#1
a<-seq(15,103, by=3)
a
#2
length(a)
b<-seq(96,24,length.out = 30)
b
length(b)
#3
#a
length(a)==length(b)
#b
w<-a*b
#4
u<-norm(a,"2")
v<-norm(b,"2")
ua<-a/u
ua
ub<-b/v
ub
comprobacion<-sqrt(sum(ua^2))
comprobacion
#4
w<-round(w)
w[w%%4==0]
which(w%in% w[w%%4==0])
w<-w[-which(w%in% w[w%%4==0])]
w

#MATRICES
rm(list = ls())
#1
A<-matrix(c(1,2,-3,-1,0,-3,2,6,-3,-1,3,1,2,3,2,-1),4,byrow = T)
A
B<-matrix(c(0,-8,0,-8))
AB<-cbind(A,B)
AB
#2
det(A,B)
solve(A,B)
#3
dias<-c("Lun.","Mar.","Mie.","Jue.","Vie.","Sáb.","Dom.")
vendedor<-c("Martín","Jenny","Roberto","Josselyne")
lu<-c(850,750,910,560)
ma<-c(935,1500,1020,1250)
mi<-c(1000,450,1620,1000)
ju<-c(890,860,1530,500)
vi<-c(870,1200,1100,850)
sa<-c(1250,1500,1750,963)
do<-c(1300,1350,1600,1350)
m<-cbind(lu,ma,mi,ju,vi,sa,do)
m
rownames(m)<-vendedor
colnames(m)<-dias
m
