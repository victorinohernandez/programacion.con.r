### SESION 05 EJEMPLOS ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 5. Bucles/Ejemplos")

# EJEMPLO 1: SERIES DE POTENCIAS CON FOR

#prueba iterativa hallar e^2
x<-2
e<-x^0/factorial(0)
e
e<-e+x^1/factorial(1)
e
e<-e+x^2/factorial(2)
e
e<-e+x^3/factorial(3)
e
e<-e+x^4/factorial(4)
e

#generando un bucle para 0<= 1<=n
#hay que generar los valores iniciales x y n (por ejemplo, n=5)
x<-2 
n<-5
e<-0
for (i in 0:n) {
  e<-e+x^i/factorial(i)
  print(e)
  
}

#creando una funcion
miexponancial<-function(x,n){
  e<-0;
  for (i in 0:n) {
    e<-e+x^i/factorial(i)
    print(e)
    
  }
  return(e)
}

miexponancial(2,5)

miexponancial(2,n=50)

# EJEMPLO2: SUMA DE POTENCIAS Y TOLERANCIA

rm(list = ls())
# crear la funciÃ³n miExponencial2(x,tol)
# Sea x=2, tol=10^-2, iniciar E=0

x<-2
E<-0
i<-0
repeat{
  E<-E+x^i/factorial(i)
  print(paste0("Para i=",i," ,e^",x," es ",E))
  if(abs(x^i/factorial(i))<10^-2){
     break
  }
 i<-i+1
}
paste0("Por lo tanto, el valor de e^",x," es ",E," con tolerancia tol=",10^-2)

#creando la funcion
miexponencial2<-function(x,tol){
  E<-0; i<-0;
  repeat{
    E<-E+x^i/factorial(i)
    print(paste0("Para i=",i," ,e^",x," es ",E))
    if(abs(x^i/factorial(i))<10^-2){
      break
    }
    i<-i+1
  }
  return(E)
}

miexponencial2(2,10^-2)


# EJEMPLO 3: IMPRIMIR FIGURAS CON ASTERISCOS USANDO for

rm(list = ls())
# Si se desea imprimir 10 asteriscos seguidos, se usa:
n<-10
for (j in 1:n) {
  cat("*")
}

#con salto de linea
for (j in 1:n) {
  cat("*","\n")
}

# con tabulacion
for (j in 1:n) {
  cat("*","\t")
}

# usando ambos en dos bucles
n<-10
for (i in 1:n){
  for (j in 1:n) {
    cat("*")
  }
  cat("\n")
}


# generar la matriz triangular con asteriscos, se debe hacer una pequeña modificación

for (i in 1:n){
  for (j in i:n) {
    cat("*")
  }
  cat( "\n")
}

# creando una funcion 

t.asterisco<-function(n){
  if (n%%1==0 & n>0){
    for (i in 1:n){
    for (j in i:n) {
        cat("*")
      }
      cat( "\n")
  }
  } else{
    print("Error: n es entero positivo")
  }
}


t.asterisco(5)







