## EJEMPLOS##


#limpiar el espascio de trabajo
rm(list = ls())

#establecer directorio de trabajo
#setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 1. Vectores y matrices/Ejemplos")
#getwd()

#EJEMPLO 1, RESOLVER
# 5𝑥 + 3𝑦 + 6𝑧 = 5  9𝑧 + 3𝑦 = 48  𝑥 = 5

A<-matrix(c(5,3,6,0,3,9,1,0,0),nrow = 3,ncol=3,byrow=T)
B<-matrix(c(55,48,5),3,1)
AB<-cbind(A,B)
AB
AB[1,]<-AB[1,]/A[1,1]
AB

AB[2,]<-AB[2,]/AB[2,2]
AB

AB[3,]<-AB[3,]-AB[1,]
AB
AB[1,]<-AB[1,]+AB[3,]
AB

AB[3,]<-AB[3,]+0.6*AB[2,]
AB

AB[3,]<-AB[3,]/AB[3,3]
AB

AB[2,]<-AB[2,]-3*AB[3,]
AB

X<-AB[,4]
X
XX<-solve(A)
XX

#EJEMPLO 2

nombres<-c("Anthony","Martin","Sergio","Josselyne","Jimena")
datos<-c("Edad","Altura","Peso","Nota")
#datos de estudiates
e1<-c(44,1.8,82,20)
e2<-c(38,1.75,78,18)
e3<-c(21,1.65,64,17)
e4<-c(30,1.6,68,20)
e5<-c(18,1.55,52,20)
AA<-rbind(e1,e2,e3,e4,e4)

rownames(AA)<-nombres
colnames(AA)<-datos
AA

#EJEMPLO 3: ELIMINACION DE ELEMENTOS
rm(list = ls())

A<-matrix(1:9, 3,3,byrow = T)
x<-c(4,5,6,2)
#eliminar el elemento impar
x[x%%2==1]
#que posicion es ese elemento
which(x%in% x[x%%2==1])
#eliminandi
x<-x[-which(x%in% x[x%%2==1])]
x
#Concatenar A y x
B<-cbind(A,matrix(x))
B
#ELIMINAR LA TERCERA FILA DE B
B<-B[-3,]
B<-B[,c(-1,-4)]
dim(B)
