### SESION 04 ###
rm (list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 4. Funciones")

# FUNCIONES
#crea la funcion SUMA3, que efectua la suma de tres num
SUMA3<-function(x,y,z){
  x+y+z
}

SUMA3(5,3,4)

#CUerpo de una funcion
body(SUMA3)

#Argumentos de una funcion
formals(SUMA3)

# FUNCIONES CON ARGUMENTO NA
x<-c(14,13.5,16,12.5,15)
mean(x)
#que sucede si un argumento es NA
x<-c(14,13.5,NA,12.5,15)
mean(x)
#para evitar el NA, crear una funcion proemdio
promedio<-function(a){
  a<-a[!is.na(a)]
  mean(a)
}

x<-c(14,13.5,NA,12.5,15)
promedio(x)


# SENTENCIAS DE DECISION IF-ELSE
#Se desea crear una función que muestre el mayor de 2 números

MAYOR<-function(x,y){
  if (x>y){
    x
  }else{
      y
    }
}
MAYOR(1,3)
MAYOR(10,5)

#QUE pasaria si se ingresan dos num iguales?
MAYOR(6,6)
#debe modificarse la funcion

MAYOR<-function(x,y){
  if (x>y){
    x
  }else if (x==y){
    print("Ambos valores son iguales")
  } else{
    y
  }
}

MAYOR(6,6)

# RECURSIVIDAD
# Efectuar la suma de los 10 primeros números naturales:
sumatoria<-function(a){
  if(a!=0){
    a+sumatoria(a-1)
  }else{
    0
  }
}

sumatoria(10)
