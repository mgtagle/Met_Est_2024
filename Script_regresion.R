# regresión lineal

geyser <- read.csv("erupciones.csv", header = T)

plot(geyser$waiting, geyser$eruptions,
     pch = 19, col = "lightblue",
     xlab = "Tiempo espera (min)",
     ylab = "Duración (min)")

range(geyser$eruptions)
range(geyser$waiting)

# revisar si existe una relación lineal entre dos variables.
cor.test(geyser$eruptions, geyser$waiting)
cor.test(geyser$waiting, geyser$eruptions)
# La pregunta: Podemos predecir el tiempo de la erupción en base 
# al tiempo de espera entre dos erupciones consecutivas.


lm(geyser$eruptions ~ geyser$waiting)
gy.lm <- lm(geyser$eruptions ~ geyser$waiting)

summary(gy.lm)


# Graficar la línea de tendencia central

plot(geyser$waiting, geyser$eruptions,
     pch = 19, col = "lightblue",
     xlab = "Tiempo espera (min)",
     ylab = "Duración (min)")
abline(gy.lm, col = "red", lwd = 2)

# agregar en la tabla el valor predicho
geyser$predicho <- gy.lm$fitted.values
geyser$yprima <- -1.874016 + 0.075628 * geyser$waiting
geyser$residual <- gy.lm$residuals^2


yprima <- c(70, 75, 82)
-1.87+0.075 * yprima
