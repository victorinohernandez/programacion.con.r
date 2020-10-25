### SESION 05 ###
rm(list = ls())
setwd("D:/CURSOS/Estadistica Aplicada y programacion con R/Taller de programacion con R/Sesion 5. Bucles")

# BUCLES

x<-1
repeat{
  print(paste0(x,"^2 es",x^2))
  x<-x+1
  if(x>10){
    break;
  }
}

# BUCLE for
rm(list = ls())

for (i in 1:10) {
  print(paste0(i,"^2 es ", i^2))
  
}

# BUCLE while

rm(list = ls())
x<-1
while (x<=10) {
  print(paste0(x,"^2 es", x^2))
  x<-x+1
}


# SENTENCIA switch
rm(list = ls())
valor<-2
switch(valor,"Suma","Resta","Multiplicacion")
