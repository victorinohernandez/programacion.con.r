### SESION 02 ###
rm (list =ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 2. Factores dataframes y listas")

###  FACTORES ###

frutas<-c("manzanas", "platanos", "fresas","platanos","fresas","fresas","manzanas","fresas","fresas","manzanas")
f.frutas<-factor(frutas)
f.frutas
#para mostrar los niveles
levels(f.frutas)
#estructura de un vector y un factor
str(frutas)
str(f.frutas)

#FUNCION SUMMARY
summary(f.frutas)

#FACTORES ORDENADOS
f.frutas2<-factor(frutas,ordered = T,levels = c("manzanas","fresas","platanos"))
f.frutas2
#comparacion de factores ordenados
f.frutas[1]<f.frutas[2]
#no es posible comparar debido a que "f.frutas" no es ordenado
f.frutas2[1]<f.frutas2[2]
f.frutas2[[2]]<f.frutas2[[3]]


#FUNCION APPLY
# tapply(vector_nemerico, factor, funcion)
#creando un vector numerico
cantidad<-c(5,6,3,2,1,3,2,2,7,10)
suma.cantidad<-tapply(cantidad,f.frutas2,sum)
print(suma.cantidad)
promedio.cantidad<-tapply(cantidad, f.frutas2, mean)
print(promedio.cantidad)
prod.cantidad<-tapply(cantidad, f.frutas2, prod)
print(prod.cantidad)

### DATAFRAMES ###

#Creacion de dataframes
vector.nombre<-c("Andrea","Javier","Pamela","Piaro","Gonzalo","Omar")
vector.edad<-c(50,20,35,33,19,30)
vector.casado<-c(T,F,T,T,F,F)
df<-data.frame(vector.nombre,vector.edad, vector.casado)
#asignando nombre a las columnas
names(df)<-c("Nombre","Edad","Casado")
df
#tambien se puede crear incluyendo las variables como parametros
df2<-data.frame(Nombre=vector.nombre, Edad=vector.edad,Casado=vector.casado)
df2
#estructura de un dataframe
str(df2)

#Seleccion de elementos
#mostrar todas las edaddes del dataframe df
df[2]
#mostrar todos los datos de Andrea
df[which(df$Nombre=="Andrea"),]
#mostrar la edad de Pamela
df[which(df$Nombre=="Pamela"),"Edad"]
#mostrar los nombres y las edades de las personas casadas
df[which(df$Casado==T), c("Nombre", "Edad")]
#mostrar los nombres de las personas de edad >= 30, pero <41
df[which(df$Edad>=30 & df$Edad<41),"Nombre"]

#Ordenar dataframes
#orden ascendente
sort(df$Nombre)
#para mostarr el orden de cada posicion
order(df$Nombre)
sort(df$Edad)
order(df$Edad)

#orden descendente
sort(df$Nombre, decreasing = T)
order(df$Nombre, decreasing = T)
sort(df$Edad, decreasing = T)
order(df$Edad, decreasing = T)



### LISTAS ###
#con una lista se pueden agrupar vectores, matrices, factores y dataframes:
vectorv<-seq(0,pi,length.out = 4)
matriz<-matrix(1:24,4)
factorv<-factor(c("a","b","b","a","b","b","a"))
datairis<-iris[c(1,25,100),]
#lista
l<-list(Vector=vectorv,Matriz=matriz,Factor=factorv, DataFrame=datairis)
#selecion de elementos de la lista
#se puede usar el nombre (con $ o []) o la posicion con [[]]
l$Factor
l["Factor"]
l[[3]]
#por ejemplo mostrar el tercer elemento de la lista 1
l[[3]][2]
#los elementos de la col species del cuarto elemento de lista
l[[4]][,"Species"]
#el tercer elemento de la col Species del cuarto elemento de la lista
l[[4]][3,"Species"]
