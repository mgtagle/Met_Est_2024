
library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto$Clase <- as.factor(conjunto$Clase)
conjunto$Especie <- as.factor(conjunto$Especie)
summary(conjunto)

boxplot(conjunto$Altura ~ conjunto$Especie,
        xlab = "Especie",
        ylab = "Altura (m)",
        col = "lightgreen")

boxplot(conjunto$Diametro ~ conjunto$Especie,
        xlab = "Especie",
        ylab = "Diámetro (cm)",
        col = "lightgreen")


# Seleccionar la especie F mediante subset (subconjunto)
SpF <- subset(conjunto, conjunto$Especie == "F")

# Seleccionar exceptuando F
SpHC <- subset(conjunto, conjunto$Especie != "F")

mean(conjunto$Altura)
SpHpro <- subset(conjunto, conjunto$Altura >= mean(conjunto$Altura))

tapply(conjunto$Altura, conjunto$Especie, mean)


which(conjunto$Altura > 20)
# El dato se encuentra en la fila 18
conjunto[18:20,7]
conjunto[c(18,20), ]
conjunto[,3]
