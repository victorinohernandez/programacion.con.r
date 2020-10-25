### EJEMPLOS SESION 04 ###
rm (list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 4. Funciones/Ejemplos")

# EJEMPLO 1

#Se creara una fucnion para el area de un tringulo
area.triangulo<-function(x,y){
  x*y/2
}
area.triangulo(3,4)

#Pero, ¿qué pasaría si se ingresa valores negativos o nulos?
# Lo correcto es que se muestre un mensaje “Los argumentos de entrada deben ser positivos”

area.triangulo<-function(x,y){
  if(x>0 & y>0){
    return(x*y/2)
  }else{
    print("Los argumentos de entrada deben ser positivos")
  }
}

area.triangulo(0,4)


# EJEMPLO 2
rm (list = ls())
# Crear una funcion para un dataframe

x<-cbind(c(56,82,71,63,50),c(1.7,1.65,1.78,1.52,1.45))
y<-c("Peso","Estatura","IMC")
nombreDF<-function(x,y){
  n<-dim(x)
  if(n[2]==length(y)){
    x<-data.frame(x)
    colnames(x)<-y
    return(x)
  }else{
    return("Las dimensiones no coinciden")
  }
}

nombreDF(x,y)
###
x<-cbind(c(56,82,71,63,50),c(1.7,1.65,1.78,1.52,1.45), seq(-5,5,length.out = 5))
y<-c("Peso","Estatura","IMC")
nombreDF(x,y)

# EJEMPLO 3
rm (list = ls())
# Crear una función recursiva de nombre miFactorial(x) que halle el factorial de x (x!).
miFactorial<-function(x){
  if (x%%1==0 & x>0){
    return(x*miFactorial(x-1))
  } else if(x==0){
    return(1)
  }else{
    return("Valor no aceptado")
  }
}

# con decimal
miFactorial(5.5)
#con negatico
miFactorial(-5)
#con 0
miFactorial(0)
#natural o positivo
miFactorial(5)
