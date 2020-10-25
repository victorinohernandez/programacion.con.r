### TAREA SESION 04 ###
rm (list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 4. Funciones/Tarea")

miFibonacci<-function(x){
  if (x%%1==0 & x>1){
    return(x-x+miFibonacci(x-1)+ miFibonacci(x-2))
  }else if(x==0){
    return(0)
  }else if(x==1){
    return(1)
  } else{
    return("Valor no aceptado")
  }
}

miFibonacci(0)
miFibonacci(1)
miFibonacci(2)
miFibonacci(4)
miFibonacci(6)
miFibonacci(7)
