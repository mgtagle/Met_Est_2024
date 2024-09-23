# Prueba de t de una muestra
# realizar la comparación de una muestra experimental vs una muestra
# teorética.

semillas <- read.csv("Datos_semillas.csv", header = T)

# Probar la normalidad de los datos de las semillas
shapiro.test(semillas$Peso)


# Ejemplo 1 ---------------------------------------------------------------


# Primera visualización de los datos

boxplot(semillas$Peso, col = "lightblue")
abline(h =6.2, col= "red", lwd = 3, lty = "dotdash")
abline(h=5.7, col = "green", lwd =3, lty = "dotdash" )

t.test(semillas$Peso, mu = 6.2)
# Existen diefrencias entre el peso observado y el peso de la
# media teorética.
# Aceptamos la hipotesis alternativa



# Ejemplo 2 ---------------------------------------------------------------

# Ahora la media teorética es de 5.85 g

boxplot(semillas$Peso, col = "lightblue")
abline(h =5.85, col= "red", lwd = 3, lty = "dotdash")
abline(h=5.7, col = "green", lwd =3, lty = "dotdash" )

# Existen diferencias entre las medias comparadas


# Ejercicio 3 -------------------------------------------------------------

# Ahora la media teorética es de 5.78 g

boxplot(semillas$Peso, col = "lightblue")
abline(h =5.78, col= "red", lwd = 3, lty = "dotdash")
abline(h=5.7, col = "green", lwd =3, lty = "dotdash" )

t.test(semillas$Peso, mu = 5.78)
