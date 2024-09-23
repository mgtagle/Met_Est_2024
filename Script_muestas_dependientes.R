# Muestras dependientes
# Mismos individuos medidos en dos tiempos diferentes
# (2012 vs 2013) producción de semillas

tiempo <- read.csv("peso_semillas.csv", header = T)

boxplot(tiempo$Kgsem ~ tiempo$Tiempo,
        col= "lightblue",
        xlab = "Año",
        ylab = "Semillas (Kg)")
abline(h=10.1, col= "red", lwd = 3, lty = "dotdash")
abline(h=10.9, col= "white", lwd = 3, lty = "dotdash")

# Determinar las medias de Kg en ambos años. 
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)

# Quiero saber si hay diferencias solamente
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T)

# saber sí 2013 es mayor que 2012
t.test(tiempo$Kgsem~ tiempo$Tiempo, paired =T,
       alternative = "less")
