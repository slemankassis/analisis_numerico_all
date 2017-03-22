
//  yi= xi/(axi + b) tengo xi, tengo yu, quiero conocer a b. con polyfit(xi,yi,1) me tira el a b si yi = axi + b.. que problema.. solucion la sig

//yi = xi/(axi + b) equivale a yi/xi = axi + b

zi = yi/xi
 
p = polyfit(xi,zi,1) 

// listo ; ) en el 3a yi = c*(xi)elevadoalaA juego algebraicamente con log, zi= log(yi) y me queda log(A) + log(c*xi) .. y ui = log(c*xi) y listo. El tema es que xi e yi no pueden ser negativos. luego hago u = min(xi,yi) luego xi = xi + valorabsoluto(u) yi = yi +  valorabsoluto(yi). Y ahi no tengo problema con los negaivos, solo me queda desplazadao el grafico. en la pratica lo haces asi y lo copias y pegas donde corresponde 

