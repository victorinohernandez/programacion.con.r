## R SCRIP PARA LA SESION 1##

#VECTORES Y OPERACIONES##

#limpiar el espascio de trabajo
rm(list = ls())

#establecer directorio de trabajo
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 1. Vectores y matrices")
getwd()

#vectores nuemericos
x<-c(5, 4, -2, 0)
m<-c(1.5:6)
assign("z",c(-5,3,6))

#vectores de caracteres
y<-c("a","b","c")

#vectores logicos
c(TRUE,FALSE, TRUE, TRUE)->w

#vector de vectores
n<-c(x,y,z,w)

#visualizar elemento creados
ls()

#para mostrar que clase de elemento es
class(x)
class(y)
class(w)

#funciones matematicas
b<-c(1.5,pi/2,3,pi/3)
b

#valor absoluto
abs(b)
#raiz cuadrada
sqrt(b)
#funcion exponencial e^b
exp(b)
#funcion logaritmo decimal (logb o log_10b)
log10(b)
#Logaritmo decimal
log(b)
#redondear
round(b)
#FUNCIONES TRIGONOMETRICAS
sin(b)
cos(b)
tan(b)

#OPERACIONES CON VECTORES
#suma de los elementos internos
sum(b)
#producto de los elementos
prod(b)
#prmedio de los elemtos
mean(b)
#norma euclideana (sqrt(a^2+b2))
norm(b,"2")
#sean a y c
a<-c(-40,0,40)
c<-c(13,31,42)
#operaciones basicas con a y c
a+c
a-c
a*c
a/c
x^3

#operacion modulo o resto de una division
c%%4

#operaciones logicas
c>20
c<20
#cuales son esos elementos
c[y>20]
c[y<20]
#vector logico donde y es par
c%%2==0
c[c%%2==0]
#impar
c%%2==1
c[c%%2==1]

#secuencias
d<-c(0,pi/2,pi,3*pi,2*pi)
#con la funcion seq
e<-seq(0,2*pi, by=pi/2)
e
#cuando se cuenta con el num de elementos
f<-seq(0,2*pi,length.out = 5)
print(f)
g<-seq(0,2*pi,length.out = length(x))
g

#Replicar elementos de vectores

h<-c(1,2,3,4)
i<-c(h,h,h)
i
rep(h,times=3)

#Manipulacion de los elementos de un vecotr
j<-c(5,2.5,sqrt(2))
j
#mostar el segundo elemento del vector
j[2]
#cambiar el tercer elemento por sqrt(5)
j[3]<-sqrt(5)
j

#EJEMPLO 2
#asignar nombre y numero
nombre.animales<-c("leones","tigres","leopardos")
num.animales<-c(5,1,3)
names(num.animales)<-nombre.animales
num.animales
num.animales[3]
num.animales["leopardos"]
num.animales[c(3,1)]
num.animales[c("tigres", "leones")]
